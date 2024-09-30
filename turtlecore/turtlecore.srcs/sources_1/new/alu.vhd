----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 09/25/2024 03:22:31 PM
-- Design Name: 
-- Module Name: alu - RTL
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

library work;
use work.turtle_core.all;

entity alu is
    Port (
        i_a        : in t_byte;
        i_b        : in t_byte;
        i_math_op  : in t_math_op;
        o_overflow : out std_logic;
        o_carry    : out std_logic;
        o_result   : out t_byte
    );
end alu;

architecture RTL of alu is
    signal s_result : std_logic_vector(t_byte'high downto 0) := (others => '0');
begin
    s_result <= std_logic_vector(unsigned(i_a) + 1) when i_math_op = Increment else
                std_logic_vector(unsigned(i_a) + unsigned(i_b)) when i_math_op = Add else
                std_logic_vector(unsigned(i_a) - unsigned(i_b)) when i_math_op = Sub else
                i_a and i_b when i_math_op = And_op else
                i_a or i_b when i_math_op = Or_op else
                i_a xor i_b when i_math_op = Eor else
                std_logic_vector(shift_left(unsigned(i_a), 1)) when  i_math_op = ShiftLeft else
                std_logic_vector(shift_right(unsigned(i_a), 1)) when  i_math_op = ShiftRight else
                (others => '0');
                
    o_carry <= s_result(s_result'high);
    o_result <= s_result(t_byte'range);
end RTL;
