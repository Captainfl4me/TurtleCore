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

entity MMU is
    Port (
        i_clk           : in std_logic;
        i_rstn          : in std_logic;
        i_rw            : in std_logic;
        i_write_cpu_bus : in std_logic_vector(7 downto 0);
        i_addr_bus      : in std_logic_vector(15 downto 0);
        i_data_RAM      : in std_logic_vector(7 downto 0);
        i_data_ROM      : in std_logic_vector(7 downto 0);
        i_switch_bar    : in std_logic_vector(15 downto 0);
        
        o_debug_bus     : out std_logic_vector(7 downto 0);
        o_read_cpu_bus  : out std_logic_vector(7 downto 0);
        o_data          : out std_logic_vector(7 downto 0);
        -- RAM
        o_addr_RAM      : out std_logic_vector(14 downto 0);
        o_write_RAM     : out std_logic;
        -- LED BAR
        o_led_bar       : out std_logic_vector(15 downto 0);
        -- ROM
        o_addr_ROM      : out std_logic_vector(14 downto 0)
    );
end MMU;

architecture RTL of MMU is
    signal s_cpu_read_bus: std_logic_vector(7 downto 0);
    
    -- LED
    signal s_led_bar_reg: std_logic_vector(15 downto 0);
    
    -- UART 0
    signal s_uart0_ctrl_reg : std_logic_vector(7 downto 0);
    signal s_uart0_clk_div  : std_logic_vector(15 downto 0);
begin
    s_cpu_read_bus <= i_data_ROM when i_addr_bus(15) = '0' else 
                      i_switch_bar(7 downto 0)  when i_addr_bus = x"FFFD" else
                      i_switch_bar(15 downto 8)  when i_addr_bus = x"FFFC" else
                      s_led_bar_reg(7 downto 0)  when i_addr_bus = x"FFFF" else
                      s_led_bar_reg(15 downto 8)  when i_addr_bus = x"FFFE" else
                      i_data_RAM;
    o_read_cpu_bus <= s_cpu_read_bus;
    o_debug_bus <= i_write_cpu_bus when i_rw = '1' else s_cpu_read_bus;
    
    o_data <= i_write_cpu_bus;
    
    o_addr_RAM <= i_addr_bus(14 downto 0);
    o_write_RAM <= '1' when i_rw = '1' and i_addr_bus >= x"8000" and i_addr_bus < x"FFFE" else '0';
    
    o_addr_ROM <= i_addr_bus(14 downto 0);
    
    o_led_bar <= s_led_bar_reg;
    
    -- Register map
    process(i_clk, i_rstn) is
    begin
        if (i_rstn = '0') then
            s_led_bar_reg <= (others => '0');
        elsif (rising_edge(i_clk) and i_rw = '1') then
            if i_addr_bus = x"FFFF" then
                s_led_bar_reg(7 downto 0) <= i_write_cpu_bus;
            elsif i_addr_bus = x"FFFE" then
                s_led_bar_reg(15 downto 8) <= i_write_cpu_bus;
            end if;
        end if;
    end process;
end RTL;
