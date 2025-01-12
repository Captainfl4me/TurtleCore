--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Sun Jan 12 23:01:03 2025
--Host        : GBNicoArch running 64-bit unknown
--Command     : generate_target turtle_top_level_wrapper.bd
--Design      : turtle_top_level_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_wrapper is
  port (
    clk_50MHz : in STD_LOGIC;
    input_ROM_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input_pin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_ROM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    output_pin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
end turtle_top_level_wrapper;

architecture STRUCTURE of turtle_top_level_wrapper is
  component turtle_top_level is
  port (
    clk_50MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    output_pin : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_pin : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_ROM_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output_ROM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component turtle_top_level;
begin
turtle_top_level_i: component turtle_top_level
     port map (
      clk_50MHz => clk_50MHz,
      input_ROM_bus(7 downto 0) => input_ROM_bus(7 downto 0),
      input_pin(15 downto 0) => input_pin(15 downto 0),
      output_ROM_addr(14 downto 0) => output_ROM_addr(14 downto 0),
      output_pin(15 downto 0) => output_pin(15 downto 0),
      reset_rtl_0 => reset_rtl_0
    );
end STRUCTURE;
