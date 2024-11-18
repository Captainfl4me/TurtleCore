----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2024 04:10:50 PM
-- Design Name: 
-- Module Name: led_bar - RTL
-- Project Name: 
-- Target Devices: 
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

entity led_bar is
    Port (
        i_rw   : in std_logic;
        i_rst  : in std_logic;
        i_clk  : in std_logic;
        i_addr : in std_logic_vector(0 downto 0);
        i_data : in std_logic_vector(7 downto 0);
        o_leds : out std_logic_vector(15 downto 0)
    );
end led_bar;

architecture RTL of led_bar is
    signal leds: std_logic_vector(15 downto 0) := (others => '0');
begin
    process (i_clk, i_rst) is
    begin
        if i_rst = '0' then
            leds <= (others => '0');
        elsif rising_edge (i_clk) then
            if i_rw = '1' then
                leds(to_integer(unsigned(i_addr))*8+7 downto to_integer(unsigned(i_addr))*8) <= i_data;
            end if;
        end if;
    end process;
    o_leds <= leds;
end RTL;
