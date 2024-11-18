----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2024 08:46:41 PM
-- Design Name: 
-- Module Name: debouncer - RTL
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

entity debouncer is
    Generic(
        c_PULSE: integer
    );
    Port (
        i_signal       : in std_logic;
        i_sampling_clk : in std_logic;
        o_signal       : out std_logic
    );
end debouncer;

architecture RTL of debouncer is
    signal s_new_signal : std_logic := '0';
    signal s_pulse_ack  : std_logic := '0';
    signal s_counter: unsigned(32 downto 0) := (others => '0');
begin
    process(i_signal)
    begin
        if s_pulse_ack = '1' then
            s_new_signal <= '0';        
        elsif rising_edge(i_signal) then
            s_new_signal <= '1';
        end if;
    end process;
    
    process(i_sampling_clk)
    begin
        if rising_edge(i_sampling_clk) then
            if s_new_signal = '1' then
                s_counter <= to_unsigned(0, s_counter'length);
                s_pulse_ack <= '1';
                o_signal <= '1';
            elsif s_counter < to_unsigned(c_PULSE, s_counter'length) then
                s_counter <= s_counter + 1;
                s_pulse_ack <= '1';
                o_signal <= '1';
            else
                s_counter <= s_counter;
                s_pulse_ack <= '0';
                o_signal <= '0';
            end if;
        end if;
    end process;  
end RTL;
