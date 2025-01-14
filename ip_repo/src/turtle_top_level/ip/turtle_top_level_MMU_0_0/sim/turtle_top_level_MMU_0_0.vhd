-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:MMU:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY turtle_top_level_MMU_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    i_rstn : IN STD_LOGIC;
    i_rw : IN STD_LOGIC;
    i_write_cpu_bus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_addr_bus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i_data_RAM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_data_ROM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_input_pins : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_debug_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_read_cpu_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_addr_RAM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    o_write_RAM : OUT STD_LOGIC;
    o_output_pins : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    o_addr_ROM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    M_AXI_ACLK : OUT STD_LOGIC;
    M_AXI_ARESETn : OUT STD_LOGIC;
    M_AXI_AWID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_AWADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    M_AXI_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_AWUSER : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    M_AXI_AWVALID : OUT STD_LOGIC;
    M_AXI_AWREADY : IN STD_LOGIC;
    M_AXI_WID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_WDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_WSTRB : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXI_WLAST : OUT STD_LOGIC;
    M_AXI_WVALID : OUT STD_LOGIC;
    M_AXI_WREADY : IN STD_LOGIC;
    M_AXI_BID : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_BVALID : IN STD_LOGIC;
    M_AXI_BREADY : OUT STD_LOGIC;
    M_AXI_ARID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_ARADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    M_AXI_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_ARUSER : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    M_AXI_ARVALID : OUT STD_LOGIC;
    M_AXI_ARREADY : IN STD_LOGIC;
    M_AXI_RID : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_RDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_RLAST : IN STD_LOGIC;
    M_AXI_RVALID : IN STD_LOGIC;
    M_AXI_RREADY : OUT STD_LOGIC
  );
END turtle_top_level_MMU_0_0;

ARCHITECTURE turtle_top_level_MMU_0_0_arch OF turtle_top_level_MMU_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF turtle_top_level_MMU_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MMU IS
    GENERIC (
      AXI_FIFO_SIZE : INTEGER
    );
    PORT (
      i_clk : IN STD_LOGIC;
      i_rstn : IN STD_LOGIC;
      i_rw : IN STD_LOGIC;
      i_write_cpu_bus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_addr_bus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i_data_RAM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_data_ROM : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_input_pins : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_debug_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_read_cpu_bus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_addr_RAM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
      o_write_RAM : OUT STD_LOGIC;
      o_output_pins : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      o_addr_ROM : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
      M_AXI_ACLK : OUT STD_LOGIC;
      M_AXI_ARESETn : OUT STD_LOGIC;
      M_AXI_AWID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_AWADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      M_AXI_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_AWUSER : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      M_AXI_AWVALID : OUT STD_LOGIC;
      M_AXI_AWREADY : IN STD_LOGIC;
      M_AXI_WID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_WDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_WSTRB : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXI_WLAST : OUT STD_LOGIC;
      M_AXI_WVALID : OUT STD_LOGIC;
      M_AXI_WREADY : IN STD_LOGIC;
      M_AXI_BID : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_BVALID : IN STD_LOGIC;
      M_AXI_BREADY : OUT STD_LOGIC;
      M_AXI_ARID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_ARADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      M_AXI_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_ARUSER : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      M_AXI_ARVALID : OUT STD_LOGIC;
      M_AXI_ARREADY : IN STD_LOGIC;
      M_AXI_RID : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_RDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_RLAST : IN STD_LOGIC;
      M_AXI_RVALID : IN STD_LOGIC;
      M_AXI_RREADY : OUT STD_LOGIC
    );
  END COMPONENT MMU;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_AXI_ACLK: SIGNAL IS "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_AXI_ARESETn: SIGNAL IS "XIL_INTERFACENAME M_AXI_ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARESETn: SIGNAL IS "xilinx.com:signal:reset:1.0 M_AXI_ARESETn RST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARUSER: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_AXI_AWID: SIGNAL IS "XIL_INTERFACENAME M_AXI, DATA_WIDTH 8, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 3, ADDR_WIDTH 16, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, NUM_READ_THREADS 1, NUM_WR" & 
"ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWUSER: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_rstn: SIGNAL IS "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 i_rstn RST";
BEGIN
  U0 : MMU
    GENERIC MAP (
      AXI_FIFO_SIZE => 16
    )
    PORT MAP (
      i_clk => i_clk,
      i_rstn => i_rstn,
      i_rw => i_rw,
      i_write_cpu_bus => i_write_cpu_bus,
      i_addr_bus => i_addr_bus,
      i_data_RAM => i_data_RAM,
      i_data_ROM => i_data_ROM,
      i_input_pins => i_input_pins,
      o_debug_bus => o_debug_bus,
      o_read_cpu_bus => o_read_cpu_bus,
      o_data => o_data,
      o_addr_RAM => o_addr_RAM,
      o_write_RAM => o_write_RAM,
      o_output_pins => o_output_pins,
      o_addr_ROM => o_addr_ROM,
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARESETn => M_AXI_ARESETn,
      M_AXI_AWID => M_AXI_AWID,
      M_AXI_AWADDR => M_AXI_AWADDR,
      M_AXI_AWLEN => M_AXI_AWLEN,
      M_AXI_AWSIZE => M_AXI_AWSIZE,
      M_AXI_AWBURST => M_AXI_AWBURST,
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWCACHE => M_AXI_AWCACHE,
      M_AXI_AWPROT => M_AXI_AWPROT,
      M_AXI_AWQOS => M_AXI_AWQOS,
      M_AXI_AWUSER => M_AXI_AWUSER,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_WID => M_AXI_WID,
      M_AXI_WDATA => M_AXI_WDATA,
      M_AXI_WSTRB => M_AXI_WSTRB,
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WVALID => M_AXI_WVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_BID => M_AXI_BID,
      M_AXI_BRESP => M_AXI_BRESP,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_ARID => M_AXI_ARID,
      M_AXI_ARADDR => M_AXI_ARADDR,
      M_AXI_ARLEN => M_AXI_ARLEN,
      M_AXI_ARSIZE => M_AXI_ARSIZE,
      M_AXI_ARBURST => M_AXI_ARBURST,
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARCACHE => M_AXI_ARCACHE,
      M_AXI_ARPROT => M_AXI_ARPROT,
      M_AXI_ARQOS => M_AXI_ARQOS,
      M_AXI_ARUSER => M_AXI_ARUSER,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_RID => M_AXI_RID,
      M_AXI_RDATA => M_AXI_RDATA,
      M_AXI_RRESP => M_AXI_RRESP,
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_RREADY => M_AXI_RREADY
    );
END turtle_top_level_MMU_0_0_arch;
