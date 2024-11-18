----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 10/10/2024 06:34:47 PM
-- Design Name: 
-- Module Name: MCC - RTL
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

entity MCC is
    Port (
        i_rw            : std_logic;
        i_write_cpu_bus : in std_logic_vector(7 downto 0);
        i_addr_bus      : in std_logic_vector(15 downto 0);
        i_data_RAM      : in std_logic_vector(7 downto 0);
        i_data_ROM      : in std_logic_vector(7 downto 0);
        i_led_bar       : in std_logic_vector(15 downto 0);
        i_switch_bar    : in std_logic_vector(15 downto 0);
        
        o_debug_bus     : out std_logic_vector(7 downto 0);
        o_read_cpu_bus  : out std_logic_vector(7 downto 0);
        o_data          : out std_logic_vector(7 downto 0);
        -- RAM
        o_addr_RAM      : out std_logic_vector(14 downto 0);
        o_write_RAM     : out std_logic;
        -- LED BAR
        o_addr_led_bar  : out std_logic_vector(0 downto 0);
        o_write_led_bar : out std_logic;
        -- ROM
        o_addr_ROM      : out std_logic_vector(14 downto 0)
    );
end MCC;

architecture RTL of MCC is
    signal s_cpu_read_bus: std_logic_vector(7 downto 0);
begin
    s_cpu_read_bus <= i_data_ROM when i_addr_bus(15) = '0' else 
                      i_switch_bar(7 downto 0)  when i_addr_bus = x"FFFD" else
                      i_switch_bar(15 downto 8)  when i_addr_bus = x"FFFC" else
                      i_led_bar(7 downto 0)  when i_addr_bus = x"FFFF" else
                      i_led_bar(15 downto 8)  when i_addr_bus = x"FFFE" else
                      i_data_RAM;
    
    o_data <= i_write_cpu_bus;
    
    o_addr_led_bar <= "0" when i_addr_bus = x"FFFF" else "1";
    o_write_led_bar <= '1' when i_rw = '1' and i_addr_bus >= x"FFFE" and i_addr_bus <= x"FFFF" else '0';

    o_addr_RAM <= i_addr_bus(14 downto 0);
    o_write_RAM <= '1' when i_rw = '1' and i_addr_bus >= x"8000" and i_addr_bus < x"FFFE" else '0';
    
    o_addr_ROM <= i_addr_bus(14 downto 0);
    
    o_read_cpu_bus <= s_cpu_read_bus;
    o_debug_bus <= i_write_cpu_bus when i_rw = '1' else s_cpu_read_bus;
end RTL;
