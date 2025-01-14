-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jan 14 11:58:09 2025
-- Host        : GBNicoArch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_turtle_processing_un_0_0/turtle_top_level_turtle_processing_un_0_0_stub.vhdl
-- Design      : turtle_top_level_turtle_processing_un_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity turtle_top_level_turtle_processing_un_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rw : out STD_LOGIC;
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end turtle_top_level_turtle_processing_un_0_0;

architecture stub of turtle_top_level_turtle_processing_un_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rst,i_data_bus[7:0],o_data_bus[7:0],o_rw,o_addr_bus[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "turtle_processing_unit,Vivado 2024.1";
begin
end;
