-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Jan 14 11:58:24 2025
-- Host        : GBNicoArch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_MMU_0_0/turtle_top_level_MMU_0_0_stub.vhdl
-- Design      : turtle_top_level_MMU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity turtle_top_level_MMU_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_rw : in STD_LOGIC;
    i_write_cpu_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_addr_bus : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_data_RAM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_ROM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_input_pins : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_read_cpu_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_addr_RAM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    o_write_RAM : out STD_LOGIC;
    o_output_pins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_addr_ROM : out STD_LOGIC_VECTOR ( 14 downto 0 );
    M_AXI_ACLK : out STD_LOGIC;
    M_AXI_ARESETn : out STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARUSER : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );

end turtle_top_level_MMU_0_0;

architecture stub of turtle_top_level_MMU_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rstn,i_rw,i_write_cpu_bus[7:0],i_addr_bus[15:0],i_data_RAM[7:0],i_data_ROM[7:0],i_input_pins[15:0],o_debug_bus[7:0],o_read_cpu_bus[7:0],o_data[7:0],o_addr_RAM[14:0],o_write_RAM,o_output_pins[15:0],o_addr_ROM[14:0],M_AXI_ACLK,M_AXI_ARESETn,M_AXI_AWID[2:0],M_AXI_AWADDR[15:0],M_AXI_AWLEN[7:0],M_AXI_AWSIZE[2:0],M_AXI_AWBURST[1:0],M_AXI_AWLOCK[1:0],M_AXI_AWCACHE[3:0],M_AXI_AWPROT[2:0],M_AXI_AWQOS[3:0],M_AXI_AWUSER[4:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WID[2:0],M_AXI_WDATA[7:0],M_AXI_WSTRB[0:0],M_AXI_WLAST,M_AXI_WVALID,M_AXI_WREADY,M_AXI_BID[2:0],M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARID[2:0],M_AXI_ARADDR[15:0],M_AXI_ARLEN[7:0],M_AXI_ARSIZE[2:0],M_AXI_ARBURST[1:0],M_AXI_ARLOCK[1:0],M_AXI_ARCACHE[3:0],M_AXI_ARPROT[2:0],M_AXI_ARQOS[3:0],M_AXI_ARUSER[4:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RID[2:0],M_AXI_RDATA[7:0],M_AXI_RRESP[1:0],M_AXI_RLAST,M_AXI_RVALID,M_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MMU,Vivado 2024.1";
begin
end;
