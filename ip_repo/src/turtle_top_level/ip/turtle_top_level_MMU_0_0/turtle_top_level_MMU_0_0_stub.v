// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jan 14 11:58:24 2025
// Host        : GBNicoArch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_MMU_0_0/turtle_top_level_MMU_0_0_stub.v
// Design      : turtle_top_level_MMU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MMU,Vivado 2024.1" *)
module turtle_top_level_MMU_0_0(i_clk, i_rstn, i_rw, i_write_cpu_bus, i_addr_bus, 
  i_data_RAM, i_data_ROM, i_input_pins, o_debug_bus, o_read_cpu_bus, o_data, o_addr_RAM, 
  o_write_RAM, o_output_pins, o_addr_ROM, M_AXI_ACLK, M_AXI_ARESETn, M_AXI_AWID, M_AXI_AWADDR, 
  M_AXI_AWLEN, M_AXI_AWSIZE, M_AXI_AWBURST, M_AXI_AWLOCK, M_AXI_AWCACHE, M_AXI_AWPROT, 
  M_AXI_AWQOS, M_AXI_AWUSER, M_AXI_AWVALID, M_AXI_AWREADY, M_AXI_WID, M_AXI_WDATA, M_AXI_WSTRB, 
  M_AXI_WLAST, M_AXI_WVALID, M_AXI_WREADY, M_AXI_BID, M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, 
  M_AXI_ARID, M_AXI_ARADDR, M_AXI_ARLEN, M_AXI_ARSIZE, M_AXI_ARBURST, M_AXI_ARLOCK, 
  M_AXI_ARCACHE, M_AXI_ARPROT, M_AXI_ARQOS, M_AXI_ARUSER, M_AXI_ARVALID, M_AXI_ARREADY, 
  M_AXI_RID, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RLAST, M_AXI_RVALID, M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="i_rstn,i_rw,i_write_cpu_bus[7:0],i_addr_bus[15:0],i_data_RAM[7:0],i_data_ROM[7:0],i_input_pins[15:0],o_debug_bus[7:0],o_read_cpu_bus[7:0],o_data[7:0],o_addr_RAM[14:0],o_write_RAM,o_output_pins[15:0],o_addr_ROM[14:0],M_AXI_ARESETn,M_AXI_AWID[2:0],M_AXI_AWADDR[15:0],M_AXI_AWLEN[7:0],M_AXI_AWSIZE[2:0],M_AXI_AWBURST[1:0],M_AXI_AWLOCK[1:0],M_AXI_AWCACHE[3:0],M_AXI_AWPROT[2:0],M_AXI_AWQOS[3:0],M_AXI_AWUSER[4:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WID[2:0],M_AXI_WDATA[7:0],M_AXI_WSTRB[0:0],M_AXI_WLAST,M_AXI_WVALID,M_AXI_WREADY,M_AXI_BID[2:0],M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARID[2:0],M_AXI_ARADDR[15:0],M_AXI_ARLEN[7:0],M_AXI_ARSIZE[2:0],M_AXI_ARBURST[1:0],M_AXI_ARLOCK[1:0],M_AXI_ARCACHE[3:0],M_AXI_ARPROT[2:0],M_AXI_ARQOS[3:0],M_AXI_ARUSER[4:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RID[2:0],M_AXI_RDATA[7:0],M_AXI_RRESP[1:0],M_AXI_RLAST,M_AXI_RVALID,M_AXI_RREADY" */
/* synthesis syn_force_seq_prim="i_clk" */
/* synthesis syn_force_seq_prim="M_AXI_ACLK" */;
  input i_clk /* synthesis syn_isclock = 1 */;
  input i_rstn;
  input i_rw;
  input [7:0]i_write_cpu_bus;
  input [15:0]i_addr_bus;
  input [7:0]i_data_RAM;
  input [7:0]i_data_ROM;
  input [15:0]i_input_pins;
  output [7:0]o_debug_bus;
  output [7:0]o_read_cpu_bus;
  output [7:0]o_data;
  output [14:0]o_addr_RAM;
  output o_write_RAM;
  output [15:0]o_output_pins;
  output [14:0]o_addr_ROM;
  output M_AXI_ACLK /* synthesis syn_isclock = 1 */;
  output M_AXI_ARESETn;
  output [2:0]M_AXI_AWID;
  output [15:0]M_AXI_AWADDR;
  output [7:0]M_AXI_AWLEN;
  output [2:0]M_AXI_AWSIZE;
  output [1:0]M_AXI_AWBURST;
  output [1:0]M_AXI_AWLOCK;
  output [3:0]M_AXI_AWCACHE;
  output [2:0]M_AXI_AWPROT;
  output [3:0]M_AXI_AWQOS;
  output [4:0]M_AXI_AWUSER;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [2:0]M_AXI_WID;
  output [7:0]M_AXI_WDATA;
  output [0:0]M_AXI_WSTRB;
  output M_AXI_WLAST;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [2:0]M_AXI_BID;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [2:0]M_AXI_ARID;
  output [15:0]M_AXI_ARADDR;
  output [7:0]M_AXI_ARLEN;
  output [2:0]M_AXI_ARSIZE;
  output [1:0]M_AXI_ARBURST;
  output [1:0]M_AXI_ARLOCK;
  output [3:0]M_AXI_ARCACHE;
  output [2:0]M_AXI_ARPROT;
  output [3:0]M_AXI_ARQOS;
  output [4:0]M_AXI_ARUSER;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [2:0]M_AXI_RID;
  input [7:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RLAST;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
endmodule
