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
    
    subtype t_addr_byte is std_logic_vector(15 downto 0);
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
        i_data_bus  : in std_logic_vector(7 downto 0);
        o_data_bus  : out std_logic_vector(7 downto 0);
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
    signal s_overflow_alu : std_logic := '0';
    signal s_carry_alu    : std_logic := '0';
    signal s_result       : t_byte := (others => '0');
    signal s_math_op      : t_math_op := Increment;
    signal s_alu_rb       : t_byte := (others => '0');    
    
    component counter_register is
        Generic(COUNTER_SIZE: integer);
        Port (
            i_clk    : in std_logic;
            i_rst    : in std_logic;
            i_incr   : in std_logic;
            i_clk_en : in std_logic;
            i_load   : in std_logic;
            i_data   : in unsigned(COUNTER_SIZE-1 downto 0);
            o_data   : out unsigned(COUNTER_SIZE-1 downto 0)
        );
    end component counter_register;
    signal s_pc         : unsigned(t_addr_byte'range) := (others => '0');
    signal s_pc_en      : std_logic := '0';
    signal s_pc_load    : std_logic := '0';
    signal s_pc_in      : unsigned(t_addr_byte'range) := (others => '0');
    signal s_stack      : unsigned(t_byte'range) := (others => '0');
    signal s_stack_en   : std_logic := '0';
    signal s_stack_incr : std_logic := '0';

    type t_cpu_state is (fetching_ir, fetching_addr_low, fetching_addr_high, executing_ir_with_pc, executing_ir_without_pc);
    signal s_current_state          : t_cpu_state := fetching_ir;
    signal s_wait_for_starting_edge : std_logic := '1';
    signal s_is_loading             : std_logic := '1';
    signal s_is_exec                : std_logic := '0';
    signal s_addr                   : unsigned(t_addr_byte'range) := (others => '0');
    signal s_addr_new               : unsigned(t_addr_byte'range) := (others => '0');
    signal s_should_jump            : std_logic := '0';
    signal s_halt                   : std_logic := '0';
    
    -- FLAGS
    signal s_overflow               : std_logic := '0';
    signal s_carry                  : std_logic := '0';
    signal s_zero                   : std_logic := '0';
    signal s_negative               : std_logic := '0';
begin
    reg_instruction : instruction_register
        port map (
            i_rst              => i_rst,
            i_clk              => i_clk,
            i_data             => i_data_bus,
            i_load             => s_is_loading,
            o_instruction_data => s_instruction_data,
            o_opcode           => s_opcode,
            o_addr_mode        => s_addr_mode,
            o_reg1             => s_reg1,
            o_reg2             => s_reg2,
            o_math_op          => s_math_op,
            o_branch_condition => s_branch_condition
        );
    
    o_data_bus <= s_reg_file_data_out(s_reg1) when s_current_state = executing_ir_without_pc and (s_opcode = Store or s_opcode = Push) else
                   (others => 'Z');
    o_rw <= '1' when s_current_state = executing_ir_without_pc and (s_opcode = Store or s_opcode = Push) else '0';
    s_halt <= '1' when s_wait_for_starting_edge = '0' and s_opcode=Break else '0';
    
    s_reg_file_load <= '1' when (s_opcode = Load or s_opcode = Transfer or s_opcode = Math or s_opcode = Pull) and s_is_loading = '0' and s_is_exec = '1' else '0';
    s_reg_file_data_in <= i_data_bus when s_opcode = Load or s_opcode = Pull else
                          s_reg_file_data_out(s_reg1) when s_opcode = Transfer else
                          s_result;
    s_reg_file_addr <= s_reg1 when s_opcode = Load or s_opcode = Pull else
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

    -- ALU
    s_alu_rb <= t_byte(to_unsigned(1, t_byte'length)) when s_math_op = Increment else s_reg_file_data_out(RB);
    reg_alu : alu
        port map (
            i_a        => s_reg_file_data_out(RA),
            i_b        => s_alu_rb,
            i_math_op  => s_math_op,
            o_overflow => s_overflow_alu,
            o_carry    => s_carry_alu,
            o_result   => s_result
        );
 
    -- FLAGS
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_carry <= '0';
            s_overflow <= '0';
            s_negative <= '0';
            s_zero <= '0';
        elsif rising_edge(i_clk) and s_is_exec = '1' then
            if s_opcode = Math then
                s_carry <= s_carry_alu;
                s_overflow <= s_overflow_alu;
            end if;
            if s_opcode = Load or s_opcode = Pull or s_opcode = Transfer or s_opcode = Math  then
                s_negative <= s_reg_file_data_in(s_reg_file_data_in'left);
                if s_reg_file_data_in = (s_reg_file_data_in'range => '0') then
                    s_zero <= '1';
                else
                    s_zero <= '0';
                end if;
            end if;
        end if;
    end process;
    
    -- JUMP FLAG
    s_should_jump <= '1'             when s_branch_condition = NoCondition       else
                      not s_carry    when s_branch_condition = CarryFlagClear    else
                      s_carry        when s_branch_condition = CarryFlagSet      else
                      not s_zero     when s_branch_condition = ZeroFlagClear     else
                      s_zero         when s_branch_condition = ZeroFlagSet       else
                      not s_negative when s_branch_condition = NegativeFlagClear else
                      s_negative     when s_branch_condition = NegativeFlagSet   else
                      not s_overflow when s_branch_condition = OverflowFlagClear else
                      s_overflow     when s_branch_condition = OverflowFlagSet   else
                      '0';
    
    -- STATE MACHINE & PROGRAM COUNTER
    s_is_exec <= '1' when s_current_state = executing_ir_without_pc or s_current_state = executing_ir_with_pc else '0';
    s_is_loading <= '1' when s_current_state = fetching_ir and s_halt = '0' else '0';
    o_addr_bus <= std_logic_vector(s_addr);
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_current_state <= fetching_ir;
            s_addr <= (others => '0');
        elsif falling_edge(i_clk) and s_wait_for_starting_edge='0' and s_halt = '0' then
            s_addr <= s_pc;
            case s_current_state is
                when fetching_ir =>
                    if s_addr_mode = relative or s_opcode = Jump then
                        s_current_state <= fetching_addr_low;
                    elsif s_opcode = Transfer or s_opcode = Push or s_opcode = Pull or s_opcode = Math then
                        s_current_state <= executing_ir_without_pc;
                        if s_opcode = Push then
                            s_addr <= x"80" & s_stack;
                        elsif s_opcode = Pull then
                            s_addr <= x"80" & (s_stack - 1);
                        end if;
                    else
                        s_current_state <= executing_ir_with_pc;
                    end if;
                when fetching_addr_low =>
                    s_current_state <= fetching_addr_high;    
                when fetching_addr_high =>
                    if s_opcode = Jump then
                        s_current_state <= fetching_ir;
                    else
                        s_current_state <= executing_ir_without_pc;
                        s_addr <= s_addr_new;
                    end if;
                when others =>
                    s_current_state <= fetching_ir;
                end case;
        end if;
    end process;
                      
    -- PROGRAM COUNTER
    pc_inst: counter_register
        Generic map (COUNTER_SIZE => t_addr_byte'length)
        Port map (
            i_clk    => i_clk,
            i_rst    => i_rst,
            i_incr   => '1',
            i_clk_en => s_pc_en,
            i_load   => s_pc_load,
            i_data   => s_pc_in,
            o_data   => s_pc
        );
    s_pc_in <= (unsigned(i_data_bus) & s_addr_new(7 downto 0));
    s_pc_en <= '1' when s_current_state/=executing_ir_without_pc and s_halt = '0' else '0';
    s_pc_load <= '1' when s_opcode = Jump and s_current_state = fetching_addr_high and s_should_jump = '1' else '0';
    
    -- STACK COUNTER
    stack_inst: counter_register
        Generic map (COUNTER_SIZE => t_byte'length)
        Port map (
            i_clk    => i_clk,
            i_rst    => i_rst,
            i_incr   => s_stack_incr,
            i_clk_en => s_stack_en,
            i_load   => '0',
            i_data   => (others => '0'),
            o_data   => s_stack
        );
    s_stack_en <= '1' when (s_opcode = Push or s_opcode = Pull) and s_current_state=executing_ir_without_pc else '0';
    s_stack_incr <= '1' when s_opcode = Push else '0';
    
    -- AFTER RESET SYNC
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_wait_for_starting_edge <= '1';
        elsif rising_edge(i_clk) then
            s_wait_for_starting_edge <= '0';
        end if;
    end process;
    
    -- Intermediate ADDR NEW (load relative addr)
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_addr_new <= (others => '0');
        elsif rising_edge(i_clk) then
            if s_current_state = fetching_addr_low then
                s_addr_new(7 downto 0) <= unsigned(i_data_bus);
            elsif s_current_state = fetching_addr_high then
                s_addr_new(15 downto 8) <= unsigned(i_data_bus);
            end if;
        end if;
    end process;
end RTL;
