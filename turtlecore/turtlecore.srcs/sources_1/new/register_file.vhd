----------------------------------------------------------------------------------
-- Engineer: Nicolas THIERRY
-- 
-- Create Date: 09/24/2024 01:16:00 PM
-- Design Name: 
-- Module Name: register_file - RTL
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

entity register_file is
    Port (
        i_rst  : in std_logic;
        i_clk  : in std_logic;
        i_addr : in t_reg_file_registers;
        i_data : in t_byte;
        i_load : in std_logic;
        o_data : out t_registers_array
    );
end register_file;

architecture RTL of register_file is
    signal s_registers : t_registers_array := (RA => (others => '0'), RB => (others => '0'), RX => (others => '0'), RY => (others => '0'));
begin
    o_data <= s_registers;
    
    process (i_clk, i_load, i_rst) is
    begin
        if i_rst = '1' then
            s_registers <= (RA => (others => '0'), RB => (others => '0'), RX => (others => '0'), RY => (others => '0'));
        elsif rising_edge(i_clk) and i_load = '1' then
            s_registers(i_addr) <= i_data;
        end if;
    end process;
end RTL;
