----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 09/16/2024 03:57:46 PM
-- Design Name: 
-- Module Name: instruction_register - RTL
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

library work;
use work.turtle_core.all;

entity instruction_register is
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
end instruction_register;

architecture RTL of instruction_register is
    signal s_ir : std_logic_vector(7 downto 0) := (others => '0');
    signal s_opcode : t_opcode;
begin
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_ir <= (others => '0');
        elsif rising_edge(i_clk) and i_load = '1' then
            s_ir <= i_data;
        end if;
    end process;
    
    -- First 3 bits
    o_opcode <= s_opcode;
    s_opcode <= Jump     when s_ir(2 downto 0) = "111" else
                Math     when s_ir(2 downto 0) = "110" else
                Pull     when s_ir(2 downto 0) = "101" else
                Push     when s_ir(2 downto 0) = "100" else 
                Store    when s_ir(2 downto 0) = "011" else 
                Transfer when s_ir(2 downto 0) = "010" else 
                Load     when s_ir(2 downto 0) = "001" else
                Break;
                
    -- Middle 4th bit
    o_addr_mode <= relative when s_ir(3) = '1' else immediate;
    
    -- Last 4 bits
    o_reg1 <= RB when s_ir(5 downto 4) = "11" else
              RY when s_ir(5 downto 4) = "10" else
              RX when s_ir(5 downto 4) = "01" else
              RA;
    o_reg2 <= RB when s_ir(7 downto 6) = "11" else
              RY when s_ir(7 downto 6) = "10" else
              RX when s_ir(7 downto 6) = "01" else
              RA;

    o_math_op <= ShiftRight when s_ir(7 downto 4) = "0111" else
                 ShiftLeft  when s_ir(7 downto 4) = "0110" else
                 Eor        when s_ir(7 downto 4) = "0101" else
                 Or_op      when s_ir(7 downto 4) = "0100" else 
                 And_op     when s_ir(7 downto 4) = "0011" else 
                 Sub        when s_ir(7 downto 4) = "0010" else 
                 Add        when s_ir(7 downto 4) = "0001" else
                 Increment;

    o_branch_condition <= ReturnFromSubroutine when s_ir(7 downto 4) = "1010" else
                          JumpToSubroutine     when s_ir(7 downto 4) = "1001" else
                          OverflowFlagSet      when s_ir(7 downto 4) = "1000" else
                          OverflowFlagClear    when s_ir(7 downto 4) = "0111" else
                          NegativeFlagSet      when s_ir(7 downto 4) = "0110" else
                          NegativeFlagClear    when s_ir(7 downto 4) = "0101" else
                          ZeroFlagSet          when s_ir(7 downto 4) = "0100" else 
                          ZeroFlagClear        when s_ir(7 downto 4) = "0011" else 
                          CarryFlagSet         when s_ir(7 downto 4) = "0010" else 
                          CarryFlagClear       when s_ir(7 downto 4) = "0001" else
                          NoCondition;

    -- Valid instruction data selecter
    o_instruction_data <= DoubleRegisters when s_opcode = Transfer else
                          BranchCondition when s_opcode = Jump else
                          MathOperand     when s_opcode = Math else
                          Registers       when s_opcode = Load or s_opcode = Store or s_opcode = Push or s_opcode = Pull else
                          NoData;
end RTL;
