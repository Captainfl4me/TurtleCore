----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 10/10/2024 10:00:20 AM
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

entity counter_register is
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
end counter_register;

architecture RTL of counter_register is
    signal s_counter : unsigned(COUNTER_SIZE-1 downto 0) := (others => '0');
begin
    process(i_clk, i_rst) is
    begin
        if i_rst = '0' then
            s_counter <= (others => '0');
        elsif rising_edge(i_clk) and i_clk_en = '1' then
            if i_load = '1' then
                s_counter <= i_data;
            else
                if i_incr = '1' then
                    s_counter <= s_counter + 1;
                else
                    s_counter <= s_counter - 1;
                end if;                    
            end if;
        end if;
    end process;
    o_data <= s_counter;
end RTL;
