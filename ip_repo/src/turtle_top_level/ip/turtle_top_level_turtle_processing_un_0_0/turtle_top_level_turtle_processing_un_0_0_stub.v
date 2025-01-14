// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jan 14 11:58:09 2025
// Host        : GBNicoArch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_turtle_processing_un_0_0/turtle_top_level_turtle_processing_un_0_0_stub.v
// Design      : turtle_top_level_turtle_processing_un_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "turtle_processing_unit,Vivado 2024.1" *)
module turtle_top_level_turtle_processing_un_0_0(i_clk, i_rst, i_data_bus, o_data_bus, o_rw, 
  o_addr_bus)
/* synthesis syn_black_box black_box_pad_pin="i_rst,i_data_bus[7:0],o_data_bus[7:0],o_rw,o_addr_bus[15:0]" */
/* synthesis syn_force_seq_prim="i_clk" */;
  input i_clk /* synthesis syn_isclock = 1 */;
  input i_rst;
  input [7:0]i_data_bus;
  output [7:0]o_data_bus;
  output o_rw;
  output [15:0]o_addr_bus;
endmodule
