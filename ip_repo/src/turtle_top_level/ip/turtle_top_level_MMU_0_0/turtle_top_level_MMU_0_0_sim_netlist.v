// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jan 14 11:58:24 2025
// Host        : GBNicoArch running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_MMU_0_0/turtle_top_level_MMU_0_0_sim_netlist.v
// Design      : turtle_top_level_MMU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "turtle_top_level_MMU_0_0,MMU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "MMU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module turtle_top_level_MMU_0_0
   (i_clk,
    i_rstn,
    i_rw,
    i_write_cpu_bus,
    i_addr_bus,
    i_data_RAM,
    i_data_ROM,
    i_input_pins,
    o_debug_bus,
    o_read_cpu_bus,
    o_data,
    o_addr_RAM,
    o_write_RAM,
    o_output_pins,
    o_addr_ROM,
    M_AXI_ACLK,
    M_AXI_ARESETn,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rstn;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, INSERT_VIP 0" *) output M_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M_AXI_ARESETn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output M_AXI_ARESETn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 8, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 3, ADDR_WIDTH 16, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN turtle_top_level_MMU_0_0_M_AXI_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [2:0]M_AXI_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [15:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]M_AXI_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [4:0]M_AXI_AWUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WID" *) output [2:0]M_AXI_WID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [7:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [0:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [2:0]M_AXI_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [2:0]M_AXI_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [15:0]M_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]M_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]M_AXI_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [4:0]M_AXI_ARUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [2:0]M_AXI_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [7:0]M_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire U0_n_16;
  wire U0_n_17;
  wire U0_n_18;
  wire [15:0]i_addr_bus;
  wire i_clk;
  wire [7:0]i_data_RAM;
  wire [7:0]i_data_ROM;
  wire [15:0]i_input_pins;
  wire i_rstn;
  wire i_rw;
  wire [7:0]i_write_cpu_bus;
  wire [7:0]o_debug_bus;
  wire [15:0]o_output_pins;
  wire [7:0]o_read_cpu_bus;
  wire o_write_RAM;

  assign M_AXI_ACLK = i_clk;
  assign M_AXI_ARADDR[15] = \<const0> ;
  assign M_AXI_ARADDR[14] = \<const0> ;
  assign M_AXI_ARADDR[13] = \<const0> ;
  assign M_AXI_ARADDR[12] = \<const0> ;
  assign M_AXI_ARADDR[11] = \<const0> ;
  assign M_AXI_ARADDR[10] = \<const0> ;
  assign M_AXI_ARADDR[9] = \<const0> ;
  assign M_AXI_ARADDR[8] = \<const0> ;
  assign M_AXI_ARADDR[7] = \<const0> ;
  assign M_AXI_ARADDR[6] = \<const0> ;
  assign M_AXI_ARADDR[5] = \<const0> ;
  assign M_AXI_ARADDR[4] = \<const0> ;
  assign M_AXI_ARADDR[3] = \<const0> ;
  assign M_AXI_ARADDR[2] = \<const0> ;
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \<const0> ;
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const0> ;
  assign M_AXI_ARCACHE[0] = \<const0> ;
  assign M_AXI_ARESETn = \<const0> ;
  assign M_AXI_ARID[2] = \<const0> ;
  assign M_AXI_ARID[1] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[7] = \<const0> ;
  assign M_AXI_ARLEN[6] = \<const0> ;
  assign M_AXI_ARLEN[5] = \<const0> ;
  assign M_AXI_ARLEN[4] = \<const0> ;
  assign M_AXI_ARLEN[3] = \<const0> ;
  assign M_AXI_ARLEN[2] = \<const0> ;
  assign M_AXI_ARLEN[1] = \<const0> ;
  assign M_AXI_ARLEN[0] = \<const0> ;
  assign M_AXI_ARLOCK[1] = \<const0> ;
  assign M_AXI_ARLOCK[0] = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const0> ;
  assign M_AXI_ARSIZE[1] = \<const0> ;
  assign M_AXI_ARSIZE[0] = \<const0> ;
  assign M_AXI_ARUSER[4] = \<const0> ;
  assign M_AXI_ARUSER[3] = \<const0> ;
  assign M_AXI_ARUSER[2] = \<const0> ;
  assign M_AXI_ARUSER[1] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const0> ;
  assign M_AXI_ARVALID = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const0> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[2] = \<const0> ;
  assign M_AXI_AWID[1] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWLOCK[1] = \<const0> ;
  assign M_AXI_AWLOCK[0] = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[4] = \<const0> ;
  assign M_AXI_AWUSER[3] = \<const0> ;
  assign M_AXI_AWUSER[2] = \<const0> ;
  assign M_AXI_AWUSER[1] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_BREADY = \<const0> ;
  assign M_AXI_RREADY = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WID[2] = \<const0> ;
  assign M_AXI_WID[1] = \<const0> ;
  assign M_AXI_WID[0] = \<const0> ;
  assign M_AXI_WLAST = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  assign o_addr_RAM[14:0] = i_addr_bus[14:0];
  assign o_addr_ROM[14:0] = i_addr_bus[14:0];
  assign o_data[7:0] = i_write_cpu_bus;
  GND GND
       (.G(\<const0> ));
  turtle_top_level_MMU_0_0_MMU U0
       (.i_addr_bus(i_addr_bus),
        .i_addr_bus_2_sp_1(U0_n_18),
        .i_addr_bus_4_sp_1(U0_n_17),
        .i_addr_bus_9_sp_1(U0_n_16),
        .i_clk(i_clk),
        .i_data_RAM(i_data_RAM),
        .i_data_ROM(i_data_ROM),
        .i_input_pins(i_input_pins),
        .i_rstn(i_rstn),
        .i_rw(i_rw),
        .i_write_cpu_bus(i_write_cpu_bus),
        .o_debug_bus(o_debug_bus),
        .o_output_pins(o_output_pins),
        .o_read_cpu_bus(o_read_cpu_bus));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h8888888888808888)) 
    o_write_RAM_INST_0
       (.I0(i_addr_bus[15]),
        .I1(i_rw),
        .I2(U0_n_17),
        .I3(U0_n_18),
        .I4(i_addr_bus[1]),
        .I5(U0_n_16),
        .O(o_write_RAM));
endmodule

(* ORIG_REF_NAME = "MMU" *) 
module turtle_top_level_MMU_0_0_MMU
   (o_debug_bus,
    o_read_cpu_bus,
    i_addr_bus_9_sp_1,
    i_addr_bus_4_sp_1,
    i_addr_bus_2_sp_1,
    o_output_pins,
    i_write_cpu_bus,
    i_rw,
    i_data_ROM,
    i_addr_bus,
    i_data_RAM,
    i_input_pins,
    i_rstn,
    i_clk);
  output [7:0]o_debug_bus;
  output [7:0]o_read_cpu_bus;
  output i_addr_bus_9_sp_1;
  output i_addr_bus_4_sp_1;
  output i_addr_bus_2_sp_1;
  output [15:0]o_output_pins;
  input [7:0]i_write_cpu_bus;
  input i_rw;
  input [7:0]i_data_ROM;
  input [15:0]i_addr_bus;
  input [7:0]i_data_RAM;
  input [15:0]i_input_pins;
  input i_rstn;
  input i_clk;

  wire [15:0]i_addr_bus;
  wire i_addr_bus_2_sn_1;
  wire i_addr_bus_4_sn_1;
  wire i_addr_bus_9_sn_1;
  wire i_clk;
  wire [7:0]i_data_RAM;
  wire [7:0]i_data_ROM;
  wire [15:0]i_input_pins;
  wire i_rstn;
  wire i_rw;
  wire [7:0]i_write_cpu_bus;
  wire [7:0]o_debug_bus;
  wire \o_debug_bus[0]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[0]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[1]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[1]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[2]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[2]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[3]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[3]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[4]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[4]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[5]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[5]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[6]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[6]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_1_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_3_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_4_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_5_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_6_n_0 ;
  wire \o_debug_bus[7]_INST_0_i_7_n_0 ;
  wire [15:0]o_output_pins;
  wire [7:0]o_read_cpu_bus;
  wire \o_read_cpu_bus[7]_INST_0_i_1_n_0 ;
  wire [7:0]p_0_out;
  wire [15:7]p_1_in;
  wire \s_output_pins_reg[15]_i_2_n_0 ;
  wire \s_output_pins_reg[15]_i_3_n_0 ;
  wire \s_output_pins_reg[15]_i_4_n_0 ;
  wire \s_output_pins_reg[15]_i_5_n_0 ;
  wire \s_output_pins_reg[15]_i_6_n_0 ;

  assign i_addr_bus_2_sp_1 = i_addr_bus_2_sn_1;
  assign i_addr_bus_4_sp_1 = i_addr_bus_4_sn_1;
  assign i_addr_bus_9_sp_1 = i_addr_bus_9_sn_1;
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[0]_INST_0 
       (.I0(i_write_cpu_bus[0]),
        .I1(i_rw),
        .I2(\o_debug_bus[0]_INST_0_i_1_n_0 ),
        .I3(p_0_out[0]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[0]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[0]_INST_0_i_1 
       (.I0(i_data_RAM[0]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[0]),
        .O(\o_debug_bus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[0]_INST_0_i_2 
       (.I0(\o_debug_bus[0]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[0]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[0]_INST_0_i_3 
       (.I0(i_input_pins[0]),
        .I1(o_output_pins[0]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[8]),
        .I5(o_output_pins[8]),
        .O(\o_debug_bus[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[1]_INST_0 
       (.I0(i_write_cpu_bus[1]),
        .I1(i_rw),
        .I2(\o_debug_bus[1]_INST_0_i_1_n_0 ),
        .I3(p_0_out[1]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[1]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[1]_INST_0_i_1 
       (.I0(i_data_RAM[1]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[1]),
        .O(\o_debug_bus[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[1]_INST_0_i_2 
       (.I0(\o_debug_bus[1]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[1]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[1]_INST_0_i_3 
       (.I0(i_input_pins[1]),
        .I1(o_output_pins[1]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[9]),
        .I5(o_output_pins[9]),
        .O(\o_debug_bus[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[2]_INST_0 
       (.I0(i_write_cpu_bus[2]),
        .I1(i_rw),
        .I2(\o_debug_bus[2]_INST_0_i_1_n_0 ),
        .I3(p_0_out[2]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[2]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[2]_INST_0_i_1 
       (.I0(i_data_RAM[2]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[2]),
        .O(\o_debug_bus[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[2]_INST_0_i_2 
       (.I0(\o_debug_bus[2]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[2]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[2]_INST_0_i_3 
       (.I0(i_input_pins[2]),
        .I1(o_output_pins[2]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[10]),
        .I5(o_output_pins[10]),
        .O(\o_debug_bus[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[3]_INST_0 
       (.I0(i_write_cpu_bus[3]),
        .I1(i_rw),
        .I2(\o_debug_bus[3]_INST_0_i_1_n_0 ),
        .I3(p_0_out[3]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[3]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[3]_INST_0_i_1 
       (.I0(i_data_RAM[3]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[3]),
        .O(\o_debug_bus[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[3]_INST_0_i_2 
       (.I0(\o_debug_bus[3]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[3]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[3]_INST_0_i_3 
       (.I0(i_input_pins[3]),
        .I1(o_output_pins[3]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[11]),
        .I5(o_output_pins[11]),
        .O(\o_debug_bus[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[4]_INST_0 
       (.I0(i_write_cpu_bus[4]),
        .I1(i_rw),
        .I2(\o_debug_bus[4]_INST_0_i_1_n_0 ),
        .I3(p_0_out[4]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[4]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[4]_INST_0_i_1 
       (.I0(i_data_RAM[4]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[4]),
        .O(\o_debug_bus[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[4]_INST_0_i_2 
       (.I0(\o_debug_bus[4]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[4]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[4]_INST_0_i_3 
       (.I0(i_input_pins[4]),
        .I1(o_output_pins[4]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[12]),
        .I5(o_output_pins[12]),
        .O(\o_debug_bus[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[5]_INST_0 
       (.I0(i_write_cpu_bus[5]),
        .I1(i_rw),
        .I2(\o_debug_bus[5]_INST_0_i_1_n_0 ),
        .I3(p_0_out[5]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[5]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[5]_INST_0_i_1 
       (.I0(i_data_RAM[5]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[5]),
        .O(\o_debug_bus[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[5]_INST_0_i_2 
       (.I0(\o_debug_bus[5]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[5]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[5]_INST_0_i_3 
       (.I0(i_input_pins[5]),
        .I1(o_output_pins[5]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[13]),
        .I5(o_output_pins[13]),
        .O(\o_debug_bus[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[6]_INST_0 
       (.I0(i_write_cpu_bus[6]),
        .I1(i_rw),
        .I2(\o_debug_bus[6]_INST_0_i_1_n_0 ),
        .I3(p_0_out[6]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[6]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[6]_INST_0_i_1 
       (.I0(i_data_RAM[6]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[6]),
        .O(\o_debug_bus[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[6]_INST_0_i_2 
       (.I0(\o_debug_bus[6]_INST_0_i_3_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[6]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[6]_INST_0_i_3 
       (.I0(i_input_pins[6]),
        .I1(o_output_pins[6]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[14]),
        .I5(o_output_pins[14]),
        .O(\o_debug_bus[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \o_debug_bus[7]_INST_0 
       (.I0(i_write_cpu_bus[7]),
        .I1(i_rw),
        .I2(\o_debug_bus[7]_INST_0_i_1_n_0 ),
        .I3(p_0_out[7]),
        .I4(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_debug_bus[7]));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \o_debug_bus[7]_INST_0_i_1 
       (.I0(i_data_RAM[7]),
        .I1(\o_debug_bus[7]_INST_0_i_4_n_0 ),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .I5(i_data_ROM[7]),
        .O(\o_debug_bus[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE22FF00F000FF00)) 
    \o_debug_bus[7]_INST_0_i_2 
       (.I0(\o_debug_bus[7]_INST_0_i_5_n_0 ),
        .I1(i_addr_bus_2_sn_1),
        .I2(\o_debug_bus[7]_INST_0_i_6_n_0 ),
        .I3(i_data_RAM[7]),
        .I4(i_addr_bus[4]),
        .I5(i_addr_bus[5]),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \o_debug_bus[7]_INST_0_i_3 
       (.I0(i_addr_bus[15]),
        .I1(\o_debug_bus[7]_INST_0_i_7_n_0 ),
        .I2(i_addr_bus[11]),
        .I3(i_addr_bus_9_sn_1),
        .I4(i_addr_bus[10]),
        .O(\o_debug_bus[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \o_debug_bus[7]_INST_0_i_4 
       (.I0(i_addr_bus[13]),
        .I1(i_addr_bus[8]),
        .I2(i_addr_bus[14]),
        .I3(i_addr_bus[15]),
        .I4(i_addr_bus[11]),
        .O(\o_debug_bus[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \o_debug_bus[7]_INST_0_i_5 
       (.I0(i_input_pins[7]),
        .I1(o_output_pins[7]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[0]),
        .I4(i_input_pins[15]),
        .I5(o_output_pins[15]),
        .O(\o_debug_bus[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \o_debug_bus[7]_INST_0_i_6 
       (.I0(i_addr_bus[3]),
        .I1(i_addr_bus[0]),
        .I2(i_addr_bus[1]),
        .I3(i_addr_bus[2]),
        .O(\o_debug_bus[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \o_debug_bus[7]_INST_0_i_7 
       (.I0(i_addr_bus[15]),
        .I1(i_addr_bus[14]),
        .I2(i_addr_bus[8]),
        .I3(i_addr_bus[13]),
        .O(\o_debug_bus[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[0]_INST_0 
       (.I0(i_data_ROM[0]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[0]),
        .I4(p_0_out[0]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[1]_INST_0 
       (.I0(i_data_ROM[1]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[1]),
        .I4(p_0_out[1]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[2]_INST_0 
       (.I0(i_data_ROM[2]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[2]),
        .I4(p_0_out[2]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[3]_INST_0 
       (.I0(i_data_ROM[3]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[3]),
        .I4(p_0_out[3]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[4]_INST_0 
       (.I0(i_data_ROM[4]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[4]),
        .I4(p_0_out[4]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[5]_INST_0 
       (.I0(i_data_ROM[5]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[5]),
        .I4(p_0_out[5]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[6]_INST_0 
       (.I0(i_data_ROM[6]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[6]),
        .I4(p_0_out[6]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \o_read_cpu_bus[7]_INST_0 
       (.I0(i_data_ROM[7]),
        .I1(i_addr_bus[15]),
        .I2(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ),
        .I3(i_data_RAM[7]),
        .I4(p_0_out[7]),
        .I5(\o_debug_bus[7]_INST_0_i_3_n_0 ),
        .O(o_read_cpu_bus[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBFF0000)) 
    \o_read_cpu_bus[7]_INST_0_i_1 
       (.I0(\o_debug_bus[7]_INST_0_i_7_n_0 ),
        .I1(i_addr_bus[11]),
        .I2(i_addr_bus_9_sn_1),
        .I3(i_addr_bus[10]),
        .I4(i_addr_bus[15]),
        .O(\o_read_cpu_bus[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    o_write_RAM_INST_0_i_1
       (.I0(i_addr_bus[4]),
        .I1(i_addr_bus[5]),
        .I2(i_addr_bus[10]),
        .I3(i_addr_bus[11]),
        .I4(\o_debug_bus[7]_INST_0_i_7_n_0 ),
        .O(i_addr_bus_4_sn_1));
  LUT2 #(
    .INIT(4'h7)) 
    o_write_RAM_INST_0_i_2
       (.I0(i_addr_bus[2]),
        .I1(i_addr_bus[3]),
        .O(i_addr_bus_2_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    o_write_RAM_INST_0_i_3
       (.I0(i_addr_bus[9]),
        .I1(i_addr_bus[12]),
        .I2(i_addr_bus[7]),
        .I3(i_addr_bus[6]),
        .O(i_addr_bus_9_sn_1));
  LUT6 #(
    .INIT(64'h0A0A0A0A080A0A0A)) 
    \s_output_pins_reg[15]_i_1 
       (.I0(\s_output_pins_reg[15]_i_3_n_0 ),
        .I1(i_addr_bus_9_sn_1),
        .I2(i_addr_bus_4_sn_1),
        .I3(i_addr_bus[1]),
        .I4(i_addr_bus[0]),
        .I5(i_addr_bus_2_sn_1),
        .O(p_1_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_output_pins_reg[15]_i_2 
       (.I0(i_rstn),
        .O(\s_output_pins_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s_output_pins_reg[15]_i_3 
       (.I0(\s_output_pins_reg[15]_i_4_n_0 ),
        .I1(\s_output_pins_reg[15]_i_5_n_0 ),
        .I2(\s_output_pins_reg[15]_i_6_n_0 ),
        .I3(i_addr_bus[7]),
        .I4(i_addr_bus[2]),
        .I5(i_rw),
        .O(\s_output_pins_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    \s_output_pins_reg[15]_i_4 
       (.I0(i_addr_bus[8]),
        .I1(i_addr_bus[6]),
        .I2(i_addr_bus[7]),
        .I3(i_addr_bus[5]),
        .I4(i_addr_bus[3]),
        .I5(i_addr_bus[4]),
        .O(\s_output_pins_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD5D500D500D500D5)) 
    \s_output_pins_reg[15]_i_5 
       (.I0(i_addr_bus[14]),
        .I1(i_addr_bus[12]),
        .I2(i_addr_bus[13]),
        .I3(i_addr_bus[11]),
        .I4(i_addr_bus[9]),
        .I5(i_addr_bus[10]),
        .O(\s_output_pins_reg[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_output_pins_reg[15]_i_6 
       (.I0(i_addr_bus[1]),
        .I1(i_addr_bus[0]),
        .O(\s_output_pins_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \s_output_pins_reg[7]_i_1 
       (.I0(i_rw),
        .I1(i_addr_bus_9_sn_1),
        .I2(i_addr_bus_4_sn_1),
        .I3(i_addr_bus[1]),
        .I4(i_addr_bus[0]),
        .I5(i_addr_bus_2_sn_1),
        .O(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[0] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[0]),
        .Q(o_output_pins[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[10] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[2]),
        .Q(o_output_pins[10]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[11] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[3]),
        .Q(o_output_pins[11]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[12] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[4]),
        .Q(o_output_pins[12]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[13] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[5]),
        .Q(o_output_pins[13]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[14] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[6]),
        .Q(o_output_pins[14]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[15] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[7]),
        .Q(o_output_pins[15]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[1] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[1]),
        .Q(o_output_pins[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[2] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[2]),
        .Q(o_output_pins[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[3] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[3]),
        .Q(o_output_pins[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[4] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[4]),
        .Q(o_output_pins[4]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[5] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[5]),
        .Q(o_output_pins[5]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[6] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[6]),
        .Q(o_output_pins[6]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[7] 
       (.C(i_clk),
        .CE(p_1_in[7]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[7]),
        .Q(o_output_pins[7]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[8] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[0]),
        .Q(o_output_pins[8]));
  FDCE #(
    .INIT(1'b0)) 
    \s_output_pins_reg_reg[9] 
       (.C(i_clk),
        .CE(p_1_in[15]),
        .CLR(\s_output_pins_reg[15]_i_2_n_0 ),
        .D(i_write_cpu_bus[1]),
        .Q(o_output_pins[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
