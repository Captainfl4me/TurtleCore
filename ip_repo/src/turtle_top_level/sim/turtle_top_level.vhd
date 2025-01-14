--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Tue Jan 14 15:33:16 2025
--Host        : GBNicoArch running 64-bit unknown
--Command     : generate_target turtle_top_level.bd
--Design      : turtle_top_level
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_106IFKE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_aruser : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awuser : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wid : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_aruser : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awuser : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wid : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_106IFKE;

architecture STRUCTURE of s00_couplers_imp_106IFKE is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARUSER : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWUSER : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s00_couplers_to_s00_couplers_ARADDR;
  M_AXI_arburst <= s00_couplers_to_s00_couplers_ARBURST;
  M_AXI_arcache <= s00_couplers_to_s00_couplers_ARCACHE;
  M_AXI_arid <= s00_couplers_to_s00_couplers_ARID;
  M_AXI_arlen <= s00_couplers_to_s00_couplers_ARLEN;
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot <= s00_couplers_to_s00_couplers_ARPROT;
  M_AXI_arqos <= s00_couplers_to_s00_couplers_ARQOS;
  M_AXI_arsize <= s00_couplers_to_s00_couplers_ARSIZE;
  M_AXI_aruser <= s00_couplers_to_s00_couplers_ARUSER;
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr <= s00_couplers_to_s00_couplers_AWADDR;
  M_AXI_awburst <= s00_couplers_to_s00_couplers_AWBURST;
  M_AXI_awcache <= s00_couplers_to_s00_couplers_AWCACHE;
  M_AXI_awid <= s00_couplers_to_s00_couplers_AWID;
  M_AXI_awlen <= s00_couplers_to_s00_couplers_AWLEN;
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot <= s00_couplers_to_s00_couplers_AWPROT;
  M_AXI_awqos <= s00_couplers_to_s00_couplers_AWQOS;
  M_AXI_awsize <= s00_couplers_to_s00_couplers_AWSIZE;
  M_AXI_awuser <= s00_couplers_to_s00_couplers_AWUSER;
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata <= s00_couplers_to_s00_couplers_WDATA;
  M_AXI_wid <= s00_couplers_to_s00_couplers_WID;
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb <= s00_couplers_to_s00_couplers_WSTRB;
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid <= s00_couplers_to_s00_couplers_BID;
  S_AXI_bresp <= s00_couplers_to_s00_couplers_BRESP;
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata <= s00_couplers_to_s00_couplers_RDATA;
  S_AXI_rid <= s00_couplers_to_s00_couplers_RID;
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp <= s00_couplers_to_s00_couplers_RRESP;
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR <= S_AXI_araddr;
  s00_couplers_to_s00_couplers_ARBURST <= S_AXI_arburst;
  s00_couplers_to_s00_couplers_ARCACHE <= S_AXI_arcache;
  s00_couplers_to_s00_couplers_ARID <= S_AXI_arid;
  s00_couplers_to_s00_couplers_ARLEN <= S_AXI_arlen;
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT <= S_AXI_arprot;
  s00_couplers_to_s00_couplers_ARQOS <= S_AXI_arqos;
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE <= S_AXI_arsize;
  s00_couplers_to_s00_couplers_ARUSER <= S_AXI_aruser;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR <= S_AXI_awaddr;
  s00_couplers_to_s00_couplers_AWBURST <= S_AXI_awburst;
  s00_couplers_to_s00_couplers_AWCACHE <= S_AXI_awcache;
  s00_couplers_to_s00_couplers_AWID <= S_AXI_awid;
  s00_couplers_to_s00_couplers_AWLEN <= S_AXI_awlen;
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT <= S_AXI_awprot;
  s00_couplers_to_s00_couplers_AWQOS <= S_AXI_awqos;
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE <= S_AXI_awsize;
  s00_couplers_to_s00_couplers_AWUSER <= S_AXI_awuser;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID <= M_AXI_bid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP <= M_AXI_bresp;
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA <= M_AXI_rdata;
  s00_couplers_to_s00_couplers_RID <= M_AXI_rid;
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP <= M_AXI_rresp;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA <= S_AXI_wdata;
  s00_couplers_to_s00_couplers_WID <= S_AXI_wid;
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB <= S_AXI_wstrb;
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC;
    M00_AXI_arburst : out STD_LOGIC;
    M00_AXI_arcache : out STD_LOGIC;
    M00_AXI_arid : out STD_LOGIC;
    M00_AXI_arlen : out STD_LOGIC;
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC;
    M00_AXI_arqos : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC;
    M00_AXI_aruser : out STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC;
    M00_AXI_awburst : out STD_LOGIC;
    M00_AXI_awcache : out STD_LOGIC;
    M00_AXI_awid : out STD_LOGIC;
    M00_AXI_awlen : out STD_LOGIC;
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC;
    M00_AXI_awqos : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC;
    M00_AXI_awuser : out STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC;
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC;
    M00_AXI_rid : in STD_LOGIC;
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC;
    M00_AXI_wid : out STD_LOGIC;
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC;
    S00_AXI_arburst : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC;
    S00_AXI_arlen : in STD_LOGIC;
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC;
    S00_AXI_arqos : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC;
    S00_AXI_aruser : in STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC;
    S00_AXI_awburst : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC;
    S00_AXI_awlen : in STD_LOGIC;
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC;
    S00_AXI_awqos : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC;
    S00_AXI_awuser : in STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC;
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC;
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC;
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC
  );
end turtle_top_level_axi_interconnect_0_0;

architecture STRUCTURE of turtle_top_level_axi_interconnect_0_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARUSER : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWUSER : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARUSER : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWUSER : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WID : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal s00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr <= s00_couplers_to_axi_interconnect_0_ARADDR;
  M00_AXI_arburst <= s00_couplers_to_axi_interconnect_0_ARBURST;
  M00_AXI_arcache <= s00_couplers_to_axi_interconnect_0_ARCACHE;
  M00_AXI_arid <= s00_couplers_to_axi_interconnect_0_ARID;
  M00_AXI_arlen <= s00_couplers_to_axi_interconnect_0_ARLEN;
  M00_AXI_arlock <= s00_couplers_to_axi_interconnect_0_ARLOCK;
  M00_AXI_arprot <= s00_couplers_to_axi_interconnect_0_ARPROT;
  M00_AXI_arqos <= s00_couplers_to_axi_interconnect_0_ARQOS;
  M00_AXI_arsize <= s00_couplers_to_axi_interconnect_0_ARSIZE;
  M00_AXI_aruser <= s00_couplers_to_axi_interconnect_0_ARUSER;
  M00_AXI_arvalid <= s00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr <= s00_couplers_to_axi_interconnect_0_AWADDR;
  M00_AXI_awburst <= s00_couplers_to_axi_interconnect_0_AWBURST;
  M00_AXI_awcache <= s00_couplers_to_axi_interconnect_0_AWCACHE;
  M00_AXI_awid <= s00_couplers_to_axi_interconnect_0_AWID;
  M00_AXI_awlen <= s00_couplers_to_axi_interconnect_0_AWLEN;
  M00_AXI_awlock <= s00_couplers_to_axi_interconnect_0_AWLOCK;
  M00_AXI_awprot <= s00_couplers_to_axi_interconnect_0_AWPROT;
  M00_AXI_awqos <= s00_couplers_to_axi_interconnect_0_AWQOS;
  M00_AXI_awsize <= s00_couplers_to_axi_interconnect_0_AWSIZE;
  M00_AXI_awuser <= s00_couplers_to_axi_interconnect_0_AWUSER;
  M00_AXI_awvalid <= s00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata <= s00_couplers_to_axi_interconnect_0_WDATA;
  M00_AXI_wid <= s00_couplers_to_axi_interconnect_0_WID;
  M00_AXI_wlast <= s00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb <= s00_couplers_to_axi_interconnect_0_WSTRB;
  M00_AXI_wvalid <= s00_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid <= axi_interconnect_0_to_s00_couplers_BID;
  S00_AXI_bresp <= axi_interconnect_0_to_s00_couplers_BRESP;
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata <= axi_interconnect_0_to_s00_couplers_RDATA;
  S00_AXI_rid <= axi_interconnect_0_to_s00_couplers_RID;
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp <= axi_interconnect_0_to_s00_couplers_RRESP;
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= M00_ACLK;
  axi_interconnect_0_ARESETN_net <= M00_ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR <= S00_AXI_araddr;
  axi_interconnect_0_to_s00_couplers_ARBURST <= S00_AXI_arburst;
  axi_interconnect_0_to_s00_couplers_ARCACHE <= S00_AXI_arcache;
  axi_interconnect_0_to_s00_couplers_ARID <= S00_AXI_arid;
  axi_interconnect_0_to_s00_couplers_ARLEN <= S00_AXI_arlen;
  axi_interconnect_0_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_interconnect_0_to_s00_couplers_ARPROT <= S00_AXI_arprot;
  axi_interconnect_0_to_s00_couplers_ARQOS <= S00_AXI_arqos;
  axi_interconnect_0_to_s00_couplers_ARSIZE <= S00_AXI_arsize;
  axi_interconnect_0_to_s00_couplers_ARUSER <= S00_AXI_aruser;
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR <= S00_AXI_awaddr;
  axi_interconnect_0_to_s00_couplers_AWBURST <= S00_AXI_awburst;
  axi_interconnect_0_to_s00_couplers_AWCACHE <= S00_AXI_awcache;
  axi_interconnect_0_to_s00_couplers_AWID <= S00_AXI_awid;
  axi_interconnect_0_to_s00_couplers_AWLEN <= S00_AXI_awlen;
  axi_interconnect_0_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_interconnect_0_to_s00_couplers_AWPROT <= S00_AXI_awprot;
  axi_interconnect_0_to_s00_couplers_AWQOS <= S00_AXI_awqos;
  axi_interconnect_0_to_s00_couplers_AWSIZE <= S00_AXI_awsize;
  axi_interconnect_0_to_s00_couplers_AWUSER <= S00_AXI_awuser;
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA <= S00_AXI_wdata;
  axi_interconnect_0_to_s00_couplers_WID <= S00_AXI_wid;
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB <= S00_AXI_wstrb;
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_interconnect_0_BID <= M00_AXI_bid;
  s00_couplers_to_axi_interconnect_0_BRESP <= M00_AXI_bresp;
  s00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_interconnect_0_RDATA <= M00_AXI_rdata;
  s00_couplers_to_axi_interconnect_0_RID <= M00_AXI_rid;
  s00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_interconnect_0_RRESP <= M00_AXI_rresp;
  s00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_106IFKE
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr => s00_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => s00_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => s00_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arid => s00_couplers_to_axi_interconnect_0_ARID,
      M_AXI_arlen => s00_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => s00_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => s00_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => s00_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => s00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arsize => s00_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_aruser => s00_couplers_to_axi_interconnect_0_ARUSER,
      M_AXI_arvalid => s00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => s00_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => s00_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => s00_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awid => s00_couplers_to_axi_interconnect_0_AWID,
      M_AXI_awlen => s00_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => s00_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => s00_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => s00_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => s00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awsize => s00_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awuser => s00_couplers_to_axi_interconnect_0_AWUSER,
      M_AXI_awvalid => s00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bid => s00_couplers_to_axi_interconnect_0_BID,
      M_AXI_bready => s00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => s00_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => s00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => s00_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rid => s00_couplers_to_axi_interconnect_0_RID,
      M_AXI_rlast => s00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => s00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => s00_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => s00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => s00_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wid => s00_couplers_to_axi_interconnect_0_WID,
      M_AXI_wlast => s00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => s00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => s00_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => s00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr => axi_interconnect_0_to_s00_couplers_ARADDR,
      S_AXI_arburst => axi_interconnect_0_to_s00_couplers_ARBURST,
      S_AXI_arcache => axi_interconnect_0_to_s00_couplers_ARCACHE,
      S_AXI_arid => axi_interconnect_0_to_s00_couplers_ARID,
      S_AXI_arlen => axi_interconnect_0_to_s00_couplers_ARLEN,
      S_AXI_arlock => axi_interconnect_0_to_s00_couplers_ARLOCK,
      S_AXI_arprot => axi_interconnect_0_to_s00_couplers_ARPROT,
      S_AXI_arqos => axi_interconnect_0_to_s00_couplers_ARQOS,
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize => axi_interconnect_0_to_s00_couplers_ARSIZE,
      S_AXI_aruser => axi_interconnect_0_to_s00_couplers_ARUSER,
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr => axi_interconnect_0_to_s00_couplers_AWADDR,
      S_AXI_awburst => axi_interconnect_0_to_s00_couplers_AWBURST,
      S_AXI_awcache => axi_interconnect_0_to_s00_couplers_AWCACHE,
      S_AXI_awid => axi_interconnect_0_to_s00_couplers_AWID,
      S_AXI_awlen => axi_interconnect_0_to_s00_couplers_AWLEN,
      S_AXI_awlock => axi_interconnect_0_to_s00_couplers_AWLOCK,
      S_AXI_awprot => axi_interconnect_0_to_s00_couplers_AWPROT,
      S_AXI_awqos => axi_interconnect_0_to_s00_couplers_AWQOS,
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize => axi_interconnect_0_to_s00_couplers_AWSIZE,
      S_AXI_awuser => axi_interconnect_0_to_s00_couplers_AWUSER,
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid => axi_interconnect_0_to_s00_couplers_BID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp => axi_interconnect_0_to_s00_couplers_BRESP,
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata => axi_interconnect_0_to_s00_couplers_RDATA,
      S_AXI_rid => axi_interconnect_0_to_s00_couplers_RID,
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp => axi_interconnect_0_to_s00_couplers_RRESP,
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata => axi_interconnect_0_to_s00_couplers_WDATA,
      S_AXI_wid => axi_interconnect_0_to_s00_couplers_WID,
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb => axi_interconnect_0_to_s00_couplers_WSTRB,
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity turtle_top_level is
  port (
    clk_50MHz : in STD_LOGIC;
    input_ROM_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input_pins : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_ROM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    output_pins : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of turtle_top_level : entity is "turtle_top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=turtle_top_level,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=3,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of turtle_top_level : entity is "turtle_top_level.hwdef";
end turtle_top_level;

architecture STRUCTURE of turtle_top_level is
  component turtle_top_level_turtle_processing_un_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data_bus : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_bus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rw : out STD_LOGIC;
    o_addr_bus : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component turtle_top_level_turtle_processing_un_0_0;
  component turtle_top_level_rst_clk_50MHz_50M_4 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component turtle_top_level_rst_clk_50MHz_50M_4;
  component turtle_top_level_MMU_0_0 is
  port (
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
  end component turtle_top_level_MMU_0_0;
  component turtle_top_level_blk_mem_gen_0_4 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  end component turtle_top_level_blk_mem_gen_0_4;
  signal ACLK_1 : STD_LOGIC;
  signal MMU_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MMU_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MMU_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MMU_0_M_AXI_ARESETn : STD_LOGIC;
  signal MMU_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MMU_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MMU_0_M_AXI_ARREADY : STD_LOGIC;
  signal MMU_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_ARUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MMU_0_M_AXI_ARVALID : STD_LOGIC;
  signal MMU_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MMU_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MMU_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MMU_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MMU_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MMU_0_M_AXI_AWREADY : STD_LOGIC;
  signal MMU_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MMU_0_M_AXI_AWVALID : STD_LOGIC;
  signal MMU_0_M_AXI_BID : STD_LOGIC;
  signal MMU_0_M_AXI_BREADY : STD_LOGIC;
  signal MMU_0_M_AXI_BRESP : STD_LOGIC;
  signal MMU_0_M_AXI_BVALID : STD_LOGIC;
  signal MMU_0_M_AXI_RDATA : STD_LOGIC;
  signal MMU_0_M_AXI_RID : STD_LOGIC;
  signal MMU_0_M_AXI_RLAST : STD_LOGIC;
  signal MMU_0_M_AXI_RREADY : STD_LOGIC;
  signal MMU_0_M_AXI_RRESP : STD_LOGIC;
  signal MMU_0_M_AXI_RVALID : STD_LOGIC;
  signal MMU_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_M_AXI_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MMU_0_M_AXI_WLAST : STD_LOGIC;
  signal MMU_0_M_AXI_WREADY : STD_LOGIC;
  signal MMU_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MMU_0_M_AXI_WVALID : STD_LOGIC;
  signal MMU_0_o_addr_RAM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MMU_0_o_addr_ROM : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal MMU_0_o_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_o_led_bar : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MMU_0_o_read_cpu_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MMU_0_o_write_RAM : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_50MHz_1 : STD_LOGIC;
  signal input_ROM_bus_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input_pins_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_rtl_0_1 : STD_LOGIC;
  signal rst_clk_50MHz_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_50MHz_50M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal turtle_processing_un_0_o_addr_bus : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal turtle_processing_un_0_o_data_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal turtle_processing_un_0_o_rw : STD_LOGIC;
  signal NLW_MMU_0_o_debug_bus_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_interconnect_0_M00_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_50MHz_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_50MHz_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_50MHz_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_50MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_50MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_50MHz : signal is "XIL_INTERFACENAME CLK.CLK_50MHZ, CLK_DOMAIN turtle_top_level_clk_50MHz, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of input_ROM_bus : signal is "xilinx.com:signal:data:1.0 DATA.INPUT_ROM_BUS DATA";
  attribute X_INTERFACE_PARAMETER of input_ROM_bus : signal is "XIL_INTERFACENAME DATA.INPUT_ROM_BUS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of input_pins : signal is "xilinx.com:signal:data:1.0 DATA.INPUT_PINS DATA";
  attribute X_INTERFACE_PARAMETER of input_pins : signal is "XIL_INTERFACENAME DATA.INPUT_PINS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of output_ROM_addr : signal is "xilinx.com:signal:data:1.0 DATA.OUTPUT_ROM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of output_ROM_addr : signal is "XIL_INTERFACENAME DATA.OUTPUT_ROM_ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of output_pins : signal is "xilinx.com:signal:data:1.0 DATA.OUTPUT_PINS DATA";
  attribute X_INTERFACE_PARAMETER of output_pins : signal is "XIL_INTERFACENAME DATA.OUTPUT_PINS, LAYERED_METADATA undef";
begin
  clk_50MHz_1 <= clk_50MHz;
  input_ROM_bus_1(7 downto 0) <= input_ROM_bus(7 downto 0);
  input_pins_1(15 downto 0) <= input_pins(15 downto 0);
  output_ROM_addr(14 downto 0) <= MMU_0_o_addr_ROM(14 downto 0);
  output_pins(15 downto 0) <= MMU_0_o_led_bar(15 downto 0);
  reset_rtl_0_1 <= reset_rtl_0;
MMU_0: component turtle_top_level_MMU_0_0
     port map (
      M_AXI_ACLK => ACLK_1,
      M_AXI_ARADDR(15 downto 0) => MMU_0_M_AXI_ARADDR(15 downto 0),
      M_AXI_ARBURST(1 downto 0) => MMU_0_M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => MMU_0_M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARESETn => MMU_0_M_AXI_ARESETn,
      M_AXI_ARID(2 downto 0) => MMU_0_M_AXI_ARID(2 downto 0),
      M_AXI_ARLEN(7 downto 0) => MMU_0_M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK(1 downto 0) => MMU_0_M_AXI_ARLOCK(1 downto 0),
      M_AXI_ARPROT(2 downto 0) => MMU_0_M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => MMU_0_M_AXI_ARQOS(3 downto 0),
      M_AXI_ARREADY => MMU_0_M_AXI_ARREADY,
      M_AXI_ARSIZE(2 downto 0) => MMU_0_M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARUSER(4 downto 0) => MMU_0_M_AXI_ARUSER(4 downto 0),
      M_AXI_ARVALID => MMU_0_M_AXI_ARVALID,
      M_AXI_AWADDR(15 downto 0) => MMU_0_M_AXI_AWADDR(15 downto 0),
      M_AXI_AWBURST(1 downto 0) => MMU_0_M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => MMU_0_M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(2 downto 0) => MMU_0_M_AXI_AWID(2 downto 0),
      M_AXI_AWLEN(7 downto 0) => MMU_0_M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK(1 downto 0) => MMU_0_M_AXI_AWLOCK(1 downto 0),
      M_AXI_AWPROT(2 downto 0) => MMU_0_M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => MMU_0_M_AXI_AWQOS(3 downto 0),
      M_AXI_AWREADY => MMU_0_M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => MMU_0_M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWUSER(4 downto 0) => MMU_0_M_AXI_AWUSER(4 downto 0),
      M_AXI_AWVALID => MMU_0_M_AXI_AWVALID,
      M_AXI_BID(2) => MMU_0_M_AXI_BID,
      M_AXI_BID(1) => MMU_0_M_AXI_BID,
      M_AXI_BID(0) => MMU_0_M_AXI_BID,
      M_AXI_BREADY => MMU_0_M_AXI_BREADY,
      M_AXI_BRESP(1) => MMU_0_M_AXI_BRESP,
      M_AXI_BRESP(0) => MMU_0_M_AXI_BRESP,
      M_AXI_BVALID => MMU_0_M_AXI_BVALID,
      M_AXI_RDATA(7) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(6) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(5) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(4) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(3) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(2) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(1) => MMU_0_M_AXI_RDATA,
      M_AXI_RDATA(0) => MMU_0_M_AXI_RDATA,
      M_AXI_RID(2) => MMU_0_M_AXI_RID,
      M_AXI_RID(1) => MMU_0_M_AXI_RID,
      M_AXI_RID(0) => MMU_0_M_AXI_RID,
      M_AXI_RLAST => MMU_0_M_AXI_RLAST,
      M_AXI_RREADY => MMU_0_M_AXI_RREADY,
      M_AXI_RRESP(1) => MMU_0_M_AXI_RRESP,
      M_AXI_RRESP(0) => MMU_0_M_AXI_RRESP,
      M_AXI_RVALID => MMU_0_M_AXI_RVALID,
      M_AXI_WDATA(7 downto 0) => MMU_0_M_AXI_WDATA(7 downto 0),
      M_AXI_WID(2 downto 0) => MMU_0_M_AXI_WID(2 downto 0),
      M_AXI_WLAST => MMU_0_M_AXI_WLAST,
      M_AXI_WREADY => MMU_0_M_AXI_WREADY,
      M_AXI_WSTRB(0) => MMU_0_M_AXI_WSTRB(0),
      M_AXI_WVALID => MMU_0_M_AXI_WVALID,
      i_addr_bus(15 downto 0) => turtle_processing_un_0_o_addr_bus(15 downto 0),
      i_clk => clk_50MHz_1,
      i_data_RAM(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      i_data_ROM(7 downto 0) => input_ROM_bus_1(7 downto 0),
      i_input_pins(15 downto 0) => input_pins_1(15 downto 0),
      i_rstn => rst_clk_50MHz_50M_peripheral_aresetn(0),
      i_rw => turtle_processing_un_0_o_rw,
      i_write_cpu_bus(7 downto 0) => turtle_processing_un_0_o_data_bus(7 downto 0),
      o_addr_RAM(14 downto 0) => MMU_0_o_addr_RAM(14 downto 0),
      o_addr_ROM(14 downto 0) => MMU_0_o_addr_ROM(14 downto 0),
      o_data(7 downto 0) => MMU_0_o_data(7 downto 0),
      o_debug_bus(7 downto 0) => NLW_MMU_0_o_debug_bus_UNCONNECTED(7 downto 0),
      o_output_pins(15 downto 0) => MMU_0_o_led_bar(15 downto 0),
      o_read_cpu_bus(7 downto 0) => MMU_0_o_read_cpu_bus(7 downto 0),
      o_write_RAM => MMU_0_o_write_RAM
    );
axi_interconnect_0: entity work.turtle_top_level_axi_interconnect_0_0
     port map (
      ACLK => ACLK_1,
      ARESETN => MMU_0_M_AXI_ARESETn,
      M00_ACLK => ACLK_1,
      M00_ARESETN => MMU_0_M_AXI_ARESETn,
      M00_AXI_araddr => NLW_axi_interconnect_0_M00_AXI_araddr_UNCONNECTED,
      M00_AXI_arburst => NLW_axi_interconnect_0_M00_AXI_arburst_UNCONNECTED,
      M00_AXI_arcache => NLW_axi_interconnect_0_M00_AXI_arcache_UNCONNECTED,
      M00_AXI_arid => NLW_axi_interconnect_0_M00_AXI_arid_UNCONNECTED,
      M00_AXI_arlen => NLW_axi_interconnect_0_M00_AXI_arlen_UNCONNECTED,
      M00_AXI_arlock => NLW_axi_interconnect_0_M00_AXI_arlock_UNCONNECTED,
      M00_AXI_arprot => NLW_axi_interconnect_0_M00_AXI_arprot_UNCONNECTED,
      M00_AXI_arqos => NLW_axi_interconnect_0_M00_AXI_arqos_UNCONNECTED,
      M00_AXI_arready => '0',
      M00_AXI_arsize => NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED,
      M00_AXI_aruser => NLW_axi_interconnect_0_M00_AXI_aruser_UNCONNECTED,
      M00_AXI_arvalid => NLW_axi_interconnect_0_M00_AXI_arvalid_UNCONNECTED,
      M00_AXI_awaddr => NLW_axi_interconnect_0_M00_AXI_awaddr_UNCONNECTED,
      M00_AXI_awburst => NLW_axi_interconnect_0_M00_AXI_awburst_UNCONNECTED,
      M00_AXI_awcache => NLW_axi_interconnect_0_M00_AXI_awcache_UNCONNECTED,
      M00_AXI_awid => NLW_axi_interconnect_0_M00_AXI_awid_UNCONNECTED,
      M00_AXI_awlen => NLW_axi_interconnect_0_M00_AXI_awlen_UNCONNECTED,
      M00_AXI_awlock => NLW_axi_interconnect_0_M00_AXI_awlock_UNCONNECTED,
      M00_AXI_awprot => NLW_axi_interconnect_0_M00_AXI_awprot_UNCONNECTED,
      M00_AXI_awqos => NLW_axi_interconnect_0_M00_AXI_awqos_UNCONNECTED,
      M00_AXI_awready => '0',
      M00_AXI_awsize => NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED,
      M00_AXI_awuser => NLW_axi_interconnect_0_M00_AXI_awuser_UNCONNECTED,
      M00_AXI_awvalid => NLW_axi_interconnect_0_M00_AXI_awvalid_UNCONNECTED,
      M00_AXI_bid => '0',
      M00_AXI_bready => NLW_axi_interconnect_0_M00_AXI_bready_UNCONNECTED,
      M00_AXI_bresp => '0',
      M00_AXI_bvalid => '0',
      M00_AXI_rdata => '0',
      M00_AXI_rid => '0',
      M00_AXI_rlast => '0',
      M00_AXI_rready => NLW_axi_interconnect_0_M00_AXI_rready_UNCONNECTED,
      M00_AXI_rresp => '0',
      M00_AXI_rvalid => '0',
      M00_AXI_wdata => NLW_axi_interconnect_0_M00_AXI_wdata_UNCONNECTED,
      M00_AXI_wid => NLW_axi_interconnect_0_M00_AXI_wid_UNCONNECTED,
      M00_AXI_wlast => NLW_axi_interconnect_0_M00_AXI_wlast_UNCONNECTED,
      M00_AXI_wready => '0',
      M00_AXI_wstrb => NLW_axi_interconnect_0_M00_AXI_wstrb_UNCONNECTED,
      M00_AXI_wvalid => NLW_axi_interconnect_0_M00_AXI_wvalid_UNCONNECTED,
      S00_ACLK => ACLK_1,
      S00_ARESETN => MMU_0_M_AXI_ARESETn,
      S00_AXI_araddr => MMU_0_M_AXI_ARADDR(0),
      S00_AXI_arburst => MMU_0_M_AXI_ARBURST(0),
      S00_AXI_arcache => MMU_0_M_AXI_ARCACHE(0),
      S00_AXI_arid => MMU_0_M_AXI_ARID(0),
      S00_AXI_arlen => MMU_0_M_AXI_ARLEN(0),
      S00_AXI_arlock => MMU_0_M_AXI_ARLOCK(0),
      S00_AXI_arprot => MMU_0_M_AXI_ARPROT(0),
      S00_AXI_arqos => MMU_0_M_AXI_ARQOS(0),
      S00_AXI_arready => MMU_0_M_AXI_ARREADY,
      S00_AXI_arsize => MMU_0_M_AXI_ARSIZE(0),
      S00_AXI_aruser => MMU_0_M_AXI_ARUSER(0),
      S00_AXI_arvalid => MMU_0_M_AXI_ARVALID,
      S00_AXI_awaddr => MMU_0_M_AXI_AWADDR(0),
      S00_AXI_awburst => MMU_0_M_AXI_AWBURST(0),
      S00_AXI_awcache => MMU_0_M_AXI_AWCACHE(0),
      S00_AXI_awid => MMU_0_M_AXI_AWID(0),
      S00_AXI_awlen => MMU_0_M_AXI_AWLEN(0),
      S00_AXI_awlock => MMU_0_M_AXI_AWLOCK(0),
      S00_AXI_awprot => MMU_0_M_AXI_AWPROT(0),
      S00_AXI_awqos => MMU_0_M_AXI_AWQOS(0),
      S00_AXI_awready => MMU_0_M_AXI_AWREADY,
      S00_AXI_awsize => MMU_0_M_AXI_AWSIZE(0),
      S00_AXI_awuser => MMU_0_M_AXI_AWUSER(0),
      S00_AXI_awvalid => MMU_0_M_AXI_AWVALID,
      S00_AXI_bid => MMU_0_M_AXI_BID,
      S00_AXI_bready => MMU_0_M_AXI_BREADY,
      S00_AXI_bresp => MMU_0_M_AXI_BRESP,
      S00_AXI_bvalid => MMU_0_M_AXI_BVALID,
      S00_AXI_rdata => MMU_0_M_AXI_RDATA,
      S00_AXI_rid => MMU_0_M_AXI_RID,
      S00_AXI_rlast => MMU_0_M_AXI_RLAST,
      S00_AXI_rready => MMU_0_M_AXI_RREADY,
      S00_AXI_rresp => MMU_0_M_AXI_RRESP,
      S00_AXI_rvalid => MMU_0_M_AXI_RVALID,
      S00_AXI_wdata => MMU_0_M_AXI_WDATA(0),
      S00_AXI_wid => MMU_0_M_AXI_WID(0),
      S00_AXI_wlast => MMU_0_M_AXI_WLAST,
      S00_AXI_wready => MMU_0_M_AXI_WREADY,
      S00_AXI_wstrb => MMU_0_M_AXI_WSTRB(0),
      S00_AXI_wvalid => MMU_0_M_AXI_WVALID
    );
blk_mem_gen_0: component turtle_top_level_blk_mem_gen_0_4
     port map (
      addra(14 downto 0) => MMU_0_o_addr_RAM(14 downto 0),
      clka => clk_50MHz_1,
      dina(7 downto 0) => MMU_0_o_data(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      rsta => rst_clk_50MHz_50M_peripheral_reset(0),
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      wea(0) => MMU_0_o_write_RAM
    );
rst_clk_50MHz_50M: component turtle_top_level_rst_clk_50MHz_50M_4
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_50MHz_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_rtl_0_1,
      interconnect_aresetn(0) => NLW_rst_clk_50MHz_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_50MHz_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_50MHz_50M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_clk_50MHz_50M_peripheral_reset(0),
      slowest_sync_clk => clk_50MHz_1
    );
turtle_processing_un_0: component turtle_top_level_turtle_processing_un_0_0
     port map (
      i_clk => clk_50MHz_1,
      i_data_bus(7 downto 0) => MMU_0_o_read_cpu_bus(7 downto 0),
      i_rst => rst_clk_50MHz_50M_peripheral_aresetn(0),
      o_addr_bus(15 downto 0) => turtle_processing_un_0_o_addr_bus(15 downto 0),
      o_data_bus(7 downto 0) => turtle_processing_un_0_o_data_bus(7 downto 0),
      o_rw => turtle_processing_un_0_o_rw
    );
end STRUCTURE;
