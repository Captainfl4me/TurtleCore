----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2024 10:31:26 PM
-- Design Name: 
-- Module Name: tb - Simulation
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb is
--  Port ( );
end tb;

architecture Simulation of tb is
    component turtle_top_level is
        Port (
            i_clk       : in std_logic;
            i_rst       : in std_logic;
            io_data_bus : inout std_logic_vector(7 downto 0);
            o_rw        : out std_logic;
            o_addr_bus  : out std_logic_vector(15 downto 0)
        );
    end component turtle_top_level;
    
    signal s_clk: std_logic := '0';
    signal s_rst: std_logic := '1';
    signal s_data_bus : std_logic_vector(7 downto 0) := (others => 'Z');
    signal s_rw : std_logic := '0';
    signal s_addr_bus : std_logic_vector(15 downto 0) := (others => '0');
    
    constant ROM     : std_logic_vector := x"01AA11AB21AC390500120B01002606470e006614350014";
    signal s_ROM_bus : std_logic_vector(7 downto 0);
begin
    tc_inst: turtle_top_level
        Port map (
            i_clk       => s_clk,
            i_rst       => s_rst,
            io_data_bus => s_data_bus,
            o_rw        => s_rw,
            o_addr_bus  => s_addr_bus
        );
    s_clk <= not s_clk after 10ps;

    s_ROM_bus <= ROM(to_integer(unsigned(s_addr_bus))*8 to to_integer(unsigned(s_addr_bus))*8+7) when to_integer(unsigned(s_addr_bus))*8+7 <= ROM'high else (others=>'0');
    s_data_bus <= s_ROM_bus when s_rw ='0' else (others=>'Z');
    process is 
    begin
        wait for 15ps;
        s_rst <= '0';
        wait for 5ps;
        wait;
    end process;
end Simulation;
