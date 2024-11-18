--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Mon Nov 18 23:39:19 2024
--Host        : GBNicoArch running 64-bit unknown
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_btn : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    rst_btn : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk => clk,
      leds(15 downto 0) => leds(15 downto 0),
      rst_btn => rst_btn,
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
