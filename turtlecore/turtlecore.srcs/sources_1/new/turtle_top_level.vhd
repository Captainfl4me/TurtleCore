----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 09/16/2024 03:51:24 PM
-- Design Name: 
-- Module Name: turtle_top_level - RTL
-- Project Name: Turtle Core
-- Target Devices: Basys-3
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package turtle_core is
    type t_opcode is (Break, Load, Transfer, Store, Push, Pull, Math, Jump);
    type t_adressing_mode is (immediate, relative);
    type t_instruction_data is (NoData, Registers, MathOperand, BranchCondition, DoubleRegisters);
    type t_math_op is (Increment, Add, Sub, And_op, Or_op, Eor, ShiftLeft, ShiftRight);
    type t_branch_condition is (NoCondition, CarryFlagClear, CarryFlagSet, ZeroFlagClear, ZeroFlagSet, NegativeFlagClear, NegativeFlagSet, OverflowFlagClear, OverflowFlagSet);
    type t_reg_file_registers is (RA, RB, RX, RY);
    
    subtype t_byte is std_logic_vector(7 downto 0);
    type t_registers_array is array(t_reg_file_registers) of t_byte;
end package;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.turtle_core.all;

entity turtle_top_level is
    Port (
        i_clk       : in std_logic;
        i_rst       : in std_logic;
        io_data_bus : inout std_logic_vector(7 downto 0);
        o_rw        : out std_logic;
        o_addr_bus  : out std_logic_vector(15 downto 0)
    );
end turtle_top_level;

architecture RTL of turtle_top_level is
    component instruction_register is
        Port (
            i_rst              : IN  STD_LOGIC;
            i_clk              : IN  STD_LOGIC;
            i_data             : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            i_load             : IN  STD_LOGIC;
            o_instruction_data : OUT t_instruction_data;
            o_opcode           : OUT t_opcode;
            o_addr_mode        : OUT t_adressing_mode;
            o_reg1             : OUT t_reg_file_registers;
            o_reg2             : OUT t_reg_file_registers;
            o_math_op          : OUT t_math_op;
            o_branch_condition : OUT t_branch_condition
        );
    end component instruction_register;
    signal s_instruction_data : t_instruction_data;
    signal s_opcode           : t_opcode;
    signal s_addr_mode        : t_adressing_mode;
    signal s_reg1             : t_reg_file_registers;
    signal s_reg2             : t_reg_file_registers;
    signal s_branch_condition : t_branch_condition;
    
    component register_file is
        Port (
            i_rst  : in std_logic;
            i_clk  : in std_logic;
            i_addr : in t_reg_file_registers;
            i_data : in t_byte;
            i_load : in std_logic;
            o_data : out t_registers_array
        );
    end component register_file;
    signal s_reg_file_addr     : t_reg_file_registers := RA;
    signal s_reg_file_data_in  : t_byte := (others => '0');
    signal s_reg_file_data_out : t_registers_array;
    signal s_reg_file_load     : std_logic := '0';
    
    signal s_ra : t_byte := (others => '0');
    signal s_rb : t_byte := (others => '0');    
    
    component alu is
        Port (
            i_a        : in t_byte;
            i_b        : in t_byte;
            i_math_op  : in t_math_op;
            o_overflow : out std_logic;
            o_carry    : out std_logic;
            o_result   : out t_byte
        );
    end component alu;
    signal s_result   : t_byte := (others => '0');
    signal s_overflow : std_logic := '0';
    signal s_carry    : std_logic := '0';
    signal s_math_op  : t_math_op := Increment;
    signal s_alu_rb   : t_byte := (others => '0');    

    type t_cpu_state is (fetching_ir, fetching_addr_low, fetching_addr_high, executing_ir);
    signal s_current_state : t_cpu_state := fetching_ir;
    signal s_is_loading    : std_logic := '1'; 
    signal s_pc            : unsigned(15 downto 0) := (others => '0');
begin
    reg_instruction : instruction_register
        port map (
            i_rst              => i_rst,
            i_clk              => i_clk,
            i_data             => io_data_bus,
            i_load             => s_is_loading,
            o_instruction_data => s_instruction_data,
            o_opcode           => s_opcode,
            o_addr_mode        => s_addr_mode,
            o_reg1             => s_reg1,
            o_reg2             => s_reg2,
            o_math_op          => s_math_op,
            o_branch_condition => s_branch_condition
        );
    
    s_reg_file_load <= '1' when s_opcode = Load or s_opcode = Transfer or s_opcode = Math else '0';
    s_reg_file_data_in <= io_data_bus when s_opcode = Load else 
                          s_reg_file_data_out(s_reg1) when s_opcode = Transfer else
                          s_result;
    s_reg_file_addr <= s_reg1 when s_opcode = Load else
                       s_reg2 when s_opcode = Transfer else
                       RA;
    reg_file : register_file
        port map (
            i_rst  => i_rst,
            i_clk  => i_clk,
            i_addr => s_reg_file_addr,
            i_data => s_reg_file_data_in,
            i_load => s_reg_file_load,
            o_data => s_reg_file_data_out
        );

    s_alu_rb <= t_byte(to_unsigned(1, t_byte'high)) when s_math_op = Increment else s_reg_file_data_out(RB);
    reg_alu : alu
        port map (
            i_a        => s_reg_file_data_out(RA),
            i_b        => s_alu_rb,
            i_math_op  => s_math_op,
            o_overflow => s_overflow,
            o_carry    => s_carry,
            o_result   => s_result
        );
    
    -- STATE MACHINE
    s_is_loading <= '1' when s_current_state = fetching_ir else '0';
    o_addr_bus <= std_logic_vector(s_pc);
    process(i_clk, i_rst) is
    begin
        if i_rst = '1' then
            s_current_state <= fetching_ir;
            s_pc <= (others => '0');
        elsif rising_edge(i_clk) then
            s_pc <= s_pc + 1;
            if s_current_state = fetching_ir then
                if s_addr_mode = relative then
                    s_current_state <= fetching_addr_low;
                else
                    s_current_state <= executing_ir;
                end if;
            elsif s_current_state = fetching_addr_low then
                s_current_state <= fetching_addr_high;            
            else
                s_current_state <= fetching_ir;
            end if;
        end if;
    end process;
end RTL;
