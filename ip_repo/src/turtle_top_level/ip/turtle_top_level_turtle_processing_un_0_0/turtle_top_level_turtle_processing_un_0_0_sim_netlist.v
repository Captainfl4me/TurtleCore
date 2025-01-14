// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Jan 14 11:58:09 2025
// Host        : GBNicoArch running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/nicoth/projects/TurtleCore/ip_repo/src/turtle_top_level/ip/turtle_top_level_turtle_processing_un_0_0/turtle_top_level_turtle_processing_un_0_0_sim_netlist.v
// Design      : turtle_top_level_turtle_processing_un_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "turtle_top_level_turtle_processing_un_0_0,turtle_processing_unit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "turtle_processing_unit,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module turtle_top_level_turtle_processing_un_0_0
   (i_clk,
    i_rst,
    i_data_bus,
    o_data_bus,
    o_rw,
    o_addr_bus);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN turtle_top_level_clk_50MHz, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rst;
  input [7:0]i_data_bus;
  output [7:0]o_data_bus;
  output o_rw;
  output [15:0]o_addr_bus;

  wire i_clk;
  wire [7:0]i_data_bus;
  wire i_rst;
  wire [15:0]o_addr_bus;
  wire [7:0]o_data_bus;
  wire o_rw;

  turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit U0
       (.i_clk(i_clk),
        .i_data_bus(i_data_bus),
        .i_rst(i_rst),
        .o_addr_bus(o_addr_bus),
        .o_data_bus(o_data_bus),
        .o_rw(o_rw));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module turtle_top_level_turtle_processing_un_0_0_alu
   (data2,
    CO,
    \s_registers_reg[0][3] ,
    \s_registers_reg[0][7] ,
    Q,
    S,
    \s_registers[1][4]_i_3 ,
    \s_registers_reg[1][7]_i_16 ,
    \s_registers_reg[1][7]_i_16_0 );
  output [7:0]data2;
  output [0:0]CO;
  output [3:0]\s_registers_reg[0][3] ;
  output [3:0]\s_registers_reg[0][7] ;
  input [7:0]Q;
  input [3:0]S;
  input [3:0]\s_registers[1][4]_i_3 ;
  input [3:0]\s_registers_reg[1][7]_i_16 ;
  input [7:0]\s_registers_reg[1][7]_i_16_0 ;

  wire [0:0]CO;
  wire [7:0]Q;
  wire [3:0]S;
  wire [7:0]data2;
  wire [3:0]\s_registers[1][4]_i_3 ;
  wire [3:0]\s_registers_reg[0][3] ;
  wire [3:0]\s_registers_reg[0][7] ;
  wire [3:0]\s_registers_reg[1][7]_i_16 ;
  wire [7:0]\s_registers_reg[1][7]_i_16_0 ;
  wire \s_result0_inferred__0/i__carry__0_n_1 ;
  wire \s_result0_inferred__0/i__carry__0_n_2 ;
  wire \s_result0_inferred__0/i__carry__0_n_3 ;
  wire \s_result0_inferred__0/i__carry_n_0 ;
  wire \s_result0_inferred__0/i__carry_n_1 ;
  wire \s_result0_inferred__0/i__carry_n_2 ;
  wire \s_result0_inferred__0/i__carry_n_3 ;

  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][1]_i_10 
       (.I0(Q[3]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [3]),
        .O(\s_registers_reg[0][3] [3]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][1]_i_11 
       (.I0(Q[2]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [2]),
        .O(\s_registers_reg[0][3] [2]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][1]_i_12 
       (.I0(Q[1]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [1]),
        .O(\s_registers_reg[0][3] [1]));
  LUT6 #(
    .INIT(64'h5555555555AA55A9)) 
    \s_registers[1][1]_i_13 
       (.I0(Q[0]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [0]),
        .O(\s_registers_reg[0][3] [0]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][7]_i_18 
       (.I0(Q[7]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [7]),
        .O(\s_registers_reg[0][7] [3]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][7]_i_19 
       (.I0(Q[6]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [6]),
        .O(\s_registers_reg[0][7] [2]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][7]_i_20 
       (.I0(Q[5]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [5]),
        .O(\s_registers_reg[0][7] [1]));
  LUT6 #(
    .INIT(64'hAA55AA56AAAAAAAA)) 
    \s_registers[1][7]_i_21 
       (.I0(Q[4]),
        .I1(\s_registers_reg[1][7]_i_16 [0]),
        .I2(\s_registers_reg[1][7]_i_16 [1]),
        .I3(\s_registers_reg[1][7]_i_16 [3]),
        .I4(\s_registers_reg[1][7]_i_16 [2]),
        .I5(\s_registers_reg[1][7]_i_16_0 [4]),
        .O(\s_registers_reg[0][7] [0]));
  CARRY4 \s_result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\s_result0_inferred__0/i__carry_n_0 ,\s_result0_inferred__0/i__carry_n_1 ,\s_result0_inferred__0/i__carry_n_2 ,\s_result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(data2[3:0]),
        .S(S));
  CARRY4 \s_result0_inferred__0/i__carry__0 
       (.CI(\s_result0_inferred__0/i__carry_n_0 ),
        .CO({CO,\s_result0_inferred__0/i__carry__0_n_1 ,\s_result0_inferred__0/i__carry__0_n_2 ,\s_result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data2[7:4]),
        .S(\s_registers[1][4]_i_3 ));
endmodule

(* ORIG_REF_NAME = "counter_register" *) 
module turtle_top_level_turtle_processing_un_0_0_counter_register
   (D,
    \s_counter_reg[15]_0 ,
    \i_data_bus[7] ,
    \FSM_sequential_s_current_state_reg[2] ,
    E,
    s_counter,
    Q,
    \s_addr_reg[5] ,
    O,
    \s_addr_new_reg[13] ,
    i_data_bus,
    \s_addr_reg[5]_0 ,
    \s_addr_reg[5]_1 ,
    \s_counter_reg[15]_1 ,
    \s_counter_reg[15]_2 ,
    i_clk,
    \s_counter_reg[0]_0 );
  output [0:0]D;
  output [15:0]\s_counter_reg[15]_0 ;
  output [4:0]\i_data_bus[7] ;
  output \FSM_sequential_s_current_state_reg[2] ;
  output [0:0]E;
  output [13:0]s_counter;
  input [2:0]Q;
  input \s_addr_reg[5] ;
  input [2:0]O;
  input \s_addr_new_reg[13] ;
  input [4:0]i_data_bus;
  input \s_addr_reg[5]_0 ;
  input \s_addr_reg[5]_1 ;
  input [0:0]\s_counter_reg[15]_1 ;
  input [15:0]\s_counter_reg[15]_2 ;
  input i_clk;
  input \s_counter_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_s_current_state_reg[2] ;
  wire [2:0]O;
  wire [2:0]Q;
  wire i_clk;
  wire [4:0]i_data_bus;
  wire [4:0]\i_data_bus[7] ;
  wire \s_addr[5]_i_3_n_0 ;
  wire \s_addr_new_reg[13] ;
  wire \s_addr_reg[5] ;
  wire \s_addr_reg[5]_0 ;
  wire \s_addr_reg[5]_1 ;
  wire [13:0]s_counter;
  wire \s_counter_reg[0]_0 ;
  wire \s_counter_reg[12]_i_2_n_0 ;
  wire \s_counter_reg[12]_i_2_n_1 ;
  wire \s_counter_reg[12]_i_2_n_2 ;
  wire \s_counter_reg[12]_i_2_n_3 ;
  wire [15:0]\s_counter_reg[15]_0 ;
  wire [0:0]\s_counter_reg[15]_1 ;
  wire [15:0]\s_counter_reg[15]_2 ;
  wire \s_counter_reg[15]_i_4_n_2 ;
  wire \s_counter_reg[15]_i_4_n_3 ;
  wire \s_counter_reg[4]_i_2_n_0 ;
  wire \s_counter_reg[4]_i_2_n_1 ;
  wire \s_counter_reg[4]_i_2_n_2 ;
  wire \s_counter_reg[4]_i_2_n_3 ;
  wire \s_counter_reg[8]_i_2_n_0 ;
  wire \s_counter_reg[8]_i_2_n_1 ;
  wire \s_counter_reg[8]_i_2_n_2 ;
  wire \s_counter_reg[8]_i_2_n_3 ;
  wire [3:2]\NLW_s_counter_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_counter_reg[15]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_s_counter_reg[4]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    o_rw_INST_0_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_s_current_state_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFF8F00)) 
    \s_addr[5]_i_1 
       (.I0(Q[1]),
        .I1(\s_counter_reg[15]_0 [5]),
        .I2(Q[2]),
        .I3(\s_addr_reg[5] ),
        .I4(\s_addr[5]_i_3_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h0000AA000000A300)) 
    \s_addr[5]_i_3 
       (.I0(\s_counter_reg[15]_0 [5]),
        .I1(\s_addr_reg[5]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\s_addr_reg[5]_1 ),
        .O(\s_addr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0020FFEF)) 
    \s_addr_new[0]_i_1 
       (.I0(i_data_bus[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\s_counter_reg[15]_0 [0]),
        .O(\i_data_bus[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[13]_i_1 
       (.I0(O[0]),
        .I1(\s_addr_new_reg[13] ),
        .I2(i_data_bus[2]),
        .O(\i_data_bus[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[14]_i_1 
       (.I0(O[1]),
        .I1(\s_addr_new_reg[13] ),
        .I2(i_data_bus[3]),
        .O(\i_data_bus[7] [3]));
  LUT3 #(
    .INIT(8'h08)) 
    \s_addr_new[15]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(E));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[15]_i_2 
       (.I0(O[2]),
        .I1(\s_addr_new_reg[13] ),
        .I2(i_data_bus[4]),
        .O(\i_data_bus[7] [4]));
  LUT6 #(
    .INIT(64'h0020FFEFFFEF0020)) 
    \s_addr_new[1]_i_1 
       (.I0(i_data_bus[1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\s_counter_reg[15]_0 [0]),
        .I5(\s_counter_reg[15]_0 [1]),
        .O(\i_data_bus[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[0] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [0]),
        .Q(\s_counter_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[10] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [10]),
        .Q(\s_counter_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[11] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [11]),
        .Q(\s_counter_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[12] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [12]),
        .Q(\s_counter_reg[15]_0 [12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_counter_reg[12]_i_2 
       (.CI(\s_counter_reg[8]_i_2_n_0 ),
        .CO({\s_counter_reg[12]_i_2_n_0 ,\s_counter_reg[12]_i_2_n_1 ,\s_counter_reg[12]_i_2_n_2 ,\s_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_counter[10:7]),
        .S(\s_counter_reg[15]_0 [12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[13] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [13]),
        .Q(\s_counter_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[14] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [14]),
        .Q(\s_counter_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[15] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [15]),
        .Q(\s_counter_reg[15]_0 [15]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_counter_reg[15]_i_4 
       (.CI(\s_counter_reg[12]_i_2_n_0 ),
        .CO({\NLW_s_counter_reg[15]_i_4_CO_UNCONNECTED [3:2],\s_counter_reg[15]_i_4_n_2 ,\s_counter_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_counter_reg[15]_i_4_O_UNCONNECTED [3],s_counter[13:11]}),
        .S({1'b0,\s_counter_reg[15]_0 [15:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[1] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [1]),
        .Q(\s_counter_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[2] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [2]),
        .Q(\s_counter_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[3] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [3]),
        .Q(\s_counter_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[4] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [4]),
        .Q(\s_counter_reg[15]_0 [4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_counter_reg[4]_i_2_n_0 ,\s_counter_reg[4]_i_2_n_1 ,\s_counter_reg[4]_i_2_n_2 ,\s_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\s_counter_reg[15]_0 [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_counter[2:0],\NLW_s_counter_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S(\s_counter_reg[15]_0 [4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[5] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [5]),
        .Q(\s_counter_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[6] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [6]),
        .Q(\s_counter_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[7] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [7]),
        .Q(\s_counter_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[8] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [8]),
        .Q(\s_counter_reg[15]_0 [8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \s_counter_reg[8]_i_2 
       (.CI(\s_counter_reg[4]_i_2_n_0 ),
        .CO({\s_counter_reg[8]_i_2_n_0 ,\s_counter_reg[8]_i_2_n_1 ,\s_counter_reg[8]_i_2_n_2 ,\s_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_counter[6:3]),
        .S(\s_counter_reg[15]_0 [8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[9] 
       (.C(i_clk),
        .CE(\s_counter_reg[15]_1 ),
        .CLR(\s_counter_reg[0]_0 ),
        .D(\s_counter_reg[15]_2 [9]),
        .Q(\s_counter_reg[15]_0 [9]));
endmodule

(* ORIG_REF_NAME = "counter_register" *) 
module turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1
   (s_counter_reg,
    \s_counter_reg[3]_0 ,
    \s_counter_reg[4]_0 ,
    \s_counter_reg[7]_0 ,
    \s_counter_reg[5]_0 ,
    \s_ir_reg[3] ,
    \s_counter_reg[2]_0 ,
    \s_counter_reg[3]_1 ,
    \s_counter_reg[3]_2 ,
    \s_counter_reg[5]_1 ,
    s_stack_en,
    i_clk,
    \s_counter_reg[7]_1 ,
    \s_counter_reg[4]_1 ,
    Q,
    \s_addr_reg[2]_i_4_0 ,
    \s_addr_reg[2]_i_4_1 ,
    \s_addr_reg[3] ,
    \s_addr_reg[2] ,
    \s_addr_reg[2]_i_4_2 );
  output [7:0]s_counter_reg;
  output \s_counter_reg[3]_0 ;
  output \s_counter_reg[4]_0 ;
  output \s_counter_reg[7]_0 ;
  output \s_counter_reg[5]_0 ;
  output \s_ir_reg[3] ;
  output \s_counter_reg[2]_0 ;
  output \s_counter_reg[3]_1 ;
  output \s_counter_reg[3]_2 ;
  output \s_counter_reg[5]_1 ;
  input s_stack_en;
  input i_clk;
  input \s_counter_reg[7]_1 ;
  input [0:0]\s_counter_reg[4]_1 ;
  input [1:0]Q;
  input \s_addr_reg[2]_i_4_0 ;
  input \s_addr_reg[2]_i_4_1 ;
  input [1:0]\s_addr_reg[3] ;
  input \s_addr_reg[2] ;
  input \s_addr_reg[2]_i_4_2 ;

  wire [1:0]Q;
  wire i_clk;
  wire [0:0]minusOp;
  wire \s_addr[2]_i_6_n_0 ;
  wire \s_addr[2]_i_7_n_0 ;
  wire \s_addr_reg[2] ;
  wire \s_addr_reg[2]_i_4_0 ;
  wire \s_addr_reg[2]_i_4_1 ;
  wire \s_addr_reg[2]_i_4_2 ;
  wire [1:0]\s_addr_reg[3] ;
  wire s_counter0_carry__0_i_1_n_0;
  wire s_counter0_carry__0_i_2_n_0;
  wire s_counter0_carry__0_i_3_n_0;
  wire s_counter0_carry__0_n_2;
  wire s_counter0_carry__0_n_3;
  wire s_counter0_carry__0_n_5;
  wire s_counter0_carry__0_n_6;
  wire s_counter0_carry__0_n_7;
  wire s_counter0_carry_i_1_n_0;
  wire s_counter0_carry_i_2_n_0;
  wire s_counter0_carry_i_3_n_0;
  wire s_counter0_carry_i_4_n_0;
  wire s_counter0_carry_n_0;
  wire s_counter0_carry_n_1;
  wire s_counter0_carry_n_2;
  wire s_counter0_carry_n_3;
  wire s_counter0_carry_n_4;
  wire s_counter0_carry_n_5;
  wire s_counter0_carry_n_6;
  wire s_counter0_carry_n_7;
  wire [7:0]s_counter_reg;
  wire \s_counter_reg[2]_0 ;
  wire \s_counter_reg[3]_0 ;
  wire \s_counter_reg[3]_1 ;
  wire \s_counter_reg[3]_2 ;
  wire \s_counter_reg[4]_0 ;
  wire [0:0]\s_counter_reg[4]_1 ;
  wire \s_counter_reg[5]_0 ;
  wire \s_counter_reg[5]_1 ;
  wire \s_counter_reg[7]_0 ;
  wire \s_counter_reg[7]_1 ;
  wire \s_ir_reg[3] ;
  wire s_stack_en;
  wire [3:2]NLW_s_counter0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_s_counter0_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \s_addr[2]_i_3 
       (.I0(s_counter_reg[2]),
        .I1(s_counter_reg[0]),
        .I2(s_counter_reg[1]),
        .I3(\s_addr_reg[2] ),
        .I4(\s_addr_reg[3] [0]),
        .O(\s_counter_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h4447444477747777)) 
    \s_addr[2]_i_6 
       (.I0(\s_addr_reg[3] [0]),
        .I1(\s_addr_reg[2]_i_4_2 ),
        .I2(s_counter_reg[0]),
        .I3(s_counter_reg[1]),
        .I4(Q[0]),
        .I5(s_counter_reg[2]),
        .O(\s_addr[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00005600FFFF56FF)) 
    \s_addr[2]_i_7 
       (.I0(s_counter_reg[2]),
        .I1(s_counter_reg[0]),
        .I2(s_counter_reg[1]),
        .I3(\s_addr_reg[2]_i_4_0 ),
        .I4(\s_addr_reg[2]_i_4_1 ),
        .I5(\s_addr_reg[3] [0]),
        .O(\s_addr[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \s_addr[3]_i_3 
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[2]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[0]),
        .I4(\s_addr_reg[2] ),
        .I5(\s_addr_reg[3] [1]),
        .O(\s_counter_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \s_addr[3]_i_8 
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[2]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[0]),
        .O(\s_counter_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \s_addr[4]_i_2 
       (.I0(s_counter_reg[4]),
        .I1(s_counter_reg[3]),
        .I2(s_counter_reg[0]),
        .I3(s_counter_reg[1]),
        .I4(s_counter_reg[2]),
        .O(\s_counter_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFEFFFF)) 
    \s_addr[4]_i_8 
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[0]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[2]),
        .I4(Q[0]),
        .I5(s_counter_reg[4]),
        .O(\s_counter_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \s_addr[5]_i_7 
       (.I0(s_counter_reg[5]),
        .I1(s_counter_reg[2]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[0]),
        .I4(s_counter_reg[3]),
        .I5(s_counter_reg[4]),
        .O(\s_counter_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_addr[6]_i_4 
       (.I0(s_counter_reg[5]),
        .I1(s_counter_reg[2]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[0]),
        .I4(s_counter_reg[3]),
        .I5(s_counter_reg[4]),
        .O(\s_counter_reg[5]_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \s_addr[7]_i_5 
       (.I0(s_counter_reg[7]),
        .I1(s_counter_reg[6]),
        .I2(\s_counter_reg[5]_0 ),
        .O(\s_counter_reg[7]_0 ));
  MUXF7 \s_addr_reg[2]_i_4 
       (.I0(\s_addr[2]_i_6_n_0 ),
        .I1(\s_addr[2]_i_7_n_0 ),
        .O(\s_ir_reg[3] ),
        .S(Q[1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 s_counter0_carry
       (.CI(1'b0),
        .CO({s_counter0_carry_n_0,s_counter0_carry_n_1,s_counter0_carry_n_2,s_counter0_carry_n_3}),
        .CYINIT(s_counter_reg[0]),
        .DI({s_counter_reg[3:1],s_counter0_carry_i_1_n_0}),
        .O({s_counter0_carry_n_4,s_counter0_carry_n_5,s_counter0_carry_n_6,s_counter0_carry_n_7}),
        .S({s_counter0_carry_i_2_n_0,s_counter0_carry_i_3_n_0,s_counter0_carry_i_4_n_0,\s_counter_reg[4]_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 s_counter0_carry__0
       (.CI(s_counter0_carry_n_0),
        .CO({NLW_s_counter0_carry__0_CO_UNCONNECTED[3:2],s_counter0_carry__0_n_2,s_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_counter_reg[5:4]}),
        .O({NLW_s_counter0_carry__0_O_UNCONNECTED[3],s_counter0_carry__0_n_5,s_counter0_carry__0_n_6,s_counter0_carry__0_n_7}),
        .S({1'b0,s_counter0_carry__0_i_1_n_0,s_counter0_carry__0_i_2_n_0,s_counter0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry__0_i_1
       (.I0(s_counter_reg[6]),
        .I1(s_counter_reg[7]),
        .O(s_counter0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry__0_i_2
       (.I0(s_counter_reg[5]),
        .I1(s_counter_reg[6]),
        .O(s_counter0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry__0_i_3
       (.I0(s_counter_reg[4]),
        .I1(s_counter_reg[5]),
        .O(s_counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_counter0_carry_i_1
       (.I0(s_counter_reg[1]),
        .O(s_counter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry_i_2
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[4]),
        .O(s_counter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry_i_3
       (.I0(s_counter_reg[2]),
        .I1(s_counter_reg[3]),
        .O(s_counter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_counter0_carry_i_4
       (.I0(s_counter_reg[1]),
        .I1(s_counter_reg[2]),
        .O(s_counter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \s_counter[0]_i_1__0 
       (.I0(s_counter_reg[0]),
        .O(minusOp));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[0] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(minusOp),
        .Q(s_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[1] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry_n_7),
        .Q(s_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[2] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry_n_6),
        .Q(s_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[3] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry_n_5),
        .Q(s_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[4] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry_n_4),
        .Q(s_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[5] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry__0_n_7),
        .Q(s_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[6] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry__0_n_6),
        .Q(s_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \s_counter_reg[7] 
       (.C(i_clk),
        .CE(s_stack_en),
        .CLR(\s_counter_reg[7]_1 ),
        .D(s_counter0_carry__0_n_5),
        .Q(s_counter_reg[7]));
endmodule

(* ORIG_REF_NAME = "instruction_register" *) 
module turtle_top_level_turtle_processing_un_0_0_instruction_register
   (S,
    Q,
    \s_registers_reg[1][7] ,
    \s_ir_reg[7]_0 ,
    \s_ir_reg[7]_1 ,
    \s_ir_reg[0]_0 ,
    \s_ir_reg[5]_0 ,
    o_rw,
    \s_counter_reg[1] ,
    \s_ir_reg[5]_1 ,
    \s_ir_reg[7]_2 ,
    \s_ir_reg[4]_0 ,
    o_data_bus,
    D,
    \s_ir_reg[7]_3 ,
    E,
    s_carry0,
    \FSM_sequential_s_current_state_reg[2] ,
    \s_ir_reg[5]_2 ,
    \s_ir_reg[7]_4 ,
    \FSM_sequential_s_current_state_reg[0] ,
    \i_data_bus[7] ,
    \s_ir_reg[1]_0 ,
    s_stack_en,
    \i_data_bus[4] ,
    \FSM_sequential_s_current_state_reg[0]_0 ,
    \i_data_bus[7]_0 ,
    \s_ir_reg[0]_1 ,
    \s_ir_reg[1]_1 ,
    \s_registers_reg[0][7] ,
    \s_ir_reg[4]_1 ,
    \s_ir_reg[6]_0 ,
    s_negative_reg,
    s_zero_reg,
    \s_registers[1][7]_i_8 ,
    \s_registers[1][7]_i_8_0 ,
    \FSM_sequential_s_current_state_reg[2]_0 ,
    \s_addr_reg[1] ,
    s_counter_reg,
    \o_data_bus[7] ,
    o_rw_0,
    \s_registers_reg[1][5] ,
    data2,
    \s_registers_reg[1][5]_0 ,
    O,
    \s_addr_reg[15] ,
    \s_addr_reg[14] ,
    \s_addr_reg[7] ,
    \s_addr_reg[7]_0 ,
    \s_addr_reg[6] ,
    \s_addr_reg[8] ,
    \s_addr_reg[0] ,
    \s_addr_reg[2] ,
    \s_addr_reg[2]_0 ,
    \s_addr_reg[3] ,
    \s_addr_reg[4] ,
    s_counter,
    i_data_bus,
    \s_addr[4]_i_3_0 ,
    \s_addr[3]_i_6_0 ,
    \s_addr[5]_i_2_0 ,
    plusOp,
    o_data_bus_0_sp_1,
    o_data_bus_1_sp_1,
    \s_registers_reg[1][2] ,
    \s_registers_reg[1][3] ,
    \s_registers_reg[1][4] ,
    \s_registers_reg[1][5]_1 ,
    o_data_bus_6_sp_1,
    \o_data_bus[7]_0 ,
    \s_registers_reg[1][3]_0 ,
    \s_registers_reg[1][2]_0 ,
    \s_registers_reg[1][4]_0 ,
    \s_registers_reg[1][6] ,
    \s_registers_reg[1][7]_0 ,
    s_wait_for_starting_edge,
    s_zero,
    s_negative,
    s_overflow,
    s_carry,
    CO,
    i_clk,
    \s_ir_reg[0]_2 );
  output [3:0]S;
  output [5:0]Q;
  output [3:0]\s_registers_reg[1][7] ;
  output [0:0]\s_ir_reg[7]_0 ;
  output [0:0]\s_ir_reg[7]_1 ;
  output \s_ir_reg[0]_0 ;
  output \s_ir_reg[5]_0 ;
  output o_rw;
  output [0:0]\s_counter_reg[1] ;
  output \s_ir_reg[5]_1 ;
  output \s_ir_reg[7]_2 ;
  output \s_ir_reg[4]_0 ;
  output [7:0]o_data_bus;
  output [2:0]D;
  output [0:0]\s_ir_reg[7]_3 ;
  output [0:0]E;
  output s_carry0;
  output [14:0]\FSM_sequential_s_current_state_reg[2] ;
  output \s_ir_reg[5]_2 ;
  output \s_ir_reg[7]_4 ;
  output \FSM_sequential_s_current_state_reg[0] ;
  output [15:0]\i_data_bus[7] ;
  output \s_ir_reg[1]_0 ;
  output s_stack_en;
  output [4:0]\i_data_bus[4] ;
  output [0:0]\FSM_sequential_s_current_state_reg[0]_0 ;
  output [7:0]\i_data_bus[7]_0 ;
  output [0:0]\s_ir_reg[0]_1 ;
  output [0:0]\s_ir_reg[1]_1 ;
  output \s_registers_reg[0][7] ;
  output \s_ir_reg[4]_1 ;
  output \s_ir_reg[6]_0 ;
  output s_negative_reg;
  output s_zero_reg;
  input [7:0]\s_registers[1][7]_i_8 ;
  input [7:0]\s_registers[1][7]_i_8_0 ;
  input [2:0]\FSM_sequential_s_current_state_reg[2]_0 ;
  input \s_addr_reg[1] ;
  input [7:0]s_counter_reg;
  input [15:0]\o_data_bus[7] ;
  input o_rw_0;
  input \s_registers_reg[1][5] ;
  input [2:0]data2;
  input \s_registers_reg[1][5]_0 ;
  input [1:0]O;
  input [15:0]\s_addr_reg[15] ;
  input [0:0]\s_addr_reg[14] ;
  input \s_addr_reg[7] ;
  input \s_addr_reg[7]_0 ;
  input \s_addr_reg[6] ;
  input \s_addr_reg[8] ;
  input \s_addr_reg[0] ;
  input \s_addr_reg[2] ;
  input \s_addr_reg[2]_0 ;
  input \s_addr_reg[3] ;
  input \s_addr_reg[4] ;
  input [14:0]s_counter;
  input [7:0]i_data_bus;
  input \s_addr[4]_i_3_0 ;
  input \s_addr[3]_i_6_0 ;
  input \s_addr[5]_i_2_0 ;
  input [4:0]plusOp;
  input o_data_bus_0_sp_1;
  input o_data_bus_1_sp_1;
  input \s_registers_reg[1][2] ;
  input \s_registers_reg[1][3] ;
  input \s_registers_reg[1][4] ;
  input \s_registers_reg[1][5]_1 ;
  input o_data_bus_6_sp_1;
  input \o_data_bus[7]_0 ;
  input \s_registers_reg[1][3]_0 ;
  input \s_registers_reg[1][2]_0 ;
  input \s_registers_reg[1][4]_0 ;
  input \s_registers_reg[1][6] ;
  input \s_registers_reg[1][7]_0 ;
  input s_wait_for_starting_edge;
  input s_zero;
  input s_negative;
  input s_overflow;
  input s_carry;
  input [0:0]CO;
  input i_clk;
  input \s_ir_reg[0]_2 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_s_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_s_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_s_current_state_reg[0] ;
  wire [0:0]\FSM_sequential_s_current_state_reg[0]_0 ;
  wire [14:0]\FSM_sequential_s_current_state_reg[2] ;
  wire [2:0]\FSM_sequential_s_current_state_reg[2]_0 ;
  wire [1:0]O;
  wire [5:0]Q;
  wire [3:0]S;
  wire [2:0]data2;
  wire i_clk;
  wire [7:0]i_data_bus;
  wire [4:0]\i_data_bus[4] ;
  wire [15:0]\i_data_bus[7] ;
  wire [7:0]\i_data_bus[7]_0 ;
  wire [7:0]o_data_bus;
  wire \o_data_bus[0]_INST_0_i_1_n_0 ;
  wire \o_data_bus[1]_INST_0_i_1_n_0 ;
  wire \o_data_bus[2]_INST_0_i_1_n_0 ;
  wire \o_data_bus[3]_INST_0_i_1_n_0 ;
  wire \o_data_bus[4]_INST_0_i_1_n_0 ;
  wire \o_data_bus[5]_INST_0_i_1_n_0 ;
  wire \o_data_bus[6]_INST_0_i_1_n_0 ;
  wire [15:0]\o_data_bus[7] ;
  wire \o_data_bus[7]_0 ;
  wire \o_data_bus[7]_INST_0_i_2_n_0 ;
  wire \o_data_bus[7]_INST_0_i_3_n_0 ;
  wire \o_data_bus[7]_INST_0_i_5_n_0 ;
  wire o_data_bus_0_sn_1;
  wire o_data_bus_1_sn_1;
  wire o_data_bus_6_sn_1;
  wire o_rw;
  wire o_rw_0;
  wire [4:0]plusOp;
  wire \s_addr[0]_i_2_n_0 ;
  wire \s_addr[0]_i_3_n_0 ;
  wire \s_addr[0]_i_5_n_0 ;
  wire \s_addr[0]_i_6_n_0 ;
  wire \s_addr[10]_i_2_n_0 ;
  wire \s_addr[12]_i_2_n_0 ;
  wire \s_addr[13]_i_2_n_0 ;
  wire \s_addr[13]_i_3_n_0 ;
  wire \s_addr[14]_i_2_n_0 ;
  wire \s_addr[15]_i_5_n_0 ;
  wire \s_addr[15]_i_6_n_0 ;
  wire \s_addr[15]_i_7_n_0 ;
  wire \s_addr[1]_i_2_n_0 ;
  wire \s_addr[1]_i_3_n_0 ;
  wire \s_addr[1]_i_5_n_0 ;
  wire \s_addr[1]_i_6_n_0 ;
  wire \s_addr[1]_i_7_n_0 ;
  wire \s_addr[2]_i_2_n_0 ;
  wire \s_addr[2]_i_5_n_0 ;
  wire \s_addr[2]_i_8_n_0 ;
  wire \s_addr[3]_i_2_n_0 ;
  wire \s_addr[3]_i_4_n_0 ;
  wire \s_addr[3]_i_5_n_0 ;
  wire \s_addr[3]_i_6_0 ;
  wire \s_addr[3]_i_6_n_0 ;
  wire \s_addr[3]_i_7_n_0 ;
  wire \s_addr[4]_i_3_0 ;
  wire \s_addr[4]_i_3_n_0 ;
  wire \s_addr[4]_i_4_n_0 ;
  wire \s_addr[4]_i_5_n_0 ;
  wire \s_addr[4]_i_6_n_0 ;
  wire \s_addr[4]_i_7_n_0 ;
  wire \s_addr[5]_i_2_0 ;
  wire \s_addr[5]_i_4_n_0 ;
  wire \s_addr[5]_i_5_n_0 ;
  wire \s_addr[5]_i_6_n_0 ;
  wire \s_addr[6]_i_2_n_0 ;
  wire \s_addr[6]_i_3_n_0 ;
  wire \s_addr[6]_i_5_n_0 ;
  wire \s_addr[6]_i_6_n_0 ;
  wire \s_addr[6]_i_7_n_0 ;
  wire \s_addr[6]_i_8_n_0 ;
  wire \s_addr[7]_i_10_n_0 ;
  wire \s_addr[7]_i_11_n_0 ;
  wire \s_addr[7]_i_12_n_0 ;
  wire \s_addr[7]_i_2_n_0 ;
  wire \s_addr[7]_i_6_n_0 ;
  wire \s_addr[7]_i_7_n_0 ;
  wire \s_addr[7]_i_8_n_0 ;
  wire \s_addr[7]_i_9_n_0 ;
  wire \s_addr_reg[0] ;
  wire [0:0]\s_addr_reg[14] ;
  wire [15:0]\s_addr_reg[15] ;
  wire \s_addr_reg[1] ;
  wire \s_addr_reg[2] ;
  wire \s_addr_reg[2]_0 ;
  wire \s_addr_reg[3] ;
  wire \s_addr_reg[4] ;
  wire \s_addr_reg[6] ;
  wire \s_addr_reg[7] ;
  wire \s_addr_reg[7]_0 ;
  wire \s_addr_reg[8] ;
  wire s_carry;
  wire s_carry0;
  wire [14:0]s_counter;
  wire s_counter0_carry_i_6_n_0;
  wire \s_counter[15]_i_10_n_0 ;
  wire \s_counter[15]_i_11_n_0 ;
  wire \s_counter[15]_i_3_n_0 ;
  wire \s_counter[15]_i_6_n_0 ;
  wire \s_counter[15]_i_7_n_0 ;
  wire \s_counter[15]_i_8_n_0 ;
  wire \s_counter[15]_i_9_n_0 ;
  wire \s_counter[7]_i_2_n_0 ;
  wire [7:0]s_counter_reg;
  wire \s_counter_reg[15]_i_5_n_0 ;
  wire [0:0]\s_counter_reg[1] ;
  wire \s_ir_reg[0]_0 ;
  wire [0:0]\s_ir_reg[0]_1 ;
  wire \s_ir_reg[0]_2 ;
  wire \s_ir_reg[1]_0 ;
  wire [0:0]\s_ir_reg[1]_1 ;
  wire \s_ir_reg[4]_0 ;
  wire \s_ir_reg[4]_1 ;
  wire \s_ir_reg[5]_0 ;
  wire \s_ir_reg[5]_1 ;
  wire \s_ir_reg[5]_2 ;
  wire \s_ir_reg[6]_0 ;
  wire [0:0]\s_ir_reg[7]_0 ;
  wire [0:0]\s_ir_reg[7]_1 ;
  wire \s_ir_reg[7]_2 ;
  wire [0:0]\s_ir_reg[7]_3 ;
  wire \s_ir_reg[7]_4 ;
  wire \s_ir_reg_n_0_[1] ;
  wire \s_ir_reg_n_0_[2] ;
  wire s_is_loading;
  wire s_negative;
  wire s_negative0;
  wire s_negative_reg;
  wire s_overflow;
  wire \s_registers[1][0]_i_2_n_0 ;
  wire \s_registers[1][0]_i_3_n_0 ;
  wire \s_registers[1][0]_i_4_n_0 ;
  wire \s_registers[1][0]_i_5_n_0 ;
  wire \s_registers[1][0]_i_6_n_0 ;
  wire \s_registers[1][0]_i_7_n_0 ;
  wire \s_registers[1][0]_i_8_n_0 ;
  wire \s_registers[1][1]_i_2_n_0 ;
  wire \s_registers[1][1]_i_3_n_0 ;
  wire \s_registers[1][1]_i_4_n_0 ;
  wire \s_registers[1][1]_i_5_n_0 ;
  wire \s_registers[1][1]_i_6_n_0 ;
  wire \s_registers[1][1]_i_7_n_0 ;
  wire \s_registers[1][1]_i_9_n_0 ;
  wire \s_registers[1][2]_i_4_n_0 ;
  wire \s_registers[1][2]_i_7_n_0 ;
  wire \s_registers[1][3]_i_4_n_0 ;
  wire \s_registers[1][3]_i_7_n_0 ;
  wire \s_registers[1][4]_i_4_n_0 ;
  wire \s_registers[1][4]_i_7_n_0 ;
  wire \s_registers[1][5]_i_2_n_0 ;
  wire \s_registers[1][5]_i_3_n_0 ;
  wire \s_registers[1][5]_i_6_n_0 ;
  wire \s_registers[1][6]_i_2_n_0 ;
  wire \s_registers[1][6]_i_4_n_0 ;
  wire \s_registers[1][6]_i_5_n_0 ;
  wire \s_registers[1][6]_i_8_n_0 ;
  wire \s_registers[1][7]_i_10_n_0 ;
  wire \s_registers[1][7]_i_11_n_0 ;
  wire \s_registers[1][7]_i_3_n_0 ;
  wire \s_registers[1][7]_i_5_n_0 ;
  wire \s_registers[1][7]_i_6_n_0 ;
  wire \s_registers[1][7]_i_7_n_0 ;
  wire [7:0]\s_registers[1][7]_i_8 ;
  wire [7:0]\s_registers[1][7]_i_8_0 ;
  wire \s_registers[1][7]_i_9_n_0 ;
  wire \s_registers_reg[0][7] ;
  wire \s_registers_reg[1][2] ;
  wire \s_registers_reg[1][2]_0 ;
  wire \s_registers_reg[1][2]_i_2_n_0 ;
  wire \s_registers_reg[1][3] ;
  wire \s_registers_reg[1][3]_0 ;
  wire \s_registers_reg[1][3]_i_2_n_0 ;
  wire \s_registers_reg[1][4] ;
  wire \s_registers_reg[1][4]_0 ;
  wire \s_registers_reg[1][4]_i_2_n_0 ;
  wire \s_registers_reg[1][5] ;
  wire \s_registers_reg[1][5]_0 ;
  wire \s_registers_reg[1][5]_1 ;
  wire \s_registers_reg[1][6] ;
  wire [3:0]\s_registers_reg[1][7] ;
  wire \s_registers_reg[1][7]_0 ;
  wire s_stack_en;
  wire s_wait_for_starting_edge;
  wire s_zero;
  wire s_zero_i_2_n_0;
  wire s_zero_i_3_n_0;
  wire s_zero_i_4_n_0;
  wire s_zero_i_5_n_0;
  wire s_zero_i_6_n_0;
  wire s_zero_i_7_n_0;
  wire s_zero_reg;

  assign o_data_bus_0_sn_1 = o_data_bus_0_sp_1;
  assign o_data_bus_1_sn_1 = o_data_bus_1_sp_1;
  assign o_data_bus_6_sn_1 = o_data_bus_6_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0A000AF3)) 
    \FSM_sequential_s_current_state[0]_i_1 
       (.I0(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00002000AAAAAAAA)) 
    \FSM_sequential_s_current_state[0]_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\s_ir_reg[0]_0 ),
        .O(\FSM_sequential_s_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0320)) 
    \FSM_sequential_s_current_state[1]_i_1 
       (.I0(\s_ir_reg[5]_0 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4444444440400044)) 
    \FSM_sequential_s_current_state[2]_i_1 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\s_ir_reg_n_0_[2] ),
        .I4(\s_ir_reg_n_0_[1] ),
        .I5(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_s_current_state[2]_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(\FSM_sequential_s_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry__0_i_1
       (.I0(\s_registers[1][7]_i_8 [7]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [7]),
        .O(\s_registers_reg[1][7] [3]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry__0_i_2
       (.I0(\s_registers[1][7]_i_8 [6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [6]),
        .O(\s_registers_reg[1][7] [2]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry__0_i_3
       (.I0(\s_registers[1][7]_i_8 [5]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [5]),
        .O(\s_registers_reg[1][7] [1]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry__0_i_4
       (.I0(\s_registers[1][7]_i_8 [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [4]),
        .O(\s_registers_reg[1][7] [0]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry_i_1
       (.I0(\s_registers[1][7]_i_8 [3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry_i_2
       (.I0(\s_registers[1][7]_i_8 [2]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0A0A0A08F5F5F5F7)) 
    i__carry_i_3
       (.I0(\s_registers[1][7]_i_8 [1]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hFAFAFAFB05050504)) 
    i__carry_i_4
       (.I0(\s_registers[1][7]_i_8 [0]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[0]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[0]_INST_0_i_1_n_0 ),
        .O(o_data_bus[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[0]_INST_0_i_1 
       (.I0(o_data_bus_0_sn_1),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [0]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [8]),
        .O(\o_data_bus[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[1]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[1]_INST_0_i_1_n_0 ),
        .O(o_data_bus[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[1]_INST_0_i_1 
       (.I0(o_data_bus_1_sn_1),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [1]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [9]),
        .O(\o_data_bus[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[2]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[2]_INST_0_i_1_n_0 ),
        .O(o_data_bus[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[2]_INST_0_i_1 
       (.I0(\s_registers_reg[1][2] ),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [2]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [10]),
        .O(\o_data_bus[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[3]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[3]_INST_0_i_1_n_0 ),
        .O(o_data_bus[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[3]_INST_0_i_1 
       (.I0(\s_registers_reg[1][3] ),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [3]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [11]),
        .O(\o_data_bus[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[4]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[4]_INST_0_i_1_n_0 ),
        .O(o_data_bus[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[4]_INST_0_i_1 
       (.I0(\s_registers_reg[1][4] ),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [4]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [12]),
        .O(\o_data_bus[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[5]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[5]_INST_0_i_1_n_0 ),
        .O(o_data_bus[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[5]_INST_0_i_1 
       (.I0(\s_registers_reg[1][5]_1 ),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [5]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [13]),
        .O(\o_data_bus[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[6]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[6]_INST_0_i_1_n_0 ),
        .O(o_data_bus[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_data_bus[6]_INST_0_i_1 
       (.I0(o_data_bus_6_sn_1),
        .I1(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I2(\o_data_bus[7] [6]),
        .I3(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I4(\o_data_bus[7] [14]),
        .O(\o_data_bus[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF140000000000)) 
    \o_data_bus[7]_INST_0 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .I5(\o_data_bus[7]_INST_0_i_3_n_0 ),
        .O(o_data_bus[7]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \o_data_bus[7]_INST_0_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\s_ir_reg[0]_0 ),
        .O(\s_ir_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000040000040000)) 
    \o_data_bus[7]_INST_0_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(Q[0]),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_ir_reg_n_0_[1] ),
        .O(\o_data_bus[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FFB8B8)) 
    \o_data_bus[7]_INST_0_i_3 
       (.I0(\o_data_bus[7] [7]),
        .I1(\o_data_bus[7]_INST_0_i_5_n_0 ),
        .I2(\o_data_bus[7] [15]),
        .I3(\o_data_bus[7]_0 ),
        .I4(\o_data_bus[7]_INST_0_i_2_n_0 ),
        .O(\o_data_bus[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_data_bus[7]_INST_0_i_4 
       (.I0(Q[0]),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(\s_ir_reg_n_0_[1] ),
        .O(\s_ir_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \o_data_bus[7]_INST_0_i_5 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_ir_reg[5]_0 ),
        .O(\o_data_bus[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h44544544)) 
    o_rw_INST_0
       (.I0(o_rw_0),
        .I1(\s_ir_reg[5]_0 ),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(\s_ir_reg_n_0_[2] ),
        .I4(Q[0]),
        .O(o_rw));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4444444)) 
    \s_addr[0]_i_2 
       (.I0(\s_addr[13]_i_2_n_0 ),
        .I1(\s_addr_reg[15] [0]),
        .I2(\s_addr_reg[0] ),
        .I3(s_counter_reg[0]),
        .I4(\s_ir_reg[5]_0 ),
        .I5(\s_addr[0]_i_5_n_0 ),
        .O(\s_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFBF10001010)) 
    \s_addr[0]_i_3 
       (.I0(\s_ir_reg[5]_2 ),
        .I1(s_counter_reg[0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\s_addr_reg[15] [0]),
        .O(\s_addr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5010001055555555)) 
    \s_addr[0]_i_5 
       (.I0(\s_addr_reg[1] ),
        .I1(\s_addr[1]_i_6_n_0 ),
        .I2(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I3(s_counter_reg[0]),
        .I4(\s_addr[1]_i_7_n_0 ),
        .I5(\s_addr[0]_i_6_n_0 ),
        .O(\s_addr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7777F7FFF7FFF7FF)) 
    \s_addr[0]_i_6 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I2(\s_ir_reg[0]_0 ),
        .I3(\o_data_bus[7] [0]),
        .I4(\s_ir_reg[5]_0 ),
        .I5(s_counter_reg[0]),
        .O(\s_addr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h770F777755005555)) 
    \s_addr[10]_i_1 
       (.I0(\s_addr[10]_i_2_n_0 ),
        .I1(\s_addr[13]_i_2_n_0 ),
        .I2(\s_ir_reg[7]_4 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I5(\s_addr_reg[15] [10]),
        .O(\FSM_sequential_s_current_state_reg[2] [9]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \s_addr[10]_i_2 
       (.I0(\s_ir_reg[0]_0 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\o_data_bus[7] [10]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .O(\s_addr[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_addr[11]_i_1 
       (.I0(\s_addr[12]_i_2_n_0 ),
        .I1(\o_data_bus[7] [11]),
        .I2(\s_addr[14]_i_2_n_0 ),
        .I3(\s_addr_reg[15] [11]),
        .O(\FSM_sequential_s_current_state_reg[2] [10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_addr[12]_i_1 
       (.I0(\s_addr[12]_i_2_n_0 ),
        .I1(\o_data_bus[7] [12]),
        .I2(\s_addr[14]_i_2_n_0 ),
        .I3(\s_addr_reg[15] [12]),
        .O(\FSM_sequential_s_current_state_reg[2] [11]));
  LUT6 #(
    .INIT(64'hFFFFD555FFFFFFFF)) 
    \s_addr[12]_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F0055003F0F3F0F)) 
    \s_addr[13]_i_1 
       (.I0(\s_ir_reg[7]_4 ),
        .I1(\s_addr[13]_i_2_n_0 ),
        .I2(\s_addr[13]_i_3_n_0 ),
        .I3(\s_addr_reg[15] [13]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .O(\FSM_sequential_s_current_state_reg[2] [12]));
  LUT6 #(
    .INIT(64'h44444444FF005050)) 
    \s_addr[13]_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I2(\s_addr[15]_i_7_n_0 ),
        .I3(\s_ir_reg[5]_0 ),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFFFFFFFFFFFF)) 
    \s_addr[13]_i_3 
       (.I0(\s_ir_reg_n_0_[1] ),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\o_data_bus[7] [13]),
        .O(\s_addr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h4444F444)) 
    \s_addr[14]_i_1 
       (.I0(\s_addr[14]_i_2_n_0 ),
        .I1(\s_addr_reg[15] [14]),
        .I2(\o_data_bus[7] [14]),
        .I3(\s_addr_reg[14] ),
        .I4(\s_ir_reg[0]_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [13]));
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    \s_addr[14]_i_2 
       (.I0(\s_ir_reg[5]_2 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\s_addr[13]_i_2_n_0 ),
        .O(\s_addr[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \s_addr[15]_i_1 
       (.I0(\s_ir_reg_n_0_[1] ),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(s_wait_for_starting_edge),
        .O(\s_ir_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hFF3BCC08)) 
    \s_addr[15]_i_2 
       (.I0(\s_ir_reg[7]_4 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\s_addr_reg[15] [15]),
        .I4(\s_addr[15]_i_5_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \s_addr[15]_i_4 
       (.I0(\s_addr_reg[1] ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\s_ir_reg[7]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEFFFEA)) 
    \s_addr[15]_i_5 
       (.I0(\s_addr[15]_i_6_n_0 ),
        .I1(\s_ir_reg[5]_0 ),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(\s_addr_reg[15] [15]),
        .I4(\s_addr[15]_i_7_n_0 ),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E000E0E0)) 
    \s_addr[15]_i_6 
       (.I0(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I1(\s_addr_reg[15] [15]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\o_data_bus[7] [15]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\s_ir_reg[0]_0 ),
        .O(\s_addr[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h20000F00)) 
    \s_addr[15]_i_7 
       (.I0(Q[0]),
        .I1(\s_ir_reg[5]_2 ),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(\s_ir_reg_n_0_[2] ),
        .I4(Q[1]),
        .O(\s_addr[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88CFBBFF88038803)) 
    \s_addr[1]_i_1 
       (.I0(\s_addr[1]_i_2_n_0 ),
        .I1(\s_addr_reg[8] ),
        .I2(\s_addr[1]_i_3_n_0 ),
        .I3(\s_addr_reg[1] ),
        .I4(\s_addr[13]_i_2_n_0 ),
        .I5(\s_addr_reg[15] [1]),
        .O(\FSM_sequential_s_current_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFF9FFFF00090000)) 
    \s_addr[1]_i_2 
       (.I0(s_counter_reg[1]),
        .I1(s_counter_reg[0]),
        .I2(\s_addr[7]_i_9_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\s_addr_reg[15] [1]),
        .O(\s_addr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A2A8AAAAAAAA)) 
    \s_addr[1]_i_3 
       (.I0(\s_addr[1]_i_5_n_0 ),
        .I1(s_counter_reg[0]),
        .I2(\s_addr[1]_i_6_n_0 ),
        .I3(s_counter_reg[1]),
        .I4(\s_addr[1]_i_7_n_0 ),
        .I5(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .O(\s_addr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7FFFFFFFF)) 
    \s_addr[1]_i_5 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\o_data_bus[7] [1]),
        .I2(\s_ir_reg[0]_0 ),
        .I3(s_counter_reg[1]),
        .I4(\s_ir_reg[5]_0 ),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(\s_addr[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFFFFF3F)) 
    \s_addr[1]_i_6 
       (.I0(\s_ir_reg[5]_2 ),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(Q[1]),
        .O(\s_addr[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_addr[1]_i_7 
       (.I0(Q[0]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(\s_addr[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F200F200F2)) 
    \s_addr[2]_i_2 
       (.I0(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I1(\s_addr_reg[2]_0 ),
        .I2(\s_addr[2]_i_5_n_0 ),
        .I3(\s_addr_reg[1] ),
        .I4(\s_addr_reg[15] [2]),
        .I5(\s_addr[4]_i_4_n_0 ),
        .O(\s_addr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000CFC00000)) 
    \s_addr[2]_i_5 
       (.I0(\s_addr[2]_i_8_n_0 ),
        .I1(s_counter_reg[2]),
        .I2(\s_ir_reg[5]_0 ),
        .I3(\s_addr_reg[15] [2]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \s_addr[2]_i_8 
       (.I0(\o_data_bus[7] [2]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(Q[0]),
        .O(\s_addr[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F300FB00F3)) 
    \s_addr[3]_i_2 
       (.I0(\s_addr[3]_i_4_n_0 ),
        .I1(\s_addr[3]_i_5_n_0 ),
        .I2(\s_addr[3]_i_6_n_0 ),
        .I3(\s_addr_reg[1] ),
        .I4(\s_addr_reg[15] [3]),
        .I5(\s_addr[4]_i_4_n_0 ),
        .O(\s_addr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_addr[3]_i_4 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\s_ir_reg[5]_0 ),
        .O(\s_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7FFFFFFFF)) 
    \s_addr[3]_i_5 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\o_data_bus[7] [3]),
        .I2(\s_ir_reg[0]_0 ),
        .I3(s_counter_reg[3]),
        .I4(\s_ir_reg[5]_0 ),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(\s_addr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0202A202A2A2A202)) 
    \s_addr[3]_i_6 
       (.I0(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I1(\s_addr[3]_i_7_n_0 ),
        .I2(Q[1]),
        .I3(\s_addr_reg[15] [3]),
        .I4(\s_counter[7]_i_2_n_0 ),
        .I5(\s_addr[3]_i_6_0 ),
        .O(\s_addr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7545454575457575)) 
    \s_addr[3]_i_7 
       (.I0(\s_addr_reg[15] [3]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(\s_addr[3]_i_6_0 ),
        .I4(Q[0]),
        .I5(s_counter_reg[3]),
        .O(\s_addr[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F4F407F704F40)) 
    \s_addr[4]_i_1 
       (.I0(\s_addr_reg[4] ),
        .I1(\s_ir_reg[7]_4 ),
        .I2(\s_addr_reg[8] ),
        .I3(\s_addr[4]_i_3_n_0 ),
        .I4(\s_addr_reg[15] [4]),
        .I5(\s_addr[4]_i_4_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4444CC45)) 
    \s_addr[4]_i_3 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\s_addr[4]_i_5_n_0 ),
        .I2(\s_addr[4]_i_6_n_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCF44)) 
    \s_addr[4]_i_4 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I2(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000CFC00000)) 
    \s_addr[4]_i_5 
       (.I0(\s_addr[4]_i_7_n_0 ),
        .I1(s_counter_reg[4]),
        .I2(\s_ir_reg[5]_0 ),
        .I3(\s_addr_reg[15] [4]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80BF8FBF80BF80B0)) 
    \s_addr[4]_i_6 
       (.I0(\s_addr_reg[4] ),
        .I1(\s_counter[7]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\s_addr_reg[15] [4]),
        .I4(\s_ir_reg[1]_0 ),
        .I5(\s_addr[4]_i_3_0 ),
        .O(\s_addr[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \s_addr[4]_i_7 
       (.I0(\o_data_bus[7] [4]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(Q[0]),
        .O(\s_addr[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF301)) 
    \s_addr[5]_i_2 
       (.I0(\s_addr[5]_i_4_n_0 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I4(\s_addr[5]_i_5_n_0 ),
        .I5(\s_addr[5]_i_6_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[0] ));
  LUT6 #(
    .INIT(64'hCFCFCFCFFFFFCC55)) 
    \s_addr[5]_i_4 
       (.I0(s_counter_reg[5]),
        .I1(\s_addr[5]_i_2_0 ),
        .I2(\s_counter[7]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\s_ir_reg[1]_0 ),
        .I5(Q[1]),
        .O(\s_addr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC008000800080)) 
    \s_addr[5]_i_5 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\o_data_bus[7] [5]),
        .I3(\s_ir_reg[0]_0 ),
        .I4(s_counter_reg[5]),
        .I5(\s_ir_reg[5]_0 ),
        .O(\s_addr[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AA202000AA2A2A)) 
    \s_addr[5]_i_6 
       (.I0(\s_addr_reg[15] [5]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I5(\s_addr[15]_i_7_n_0 ),
        .O(\s_addr[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEEAFFFFAEEA)) 
    \s_addr[6]_i_1 
       (.I0(\s_addr[6]_i_2_n_0 ),
        .I1(\s_addr[6]_i_3_n_0 ),
        .I2(\s_addr_reg[6] ),
        .I3(s_counter_reg[6]),
        .I4(\s_addr_reg[15] [6]),
        .I5(\s_addr[7]_i_6_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [5]));
  LUT6 #(
    .INIT(64'hAA000000AAABAAAB)) 
    \s_addr[6]_i_2 
       (.I0(\s_addr[6]_i_5_n_0 ),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I2(\s_addr[6]_i_6_n_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I4(\s_addr_reg[15] [6]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .O(\s_addr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \s_addr[6]_i_3 
       (.I0(\s_addr_reg[7] ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\s_addr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAEEEAAEAAAEA)) 
    \s_addr[6]_i_5 
       (.I0(\s_addr[6]_i_7_n_0 ),
        .I1(\s_addr_reg[15] [6]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I3(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .I4(\s_ir_reg[5]_0 ),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(\s_addr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE0EBB0BBB0B)) 
    \s_addr[6]_i_6 
       (.I0(\s_addr[1]_i_6_n_0 ),
        .I1(\s_addr_reg[6] ),
        .I2(\s_addr_reg[15] [6]),
        .I3(\s_addr[15]_i_7_n_0 ),
        .I4(\s_addr[1]_i_7_n_0 ),
        .I5(s_counter_reg[6]),
        .O(\s_addr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF0FFF0)) 
    \s_addr[6]_i_7 
       (.I0(s_counter_reg[6]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(\s_addr[6]_i_8_n_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .O(\s_addr[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0080808080808080)) 
    \s_addr[6]_i_8 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\o_data_bus[7] [6]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(Q[0]),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_ir_reg_n_0_[1] ),
        .O(\s_addr[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAFFFFAABA)) 
    \s_addr[7]_i_1 
       (.I0(\s_addr[7]_i_2_n_0 ),
        .I1(\s_ir_reg[5]_2 ),
        .I2(\s_addr_reg[7] ),
        .I3(\s_addr_reg[7]_0 ),
        .I4(\s_addr_reg[15] [7]),
        .I5(\s_addr[7]_i_6_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [6]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEFAFEAAA)) 
    \s_addr[7]_i_10 
       (.I0(\s_addr[7]_i_12_n_0 ),
        .I1(\s_ir_reg[5]_0 ),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(s_counter_reg[7]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44444444CCCC00F0)) 
    \s_addr[7]_i_11 
       (.I0(\s_counter[7]_i_2_n_0 ),
        .I1(\s_addr_reg[15] [7]),
        .I2(s_counter_reg[7]),
        .I3(Q[0]),
        .I4(\s_ir_reg[1]_0 ),
        .I5(Q[1]),
        .O(\s_addr[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0080808080808080)) 
    \s_addr[7]_i_12 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I1(\o_data_bus[7] [7]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I3(Q[0]),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_ir_reg_n_0_[1] ),
        .O(\s_addr[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D050505055)) 
    \s_addr[7]_i_2 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\s_addr_reg[15] [7]),
        .I2(\s_addr[7]_i_7_n_0 ),
        .I3(\s_addr[7]_i_8_n_0 ),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(\s_addr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \s_addr[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\s_ir_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFFFFFFF)) 
    \s_addr[7]_i_6 
       (.I0(\s_addr[7]_i_9_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .O(\s_addr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAEEEEAEAA)) 
    \s_addr[7]_i_7 
       (.I0(\s_addr[7]_i_10_n_0 ),
        .I1(\s_addr_reg[15] [7]),
        .I2(\s_ir_reg[5]_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I5(\FSM_sequential_s_current_state[0]_i_2_n_0 ),
        .O(\s_addr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3131313133333033)) 
    \s_addr[7]_i_8 
       (.I0(\s_counter[7]_i_2_n_0 ),
        .I1(\s_addr[7]_i_11_n_0 ),
        .I2(\s_addr_reg[7]_0 ),
        .I3(Q[0]),
        .I4(\s_ir_reg[1]_0 ),
        .I5(Q[1]),
        .O(\s_addr[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_addr[7]_i_9 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\s_addr[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4700773347004700)) 
    \s_addr[8]_i_1 
       (.I0(\s_ir_reg[7]_4 ),
        .I1(\s_addr_reg[8] ),
        .I2(\s_addr[13]_i_2_n_0 ),
        .I3(\s_addr_reg[15] [8]),
        .I4(\s_addr[12]_i_2_n_0 ),
        .I5(\o_data_bus[7] [8]),
        .O(\FSM_sequential_s_current_state_reg[2] [7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_addr[9]_i_1 
       (.I0(\s_addr[12]_i_2_n_0 ),
        .I1(\o_data_bus[7] [9]),
        .I2(\s_addr[14]_i_2_n_0 ),
        .I3(\s_addr_reg[15] [9]),
        .O(\FSM_sequential_s_current_state_reg[2] [8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[10]_i_1 
       (.I0(plusOp[2]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(i_data_bus[2]),
        .O(\i_data_bus[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[11]_i_1 
       (.I0(plusOp[3]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(i_data_bus[3]),
        .O(\i_data_bus[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[12]_i_1 
       (.I0(plusOp[4]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(i_data_bus[4]),
        .O(\i_data_bus[4] [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1810)) 
    \s_addr_new[7]_i_1 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\s_ir_reg[5]_0 ),
        .O(\FSM_sequential_s_current_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[8]_i_1 
       (.I0(plusOp[0]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(i_data_bus[0]),
        .O(\i_data_bus[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_addr_new[9]_i_1 
       (.I0(plusOp[1]),
        .I1(\s_ir_reg[5]_0 ),
        .I2(i_data_bus[1]),
        .O(\i_data_bus[4] [1]));
  MUXF7 \s_addr_reg[0]_i_1 
       (.I0(\s_addr[0]_i_2_n_0 ),
        .I1(\s_addr[0]_i_3_n_0 ),
        .O(\FSM_sequential_s_current_state_reg[2] [0]),
        .S(\s_addr_reg[8] ));
  MUXF7 \s_addr_reg[2]_i_1 
       (.I0(\s_addr[2]_i_2_n_0 ),
        .I1(\s_addr_reg[2] ),
        .O(\FSM_sequential_s_current_state_reg[2] [2]),
        .S(\s_addr_reg[8] ));
  MUXF7 \s_addr_reg[3]_i_1 
       (.I0(\s_addr[3]_i_2_n_0 ),
        .I1(\s_addr_reg[3] ),
        .O(\FSM_sequential_s_current_state_reg[2] [3]),
        .S(\s_addr_reg[8] ));
  LUT6 #(
    .INIT(64'h0000000026000000)) 
    s_carry_i_3
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(s_carry0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h32)) 
    s_carry_i_6
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(\s_ir_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000B00)) 
    s_carry_i_7
       (.I0(\s_registers[1][7]_i_8_0 [7]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(CO),
        .O(\s_registers_reg[0][7] ));
  LUT5 #(
    .INIT(32'hAAAA5565)) 
    s_counter0_carry_i_5
       (.I0(s_counter_reg[1]),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(s_counter0_carry_i_6_n_0),
        .O(\s_counter_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    s_counter0_carry_i_6
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(s_counter0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \s_counter[0]_i_1 
       (.I0(\o_data_bus[7] [0]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(\s_addr_reg[15] [0]),
        .O(\i_data_bus[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[10]_i_1 
       (.I0(i_data_bus[2]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[9]),
        .O(\i_data_bus[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[11]_i_1 
       (.I0(i_data_bus[3]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[10]),
        .O(\i_data_bus[7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[12]_i_1 
       (.I0(i_data_bus[4]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[11]),
        .O(\i_data_bus[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[13]_i_1 
       (.I0(i_data_bus[5]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[12]),
        .O(\i_data_bus[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[14]_i_1 
       (.I0(i_data_bus[6]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[13]),
        .O(\i_data_bus[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \s_counter[15]_i_1 
       (.I0(o_rw_0),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(s_wait_for_starting_edge),
        .O(\s_ir_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFB08000CFB08F3FF)) 
    \s_counter[15]_i_10 
       (.I0(s_zero),
        .I1(\s_ir_reg[5]_2 ),
        .I2(\s_ir_reg[5]_1 ),
        .I3(s_negative),
        .I4(\s_counter[15]_i_11_n_0 ),
        .I5(s_overflow),
        .O(\s_counter[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF3B3)) 
    \s_counter[15]_i_11 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\s_counter[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[15]_i_2 
       (.I0(i_data_bus[7]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[14]),
        .O(\i_data_bus[7] [15]));
  LUT6 #(
    .INIT(64'h00EA000000000000)) 
    \s_counter[15]_i_3 
       (.I0(\s_counter_reg[15]_i_5_n_0 ),
        .I1(\s_counter[15]_i_6_n_0 ),
        .I2(\s_counter[15]_i_7_n_0 ),
        .I3(\s_counter[15]_i_8_n_0 ),
        .I4(\s_ir_reg[0]_0 ),
        .I5(\s_addr_reg[14] ),
        .O(\s_counter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_counter[15]_i_6 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\s_counter[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_counter[15]_i_7 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\s_counter[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \s_counter[15]_i_8 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(s_overflow),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\s_counter[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFC4FFF7F3F733)) 
    \s_counter[15]_i_9 
       (.I0(s_zero),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(s_carry),
        .O(\s_counter[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[1]_i_1 
       (.I0(\o_data_bus[7] [1]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[0]),
        .O(\i_data_bus[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[2]_i_1 
       (.I0(\o_data_bus[7] [2]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[1]),
        .O(\i_data_bus[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[3]_i_1 
       (.I0(\o_data_bus[7] [3]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[2]),
        .O(\i_data_bus[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[4]_i_1 
       (.I0(\o_data_bus[7] [4]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[3]),
        .O(\i_data_bus[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[5]_i_1 
       (.I0(\o_data_bus[7] [5]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[4]),
        .O(\i_data_bus[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[6]_i_1 
       (.I0(\o_data_bus[7] [6]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[5]),
        .O(\i_data_bus[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[7]_i_1 
       (.I0(\o_data_bus[7] [7]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[6]),
        .O(\i_data_bus[7] [7]));
  LUT6 #(
    .INIT(64'h00AA00F300F3AA00)) 
    \s_counter[7]_i_1__0 
       (.I0(\s_counter[7]_i_2_n_0 ),
        .I1(\s_ir_reg[1]_0 ),
        .I2(\s_ir_reg[5]_0 ),
        .I3(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I4(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I5(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .O(s_stack_en));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \s_counter[7]_i_2 
       (.I0(\s_ir_reg[0]_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\s_counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \s_counter[7]_i_3 
       (.I0(\s_ir_reg_n_0_[1] ),
        .I1(\s_ir_reg_n_0_[2] ),
        .O(\s_ir_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[8]_i_1 
       (.I0(i_data_bus[0]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[7]),
        .O(\i_data_bus[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_counter[9]_i_1 
       (.I0(i_data_bus[1]),
        .I1(\s_counter[15]_i_3_n_0 ),
        .I2(s_counter[8]),
        .O(\i_data_bus[7] [9]));
  MUXF7 \s_counter_reg[15]_i_5 
       (.I0(\s_counter[15]_i_9_n_0 ),
        .I1(\s_counter[15]_i_10_n_0 ),
        .O(\s_counter_reg[15]_i_5_n_0 ),
        .S(\s_registers[1][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \s_ir[7]_i_1 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I1(\FSM_sequential_s_current_state[2]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\s_ir_reg_n_0_[2] ),
        .I4(\s_ir_reg_n_0_[1] ),
        .I5(s_wait_for_starting_edge),
        .O(s_is_loading));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[0] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[1] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[1]),
        .Q(\s_ir_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[2] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[2]),
        .Q(\s_ir_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[3] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[3]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[4] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[4]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[5] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[5]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[6] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[6]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \s_ir_reg[7] 
       (.C(i_clk),
        .CE(s_is_loading),
        .CLR(\s_ir_reg[0]_2 ),
        .D(i_data_bus[7]),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_negative_i_1
       (.I0(\i_data_bus[7]_0 [7]),
        .I1(s_negative0),
        .I2(s_negative),
        .O(s_negative_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF0F1)) 
    s_overflow_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\s_ir_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000088808880888)) 
    \s_registers[0][7]_i_1 
       (.I0(\s_registers[1][7]_i_3_n_0 ),
        .I1(s_negative0),
        .I2(Q[5]),
        .I3(\s_registers[1][7]_i_5_n_0 ),
        .I4(\s_registers[1][7]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\s_ir_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \s_registers[1][0]_i_1 
       (.I0(\s_registers[1][0]_i_2_n_0 ),
        .I1(\s_registers[1][0]_i_3_n_0 ),
        .I2(\s_registers[1][7]_i_5_n_0 ),
        .I3(\s_registers[1][0]_i_4_n_0 ),
        .I4(\s_registers[1][0]_i_5_n_0 ),
        .I5(\s_registers[1][0]_i_6_n_0 ),
        .O(\i_data_bus[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \s_registers[1][0]_i_2 
       (.I0(o_data_bus_0_sn_1),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\s_registers[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A88800008888)) 
    \s_registers[1][0]_i_3 
       (.I0(Q[4]),
        .I1(\s_registers[1][0]_i_7_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(\s_registers[1][7]_i_8_0 [1]),
        .O(\s_registers[1][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004040404)) 
    \s_registers[1][0]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(data2[0]),
        .I4(Q[2]),
        .I5(\s_registers[1][0]_i_8_n_0 ),
        .O(\s_registers[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00001000FFFF1011)) 
    \s_registers[1][0]_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(O[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(\s_registers[1][7]_i_8_0 [0]),
        .O(\s_registers[1][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \s_registers[1][0]_i_6 
       (.I0(i_data_bus[0]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(\s_registers[1][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F3FFFFF1)) 
    \s_registers[1][0]_i_7 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(\s_registers[1][7]_i_8 [0]),
        .I4(\s_registers[1][7]_i_8_0 [0]),
        .I5(Q[3]),
        .O(\s_registers[1][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][0]_i_8 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(\s_registers[1][7]_i_8 [0]),
        .I3(\s_registers[1][7]_i_8_0 [0]),
        .O(\s_registers[1][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBABABBBA)) 
    \s_registers[1][1]_i_1 
       (.I0(\s_registers[1][1]_i_2_n_0 ),
        .I1(\s_registers[1][1]_i_3_n_0 ),
        .I2(\s_registers[1][1]_i_4_n_0 ),
        .I3(\s_registers[1][1]_i_5_n_0 ),
        .I4(\s_registers[1][1]_i_6_n_0 ),
        .I5(\s_registers[1][7]_i_5_n_0 ),
        .O(\i_data_bus[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \s_registers[1][1]_i_2 
       (.I0(i_data_bus[1]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(\s_registers[1][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \s_registers[1][1]_i_3 
       (.I0(o_data_bus_1_sn_1),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\s_registers[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF5F8FA)) 
    \s_registers[1][1]_i_4 
       (.I0(\s_registers[1][7]_i_8 [1]),
        .I1(\s_registers[1][7]_i_9_n_0 ),
        .I2(\s_ir_reg[5]_1 ),
        .I3(\s_ir_reg[7]_2 ),
        .I4(\s_registers[1][7]_i_8_0 [1]),
        .I5(\s_registers[1][1]_i_7_n_0 ),
        .O(\s_registers[1][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00EAFFEFFFEF00EA)) 
    \s_registers[1][1]_i_5 
       (.I0(Q[3]),
        .I1(O[1]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(\s_registers[1][7]_i_8_0 [1]),
        .I5(\s_registers[1][7]_i_8_0 [0]),
        .O(\s_registers[1][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3232223222222222)) 
    \s_registers[1][1]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(data2[1]),
        .I4(Q[2]),
        .I5(\s_registers[1][1]_i_9_n_0 ),
        .O(\s_registers[1][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1D00FFFFFFFF)) 
    \s_registers[1][1]_i_7 
       (.I0(\s_registers[1][7]_i_8_0 [0]),
        .I1(Q[2]),
        .I2(\s_registers[1][7]_i_8_0 [2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\s_registers[1][1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][1]_i_9 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(\s_registers[1][7]_i_8 [1]),
        .I3(\s_registers[1][7]_i_8_0 [1]),
        .O(\s_registers[1][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBCB08083808)) 
    \s_registers[1][2]_i_1 
       (.I0(i_data_bus[2]),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(\s_registers_reg[1][2] ),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_registers_reg[1][2]_i_2_n_0 ),
        .O(\i_data_bus[7]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFE2FF0000E200)) 
    \s_registers[1][2]_i_4 
       (.I0(\s_registers[1][7]_i_8_0 [1]),
        .I1(Q[2]),
        .I2(\s_registers[1][7]_i_8_0 [3]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\s_registers[1][2]_i_7_n_0 ),
        .O(\s_registers[1][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFF0A0A0A08)) 
    \s_registers[1][2]_i_7 
       (.I0(\s_registers[1][7]_i_8 [2]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [2]),
        .O(\s_registers[1][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBCB08083808)) 
    \s_registers[1][3]_i_1 
       (.I0(i_data_bus[3]),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(\s_registers_reg[1][3] ),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_registers_reg[1][3]_i_2_n_0 ),
        .O(\i_data_bus[7]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFE2FF0000E200)) 
    \s_registers[1][3]_i_4 
       (.I0(\s_registers[1][7]_i_8_0 [2]),
        .I1(Q[2]),
        .I2(\s_registers[1][7]_i_8_0 [4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\s_registers[1][3]_i_7_n_0 ),
        .O(\s_registers[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFF0A0A0A08)) 
    \s_registers[1][3]_i_7 
       (.I0(\s_registers[1][7]_i_8 [3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [3]),
        .O(\s_registers[1][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBCB08083808)) 
    \s_registers[1][4]_i_1 
       (.I0(i_data_bus[4]),
        .I1(Q[0]),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(\s_registers_reg[1][4] ),
        .I4(\s_ir_reg_n_0_[2] ),
        .I5(\s_registers_reg[1][4]_i_2_n_0 ),
        .O(\i_data_bus[7]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFFE2FF0000E200)) 
    \s_registers[1][4]_i_4 
       (.I0(\s_registers[1][7]_i_8_0 [3]),
        .I1(Q[2]),
        .I2(\s_registers[1][7]_i_8_0 [5]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\s_registers[1][4]_i_7_n_0 ),
        .O(\s_registers[1][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFF0A0A0A08)) 
    \s_registers[1][4]_i_7 
       (.I0(\s_registers[1][7]_i_8 [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [4]),
        .O(\s_registers[1][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \s_registers[1][5]_i_1 
       (.I0(i_data_bus[5]),
        .I1(\s_registers[1][7]_i_6_n_0 ),
        .I2(\s_registers_reg[1][5]_1 ),
        .I3(\s_registers[1][7]_i_5_n_0 ),
        .I4(\s_registers[1][5]_i_2_n_0 ),
        .I5(\s_registers[1][5]_i_3_n_0 ),
        .O(\i_data_bus[7]_0 [5]));
  LUT6 #(
    .INIT(64'h5101010151515151)) 
    \s_registers[1][5]_i_2 
       (.I0(\s_registers[1][7]_i_9_n_0 ),
        .I1(\s_registers_reg[1][5] ),
        .I2(\s_ir_reg[5]_1 ),
        .I3(data2[2]),
        .I4(\s_ir_reg[7]_2 ),
        .I5(\s_registers_reg[1][5]_0 ),
        .O(\s_registers[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \s_registers[1][5]_i_3 
       (.I0(\s_registers[1][5]_i_6_n_0 ),
        .I1(\s_ir_reg[5]_1 ),
        .I2(\s_registers[1][7]_i_8_0 [6]),
        .I3(\s_ir_reg[7]_2 ),
        .I4(\s_registers[1][7]_i_8_0 [4]),
        .I5(\s_registers[1][7]_i_9_n_0 ),
        .O(\s_registers[1][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFF0A0A0A08)) 
    \s_registers[1][5]_i_6 
       (.I0(\s_registers[1][7]_i_8 [5]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [5]),
        .O(\s_registers[1][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B8B8BB)) 
    \s_registers[1][6]_i_1 
       (.I0(i_data_bus[6]),
        .I1(\s_registers[1][7]_i_6_n_0 ),
        .I2(\s_registers[1][6]_i_2_n_0 ),
        .I3(\s_registers[1][7]_i_9_n_0 ),
        .I4(\s_registers_reg[1][6] ),
        .I5(\s_registers[1][6]_i_4_n_0 ),
        .O(\i_data_bus[7]_0 [6]));
  LUT6 #(
    .INIT(64'h0404FF0404040404)) 
    \s_registers[1][6]_i_2 
       (.I0(Q[0]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\s_registers[1][6]_i_5_n_0 ),
        .O(\s_registers[1][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_registers[1][6]_i_4 
       (.I0(Q[0]),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(\s_ir_reg_n_0_[2] ),
        .I3(o_data_bus_6_sn_1),
        .O(\s_registers[1][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE2FF0000E200)) 
    \s_registers[1][6]_i_5 
       (.I0(\s_registers[1][7]_i_8_0 [5]),
        .I1(Q[2]),
        .I2(\s_registers[1][7]_i_8_0 [7]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\s_registers[1][6]_i_8_n_0 ),
        .O(\s_registers[1][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFF0A0A0A08)) 
    \s_registers[1][6]_i_8 
       (.I0(\s_registers[1][7]_i_8 [6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_8_0 [6]),
        .O(\s_registers[1][6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    \s_registers[1][7]_i_1 
       (.I0(\s_registers[1][7]_i_3_n_0 ),
        .I1(s_negative0),
        .I2(Q[5]),
        .I3(\s_registers[1][7]_i_5_n_0 ),
        .I4(\s_registers[1][7]_i_6_n_0 ),
        .I5(Q[3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \s_registers[1][7]_i_10 
       (.I0(\o_data_bus[7]_0 ),
        .I1(\s_ir_reg_n_0_[2] ),
        .I2(\s_ir_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\s_registers[1][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FF99FF15)) 
    \s_registers[1][7]_i_11 
       (.I0(\s_registers[1][7]_i_8_0 [7]),
        .I1(\s_registers[1][7]_i_8 [7]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\s_registers[1][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0F0E000000000000)) 
    \s_registers[1][7]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\s_registers[1][7]_i_8 [7]),
        .I5(\s_registers[1][7]_i_8_0 [7]),
        .O(\s_ir_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_registers[1][7]_i_13 
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(\s_ir_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_registers[1][7]_i_15 
       (.I0(Q[5]),
        .I1(Q[2]),
        .O(\s_ir_reg[7]_2 ));
  LUT6 #(
    .INIT(64'hFF540000FF54FF54)) 
    \s_registers[1][7]_i_2 
       (.I0(\s_registers[1][7]_i_7_n_0 ),
        .I1(\s_registers_reg[1][7]_0 ),
        .I2(\s_registers[1][7]_i_9_n_0 ),
        .I3(\s_registers[1][7]_i_10_n_0 ),
        .I4(i_data_bus[7]),
        .I5(\s_registers[1][7]_i_6_n_0 ),
        .O(\i_data_bus[7]_0 [7]));
  LUT6 #(
    .INIT(64'h9F00009F9F9F9F9F)) 
    \s_registers[1][7]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\s_registers[1][7]_i_5_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\s_registers[1][7]_i_6_n_0 ),
        .O(\s_registers[1][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00262600)) 
    \s_registers[1][7]_i_4 
       (.I0(\FSM_sequential_s_current_state_reg[2]_0 [0]),
        .I1(\FSM_sequential_s_current_state_reg[2]_0 [1]),
        .I2(\FSM_sequential_s_current_state_reg[2]_0 [2]),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(Q[0]),
        .O(s_negative0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_registers[1][7]_i_5 
       (.I0(\s_ir_reg_n_0_[2] ),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(Q[0]),
        .O(\s_registers[1][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_registers[1][7]_i_6 
       (.I0(Q[0]),
        .I1(\s_ir_reg_n_0_[1] ),
        .O(\s_registers[1][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAAAAAAAAAA)) 
    \s_registers[1][7]_i_7 
       (.I0(\s_registers[1][7]_i_5_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\s_registers[1][7]_i_8_0 [6]),
        .I4(\s_registers[1][7]_i_9_n_0 ),
        .I5(\s_registers[1][7]_i_11_n_0 ),
        .O(\s_registers[1][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_registers[1][7]_i_9 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\s_registers[1][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000044404440444)) 
    \s_registers[2][7]_i_1 
       (.I0(\s_registers[1][7]_i_3_n_0 ),
        .I1(s_negative0),
        .I2(Q[5]),
        .I3(\s_registers[1][7]_i_5_n_0 ),
        .I4(\s_registers[1][7]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\s_ir_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h4444400040004000)) 
    \s_registers[3][7]_i_1 
       (.I0(\s_registers[1][7]_i_3_n_0 ),
        .I1(s_negative0),
        .I2(Q[5]),
        .I3(\s_registers[1][7]_i_5_n_0 ),
        .I4(\s_registers[1][7]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\s_ir_reg[7]_1 ));
  MUXF7 \s_registers_reg[1][2]_i_2 
       (.I0(\s_registers_reg[1][2]_0 ),
        .I1(\s_registers[1][2]_i_4_n_0 ),
        .O(\s_registers_reg[1][2]_i_2_n_0 ),
        .S(\s_registers[1][7]_i_9_n_0 ));
  MUXF7 \s_registers_reg[1][3]_i_2 
       (.I0(\s_registers_reg[1][3]_0 ),
        .I1(\s_registers[1][3]_i_4_n_0 ),
        .O(\s_registers_reg[1][3]_i_2_n_0 ),
        .S(\s_registers[1][7]_i_9_n_0 ));
  MUXF7 \s_registers_reg[1][4]_i_2 
       (.I0(\s_registers_reg[1][4]_0 ),
        .I1(\s_registers[1][4]_i_4_n_0 ),
        .O(\s_registers_reg[1][4]_i_2_n_0 ),
        .S(\s_registers[1][7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    s_zero_i_1
       (.I0(s_zero_i_2_n_0),
        .I1(s_zero_i_3_n_0),
        .I2(s_zero_i_4_n_0),
        .I3(\i_data_bus[7]_0 [5]),
        .I4(s_negative0),
        .I5(s_zero),
        .O(s_zero_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_zero_i_2
       (.I0(\i_data_bus[7]_0 [7]),
        .I1(\i_data_bus[7]_0 [6]),
        .O(s_zero_i_2_n_0));
  LUT6 #(
    .INIT(64'hFAFFFAFAFACCFAFA)) 
    s_zero_i_3
       (.I0(s_zero_i_5_n_0),
        .I1(i_data_bus[3]),
        .I2(s_zero_i_6_n_0),
        .I3(\s_ir_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(i_data_bus[2]),
        .O(s_zero_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA8A)) 
    s_zero_i_4
       (.I0(s_zero_i_7_n_0),
        .I1(\s_ir_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(i_data_bus[4]),
        .I4(\i_data_bus[7]_0 [0]),
        .I5(\i_data_bus[7]_0 [1]),
        .O(s_zero_i_4_n_0));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    s_zero_i_5
       (.I0(\s_registers_reg[1][3] ),
        .I1(\s_registers[1][7]_i_5_n_0 ),
        .I2(\s_registers[1][3]_i_4_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\s_registers_reg[1][3]_0 ),
        .O(s_zero_i_5_n_0));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    s_zero_i_6
       (.I0(\s_registers_reg[1][2] ),
        .I1(\s_registers[1][7]_i_5_n_0 ),
        .I2(\s_registers[1][2]_i_4_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\s_registers_reg[1][2]_0 ),
        .O(s_zero_i_6_n_0));
  LUT6 #(
    .INIT(64'hBBBBB8BB8888B888)) 
    s_zero_i_7
       (.I0(\s_registers_reg[1][4] ),
        .I1(\s_registers[1][7]_i_5_n_0 ),
        .I2(\s_registers[1][4]_i_4_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\s_registers_reg[1][4]_0 ),
        .O(s_zero_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "register_file" *) 
module turtle_top_level_turtle_processing_un_0_0_register_file
   (Q,
    \s_registers_reg[2][0]_0 ,
    \s_registers_reg[1][7]_0 ,
    \s_registers_reg[3][1]_0 ,
    \s_registers_reg[2][4]_0 ,
    \s_registers_reg[2][5]_0 ,
    \s_registers_reg[3][6]_0 ,
    \s_registers_reg[3][7]_0 ,
    O,
    \s_registers_reg[0][7]_0 ,
    \s_registers_reg[0][3]_0 ,
    \s_registers_reg[0][3]_1 ,
    \s_registers_reg[0][6]_0 ,
    \s_registers_reg[0][7]_1 ,
    \s_registers_reg[0][5]_0 ,
    \s_registers_reg[0][5]_1 ,
    \s_registers_reg[2][2]_0 ,
    \s_registers_reg[2][3]_0 ,
    CO,
    i_rst_0,
    \s_registers_reg[0][7]_2 ,
    s_carry_reg,
    \s_registers[1][3]_i_3_0 ,
    s_carry_reg_0,
    s_carry_reg_1,
    s_carry_reg_2,
    data2,
    \s_registers_reg[1][6]_0 ,
    \s_registers_reg[1][7]_1 ,
    \s_registers[1][0]_i_5 ,
    \s_registers[1][4]_i_3_0 ,
    s_carry_i_7,
    i_rst,
    s_overflow_reg,
    s_carry0,
    s_overflow,
    s_carry,
    E,
    D,
    i_clk,
    \s_registers_reg[3][0]_0 ,
    \s_registers_reg[2][0]_1 ,
    \s_registers_reg[0][7]_3 );
  output [7:0]Q;
  output \s_registers_reg[2][0]_0 ;
  output [7:0]\s_registers_reg[1][7]_0 ;
  output \s_registers_reg[3][1]_0 ;
  output \s_registers_reg[2][4]_0 ;
  output \s_registers_reg[2][5]_0 ;
  output \s_registers_reg[3][6]_0 ;
  output \s_registers_reg[3][7]_0 ;
  output [1:0]O;
  output \s_registers_reg[0][7]_0 ;
  output \s_registers_reg[0][3]_0 ;
  output \s_registers_reg[0][3]_1 ;
  output \s_registers_reg[0][6]_0 ;
  output \s_registers_reg[0][7]_1 ;
  output \s_registers_reg[0][5]_0 ;
  output \s_registers_reg[0][5]_1 ;
  output \s_registers_reg[2][2]_0 ;
  output \s_registers_reg[2][3]_0 ;
  output [0:0]CO;
  output i_rst_0;
  output \s_registers_reg[0][7]_2 ;
  output s_carry_reg;
  input [2:0]\s_registers[1][3]_i_3_0 ;
  input s_carry_reg_0;
  input s_carry_reg_1;
  input s_carry_reg_2;
  input [4:0]data2;
  input \s_registers_reg[1][6]_0 ;
  input \s_registers_reg[1][7]_1 ;
  input [3:0]\s_registers[1][0]_i_5 ;
  input [3:0]\s_registers[1][4]_i_3_0 ;
  input [0:0]s_carry_i_7;
  input i_rst;
  input s_overflow_reg;
  input s_carry0;
  input s_overflow;
  input s_carry;
  input [0:0]E;
  input [7:0]D;
  input i_clk;
  input [0:0]\s_registers_reg[3][0]_0 ;
  input [0:0]\s_registers_reg[2][0]_1 ;
  input [0:0]\s_registers_reg[0][7]_3 ;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [7:0]Q;
  wire [8:2]data1;
  wire [4:0]data2;
  wire i_clk;
  wire i_rst;
  wire i_rst_0;
  wire s_carry;
  wire s_carry0;
  wire s_carry_i_2_n_0;
  wire s_carry_i_5_n_0;
  wire [0:0]s_carry_i_7;
  wire s_carry_reg;
  wire s_carry_reg_0;
  wire s_carry_reg_1;
  wire s_carry_reg_2;
  wire s_overflow;
  wire s_overflow_reg;
  wire [3:0]\s_registers[1][0]_i_5 ;
  wire \s_registers[1][2]_i_5_n_0 ;
  wire \s_registers[1][2]_i_6_n_0 ;
  wire [2:0]\s_registers[1][3]_i_3_0 ;
  wire \s_registers[1][3]_i_5_n_0 ;
  wire \s_registers[1][3]_i_6_n_0 ;
  wire [3:0]\s_registers[1][4]_i_3_0 ;
  wire \s_registers[1][4]_i_5_n_0 ;
  wire \s_registers[1][4]_i_6_n_0 ;
  wire \s_registers[1][5]_i_7_n_0 ;
  wire \s_registers[1][6]_i_6_n_0 ;
  wire \s_registers[1][6]_i_7_n_0 ;
  wire \s_registers[1][7]_i_14_n_0 ;
  wire \s_registers[1][7]_i_17_n_0 ;
  wire \s_registers_reg[0][3]_0 ;
  wire \s_registers_reg[0][3]_1 ;
  wire \s_registers_reg[0][5]_0 ;
  wire \s_registers_reg[0][5]_1 ;
  wire \s_registers_reg[0][6]_0 ;
  wire \s_registers_reg[0][7]_0 ;
  wire \s_registers_reg[0][7]_1 ;
  wire \s_registers_reg[0][7]_2 ;
  wire [0:0]\s_registers_reg[0][7]_3 ;
  wire \s_registers_reg[1][1]_i_8_n_0 ;
  wire \s_registers_reg[1][1]_i_8_n_1 ;
  wire \s_registers_reg[1][1]_i_8_n_2 ;
  wire \s_registers_reg[1][1]_i_8_n_3 ;
  wire \s_registers_reg[1][6]_0 ;
  wire [7:0]\s_registers_reg[1][7]_0 ;
  wire \s_registers_reg[1][7]_1 ;
  wire \s_registers_reg[1][7]_i_16_n_0 ;
  wire \s_registers_reg[1][7]_i_16_n_1 ;
  wire \s_registers_reg[1][7]_i_16_n_2 ;
  wire \s_registers_reg[1][7]_i_16_n_3 ;
  wire [7:0]\s_registers_reg[2] ;
  wire \s_registers_reg[2][0]_0 ;
  wire [0:0]\s_registers_reg[2][0]_1 ;
  wire \s_registers_reg[2][2]_0 ;
  wire \s_registers_reg[2][3]_0 ;
  wire \s_registers_reg[2][4]_0 ;
  wire \s_registers_reg[2][5]_0 ;
  wire [7:0]\s_registers_reg[3] ;
  wire [0:0]\s_registers_reg[3][0]_0 ;
  wire \s_registers_reg[3][1]_0 ;
  wire \s_registers_reg[3][6]_0 ;
  wire \s_registers_reg[3][7]_0 ;
  wire [3:1]NLW_s_carry_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_s_carry_reg_i_4_O_UNCONNECTED;
  wire [3:1]NLW_s_carry_reg_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_s_carry_reg_i_8_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \o_data_bus[0]_INST_0_i_2 
       (.I0(\s_registers_reg[2] [0]),
        .I1(\s_registers_reg[3] [0]),
        .I2(\s_registers_reg[1][7]_0 [0]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(\s_registers[1][3]_i_3_0 [1]),
        .I5(Q[0]),
        .O(\s_registers_reg[2][0]_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \o_data_bus[1]_INST_0_i_2 
       (.I0(\s_registers_reg[3] [1]),
        .I1(\s_registers_reg[2] [1]),
        .I2(\s_registers_reg[1][7]_0 [1]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(\s_registers[1][3]_i_3_0 [1]),
        .I5(Q[1]),
        .O(\s_registers_reg[3][1]_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \o_data_bus[2]_INST_0_i_2 
       (.I0(\s_registers_reg[2] [2]),
        .I1(Q[2]),
        .I2(\s_registers_reg[3] [2]),
        .I3(\s_registers[1][3]_i_3_0 [1]),
        .I4(\s_registers[1][3]_i_3_0 [0]),
        .I5(\s_registers_reg[1][7]_0 [2]),
        .O(\s_registers_reg[2][2]_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \o_data_bus[3]_INST_0_i_2 
       (.I0(\s_registers_reg[2] [3]),
        .I1(Q[3]),
        .I2(\s_registers_reg[3] [3]),
        .I3(\s_registers[1][3]_i_3_0 [1]),
        .I4(\s_registers[1][3]_i_3_0 [0]),
        .I5(\s_registers_reg[1][7]_0 [3]),
        .O(\s_registers_reg[2][3]_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \o_data_bus[4]_INST_0_i_2 
       (.I0(\s_registers_reg[2] [4]),
        .I1(Q[4]),
        .I2(\s_registers_reg[3] [4]),
        .I3(\s_registers[1][3]_i_3_0 [1]),
        .I4(\s_registers[1][3]_i_3_0 [0]),
        .I5(\s_registers_reg[1][7]_0 [4]),
        .O(\s_registers_reg[2][4]_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \o_data_bus[5]_INST_0_i_2 
       (.I0(\s_registers_reg[2] [5]),
        .I1(Q[5]),
        .I2(\s_registers_reg[3] [5]),
        .I3(\s_registers[1][3]_i_3_0 [1]),
        .I4(\s_registers[1][3]_i_3_0 [0]),
        .I5(\s_registers_reg[1][7]_0 [5]),
        .O(\s_registers_reg[2][5]_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \o_data_bus[6]_INST_0_i_2 
       (.I0(\s_registers_reg[3] [6]),
        .I1(\s_registers_reg[2] [6]),
        .I2(\s_registers_reg[1][7]_0 [6]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(\s_registers[1][3]_i_3_0 [1]),
        .I5(Q[6]),
        .O(\s_registers_reg[3][6]_0 ));
  LUT6 #(
    .INIT(64'h0F5533000F5533FF)) 
    \o_data_bus[7]_INST_0_i_6 
       (.I0(\s_registers_reg[3] [7]),
        .I1(\s_registers_reg[2] [7]),
        .I2(\s_registers_reg[1][7]_0 [7]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(\s_registers[1][3]_i_3_0 [1]),
        .I5(Q[7]),
        .O(\s_registers_reg[3][7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_addr[15]_i_3 
       (.I0(i_rst),
        .O(i_rst_0));
  LUT3 #(
    .INIT(8'h74)) 
    s_carry_i_1
       (.I0(s_carry_i_2_n_0),
        .I1(s_carry0),
        .I2(s_carry),
        .O(s_carry_reg));
  LUT6 #(
    .INIT(64'h00000000FFFF35F5)) 
    s_carry_i_2
       (.I0(data1[8]),
        .I1(s_carry_i_5_n_0),
        .I2(s_carry_reg_0),
        .I3(Q[7]),
        .I4(s_carry_reg_1),
        .I5(s_carry_reg_2),
        .O(s_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_carry_i_5
       (.I0(Q[6]),
        .I1(\s_registers[1][7]_i_17_n_0 ),
        .O(s_carry_i_5_n_0));
  CARRY4 s_carry_reg_i_4
       (.CI(\s_registers_reg[1][7]_i_16_n_0 ),
        .CO({NLW_s_carry_reg_i_4_CO_UNCONNECTED[3:1],data1[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_carry_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 s_carry_reg_i_8
       (.CI(s_carry_i_7),
        .CO({NLW_s_carry_reg_i_8_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_carry_reg_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h1811FFFF18110000)) 
    s_overflow_i_1
       (.I0(s_carry_i_2_n_0),
        .I1(Q[7]),
        .I2(s_overflow_reg),
        .I3(\s_registers_reg[1][7]_0 [7]),
        .I4(s_carry0),
        .I5(s_overflow),
        .O(\s_registers_reg[0][7]_2 ));
  LUT6 #(
    .INIT(64'hB03FB030BF3FBF3F)) 
    \s_registers[1][2]_i_3 
       (.I0(data2[0]),
        .I1(\s_registers[1][2]_i_5_n_0 ),
        .I2(\s_registers_reg[1][6]_0 ),
        .I3(s_carry_reg_0),
        .I4(data1[2]),
        .I5(\s_registers[1][2]_i_6_n_0 ),
        .O(\s_registers_reg[0][3]_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][2]_i_5 
       (.I0(\s_registers_reg[1][7]_0 [2]),
        .I1(\s_registers[1][3]_i_3_0 [2]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(Q[2]),
        .O(\s_registers[1][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8787FF87)) 
    \s_registers[1][2]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(\s_registers[1][3]_i_3_0 [2]),
        .O(\s_registers[1][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB03FB030BF3FBF3F)) 
    \s_registers[1][3]_i_3 
       (.I0(data2[1]),
        .I1(\s_registers[1][3]_i_5_n_0 ),
        .I2(\s_registers_reg[1][6]_0 ),
        .I3(s_carry_reg_0),
        .I4(data1[3]),
        .I5(\s_registers[1][3]_i_6_n_0 ),
        .O(\s_registers_reg[0][3]_1 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][3]_i_5 
       (.I0(\s_registers_reg[1][7]_0 [3]),
        .I1(\s_registers[1][3]_i_3_0 [2]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(Q[3]),
        .O(\s_registers[1][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h807F807FFFFF807F)) 
    \s_registers[1][3]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\s_registers[1][3]_i_3_0 [0]),
        .I5(\s_registers[1][3]_i_3_0 [2]),
        .O(\s_registers[1][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB03F3FBFB03030)) 
    \s_registers[1][4]_i_3 
       (.I0(data2[2]),
        .I1(\s_registers[1][4]_i_5_n_0 ),
        .I2(\s_registers_reg[1][6]_0 ),
        .I3(\s_registers[1][4]_i_6_n_0 ),
        .I4(s_carry_reg_0),
        .I5(data1[4]),
        .O(\s_registers_reg[0][7]_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][4]_i_5 
       (.I0(Q[4]),
        .I1(\s_registers[1][3]_i_3_0 [2]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(\s_registers_reg[1][7]_0 [4]),
        .O(\s_registers[1][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \s_registers[1][4]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\s_registers[1][4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h60666F66)) 
    \s_registers[1][5]_i_4 
       (.I0(Q[5]),
        .I1(\s_registers[1][5]_i_7_n_0 ),
        .I2(\s_registers[1][3]_i_3_0 [2]),
        .I3(\s_registers[1][3]_i_3_0 [0]),
        .I4(data1[5]),
        .O(\s_registers_reg[0][5]_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][5]_i_5 
       (.I0(Q[5]),
        .I1(\s_registers[1][3]_i_3_0 [2]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(\s_registers_reg[1][7]_0 [5]),
        .O(\s_registers_reg[0][5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_registers[1][5]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\s_registers[1][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20A0A02F20AFA0)) 
    \s_registers[1][6]_i_3 
       (.I0(\s_registers[1][6]_i_6_n_0 ),
        .I1(data2[3]),
        .I2(\s_registers_reg[1][6]_0 ),
        .I3(\s_registers[1][6]_i_7_n_0 ),
        .I4(s_carry_reg_0),
        .I5(data1[6]),
        .O(\s_registers_reg[0][6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \s_registers[1][6]_i_6 
       (.I0(Q[6]),
        .I1(\s_registers[1][3]_i_3_0 [2]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(\s_registers_reg[1][7]_0 [6]),
        .O(\s_registers[1][6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h66F6)) 
    \s_registers[1][6]_i_7 
       (.I0(\s_registers[1][7]_i_17_n_0 ),
        .I1(Q[6]),
        .I2(\s_registers[1][3]_i_3_0 [0]),
        .I3(\s_registers[1][3]_i_3_0 [2]),
        .O(\s_registers[1][6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \s_registers[1][7]_i_14 
       (.I0(Q[7]),
        .I1(\s_registers[1][7]_i_17_n_0 ),
        .I2(Q[6]),
        .O(\s_registers[1][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_registers[1][7]_i_17 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\s_registers[1][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_registers[1][7]_i_8 
       (.I0(data2[4]),
        .I1(\s_registers_reg[1][7]_1 ),
        .I2(\s_registers_reg[1][6]_0 ),
        .I3(\s_registers[1][7]_i_14_n_0 ),
        .I4(s_carry_reg_0),
        .I5(data1[7]),
        .O(\s_registers_reg[0][7]_1 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][0] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][1] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][2] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][3] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][4] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][5] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][6] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[0][7] 
       (.C(i_clk),
        .CE(\s_registers_reg[0][7]_3 ),
        .CLR(i_rst_0),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][0] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[0]),
        .Q(\s_registers_reg[1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][1] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[1]),
        .Q(\s_registers_reg[1][7]_0 [1]));
  CARRY4 \s_registers_reg[1][1]_i_8 
       (.CI(1'b0),
        .CO({\s_registers_reg[1][1]_i_8_n_0 ,\s_registers_reg[1][1]_i_8_n_1 ,\s_registers_reg[1][1]_i_8_n_2 ,\s_registers_reg[1][1]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({data1[3:2],O}),
        .S(\s_registers[1][0]_i_5 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][2] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[2]),
        .Q(\s_registers_reg[1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][3] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[3]),
        .Q(\s_registers_reg[1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][4] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[4]),
        .Q(\s_registers_reg[1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][5] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[5]),
        .Q(\s_registers_reg[1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][6] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[6]),
        .Q(\s_registers_reg[1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[1][7] 
       (.C(i_clk),
        .CE(E),
        .CLR(i_rst_0),
        .D(D[7]),
        .Q(\s_registers_reg[1][7]_0 [7]));
  CARRY4 \s_registers_reg[1][7]_i_16 
       (.CI(\s_registers_reg[1][1]_i_8_n_0 ),
        .CO({\s_registers_reg[1][7]_i_16_n_0 ,\s_registers_reg[1][7]_i_16_n_1 ,\s_registers_reg[1][7]_i_16_n_2 ,\s_registers_reg[1][7]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data1[7:4]),
        .S(\s_registers[1][4]_i_3_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][0] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[0]),
        .Q(\s_registers_reg[2] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][1] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[1]),
        .Q(\s_registers_reg[2] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][2] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[2]),
        .Q(\s_registers_reg[2] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][3] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[3]),
        .Q(\s_registers_reg[2] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][4] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[4]),
        .Q(\s_registers_reg[2] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][5] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[5]),
        .Q(\s_registers_reg[2] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][6] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[6]),
        .Q(\s_registers_reg[2] [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[2][7] 
       (.C(i_clk),
        .CE(\s_registers_reg[2][0]_1 ),
        .CLR(i_rst_0),
        .D(D[7]),
        .Q(\s_registers_reg[2] [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][0] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[0]),
        .Q(\s_registers_reg[3] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][1] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[1]),
        .Q(\s_registers_reg[3] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][2] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[2]),
        .Q(\s_registers_reg[3] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][3] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[3]),
        .Q(\s_registers_reg[3] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][4] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[4]),
        .Q(\s_registers_reg[3] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][5] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[5]),
        .Q(\s_registers_reg[3] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][6] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[6]),
        .Q(\s_registers_reg[3] [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_registers_reg[3][7] 
       (.C(i_clk),
        .CE(\s_registers_reg[3][0]_0 ),
        .CLR(i_rst_0),
        .D(D[7]),
        .Q(\s_registers_reg[3] [7]));
endmodule

(* ORIG_REF_NAME = "turtle_processing_unit" *) 
module turtle_top_level_turtle_processing_un_0_0_turtle_processing_unit
   (o_rw,
    o_data_bus,
    o_addr_bus,
    i_clk,
    i_data_bus,
    i_rst);
  output o_rw;
  output [7:0]o_data_bus;
  output [15:0]o_addr_bus;
  input i_clk;
  input [7:0]i_data_bus;
  input i_rst;

  wire [1:0]data1;
  wire [7:0]data2;
  wire i_clk;
  wire [7:0]i_data_bus;
  wire i_rst;
  wire [15:0]o_addr_bus;
  wire [7:0]o_data_bus;
  wire o_rw;
  wire [3:0]p_0_in;
  wire pc_inst_n_1;
  wire pc_inst_n_10;
  wire pc_inst_n_11;
  wire pc_inst_n_12;
  wire pc_inst_n_13;
  wire pc_inst_n_14;
  wire pc_inst_n_15;
  wire pc_inst_n_16;
  wire pc_inst_n_2;
  wire pc_inst_n_22;
  wire pc_inst_n_23;
  wire pc_inst_n_3;
  wire pc_inst_n_4;
  wire pc_inst_n_5;
  wire pc_inst_n_6;
  wire pc_inst_n_7;
  wire pc_inst_n_8;
  wire pc_inst_n_9;
  wire [15:2]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire reg_alu_n_10;
  wire reg_alu_n_11;
  wire reg_alu_n_12;
  wire reg_alu_n_13;
  wire reg_alu_n_14;
  wire reg_alu_n_15;
  wire reg_alu_n_16;
  wire reg_alu_n_8;
  wire reg_alu_n_9;
  wire reg_file_n_17;
  wire reg_file_n_18;
  wire reg_file_n_19;
  wire reg_file_n_20;
  wire reg_file_n_21;
  wire reg_file_n_24;
  wire reg_file_n_25;
  wire reg_file_n_26;
  wire reg_file_n_27;
  wire reg_file_n_28;
  wire reg_file_n_29;
  wire reg_file_n_30;
  wire reg_file_n_31;
  wire reg_file_n_32;
  wire reg_file_n_33;
  wire reg_file_n_34;
  wire reg_file_n_35;
  wire reg_file_n_36;
  wire reg_file_n_8;
  wire reg_instruction_n_0;
  wire reg_instruction_n_1;
  wire reg_instruction_n_10;
  wire reg_instruction_n_11;
  wire reg_instruction_n_12;
  wire reg_instruction_n_13;
  wire reg_instruction_n_14;
  wire reg_instruction_n_15;
  wire reg_instruction_n_16;
  wire reg_instruction_n_17;
  wire reg_instruction_n_19;
  wire reg_instruction_n_2;
  wire reg_instruction_n_20;
  wire reg_instruction_n_21;
  wire reg_instruction_n_22;
  wire reg_instruction_n_3;
  wire reg_instruction_n_52;
  wire reg_instruction_n_53;
  wire reg_instruction_n_54;
  wire reg_instruction_n_55;
  wire reg_instruction_n_56;
  wire reg_instruction_n_57;
  wire reg_instruction_n_58;
  wire reg_instruction_n_59;
  wire reg_instruction_n_60;
  wire reg_instruction_n_61;
  wire reg_instruction_n_62;
  wire reg_instruction_n_63;
  wire reg_instruction_n_64;
  wire reg_instruction_n_65;
  wire reg_instruction_n_66;
  wire reg_instruction_n_67;
  wire reg_instruction_n_68;
  wire reg_instruction_n_69;
  wire reg_instruction_n_70;
  wire reg_instruction_n_71;
  wire reg_instruction_n_78;
  wire reg_instruction_n_89;
  wire reg_instruction_n_9;
  wire reg_instruction_n_90;
  wire reg_instruction_n_91;
  wire reg_instruction_n_92;
  wire reg_instruction_n_93;
  wire [15:0]s_addr;
  wire s_addr0;
  wire \s_addr[0]_i_4_n_0 ;
  wire \s_addr[1]_i_4_n_0 ;
  wire \s_addr[7]_i_4_n_0 ;
  wire \s_addr[8]_i_2_n_0 ;
  wire s_addr_mode;
  wire [15:0]s_addr_new;
  wire \s_addr_new_reg_n_0_[0] ;
  wire \s_addr_new_reg_n_0_[10] ;
  wire \s_addr_new_reg_n_0_[11] ;
  wire \s_addr_new_reg_n_0_[12] ;
  wire \s_addr_new_reg_n_0_[13] ;
  wire \s_addr_new_reg_n_0_[14] ;
  wire \s_addr_new_reg_n_0_[15] ;
  wire \s_addr_new_reg_n_0_[1] ;
  wire \s_addr_new_reg_n_0_[2] ;
  wire \s_addr_new_reg_n_0_[3] ;
  wire \s_addr_new_reg_n_0_[4] ;
  wire \s_addr_new_reg_n_0_[5] ;
  wire \s_addr_new_reg_n_0_[6] ;
  wire \s_addr_new_reg_n_0_[7] ;
  wire \s_addr_new_reg_n_0_[8] ;
  wire \s_addr_new_reg_n_0_[9] ;
  wire s_carry;
  wire s_carry0;
  wire [15:1]s_counter;
  wire [7:0]s_counter_reg;
  wire [2:0]s_current_state;
  wire [2:0]s_current_state__0;
  wire s_negative;
  wire s_overflow;
  wire s_pc_en;
  wire [7:0]\s_reg_file_data_out[0]_0 ;
  wire \s_registers_reg[0]0 ;
  wire [7:0]\s_registers_reg[1] ;
  wire \s_registers_reg[1]0 ;
  wire s_stack_en;
  wire s_wait_for_starting_edge;
  wire s_zero;
  wire [7:0]sel0;
  wire stack_inst_n_10;
  wire stack_inst_n_11;
  wire stack_inst_n_12;
  wire stack_inst_n_13;
  wire stack_inst_n_14;
  wire stack_inst_n_15;
  wire stack_inst_n_16;
  wire stack_inst_n_8;
  wire stack_inst_n_9;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_s_current_state_reg[0] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_current_state__0[0]),
        .Q(s_current_state[0]));
  (* FSM_ENCODED_STATES = "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_s_current_state_reg[1] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_current_state__0[1]),
        .Q(s_current_state[1]));
  (* FSM_ENCODED_STATES = "fetching_addr_high:011,fetching_addr_low:100,iSTATE:101,executing_ir_without_pc:001,fetching_ir:000,iSTATE0:010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_s_current_state_reg[2] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_current_state__0[2]),
        .Q(s_current_state[2]));
  turtle_top_level_turtle_processing_un_0_0_counter_register pc_inst
       (.D(s_addr[5]),
        .E(pc_inst_n_23),
        .\FSM_sequential_s_current_state_reg[2] (pc_inst_n_22),
        .O(plusOp[15:13]),
        .Q(s_current_state),
        .i_clk(i_clk),
        .i_data_bus({i_data_bus[7:5],i_data_bus[1:0]}),
        .\i_data_bus[7] ({s_addr_new[15:13],s_addr_new[1:0]}),
        .\s_addr_new_reg[13] (reg_instruction_n_17),
        .\s_addr_reg[5] (reg_instruction_n_54),
        .\s_addr_reg[5]_0 (stack_inst_n_16),
        .\s_addr_reg[5]_1 (reg_instruction_n_52),
        .s_counter(s_counter[15:2]),
        .\s_counter_reg[0]_0 (reg_file_n_34),
        .\s_counter_reg[15]_0 ({pc_inst_n_1,pc_inst_n_2,pc_inst_n_3,pc_inst_n_4,pc_inst_n_5,pc_inst_n_6,pc_inst_n_7,pc_inst_n_8,pc_inst_n_9,pc_inst_n_10,pc_inst_n_11,pc_inst_n_12,pc_inst_n_13,pc_inst_n_14,pc_inst_n_15,pc_inst_n_16}),
        .\s_counter_reg[15]_1 (s_pc_en),
        .\s_counter_reg[15]_2 ({reg_instruction_n_55,reg_instruction_n_56,reg_instruction_n_57,reg_instruction_n_58,reg_instruction_n_59,reg_instruction_n_60,reg_instruction_n_61,reg_instruction_n_62,reg_instruction_n_63,reg_instruction_n_64,reg_instruction_n_65,reg_instruction_n_66,reg_instruction_n_67,reg_instruction_n_68,reg_instruction_n_69,reg_instruction_n_70}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(pc_inst_n_16),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp[4:2],s_counter[1]}),
        .S({pc_inst_n_12,pc_inst_n_13,pc_inst_n_14,pc_inst_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({pc_inst_n_8,pc_inst_n_9,pc_inst_n_10,pc_inst_n_11}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({pc_inst_n_4,pc_inst_n_5,pc_inst_n_6,pc_inst_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp[15:13]}),
        .S({1'b0,pc_inst_n_1,pc_inst_n_2,pc_inst_n_3}));
  turtle_top_level_turtle_processing_un_0_0_alu reg_alu
       (.CO(reg_alu_n_8),
        .Q(\s_reg_file_data_out[0]_0 ),
        .S({reg_instruction_n_0,reg_instruction_n_1,reg_instruction_n_2,reg_instruction_n_3}),
        .data2(data2),
        .\s_registers[1][4]_i_3 ({reg_instruction_n_10,reg_instruction_n_11,reg_instruction_n_12,reg_instruction_n_13}),
        .\s_registers_reg[0][3] ({reg_alu_n_9,reg_alu_n_10,reg_alu_n_11,reg_alu_n_12}),
        .\s_registers_reg[0][7] ({reg_alu_n_13,reg_alu_n_14,reg_alu_n_15,reg_alu_n_16}),
        .\s_registers_reg[1][7]_i_16 (p_0_in),
        .\s_registers_reg[1][7]_i_16_0 (\s_registers_reg[1] ));
  turtle_top_level_turtle_processing_un_0_0_register_file reg_file
       (.CO(reg_file_n_33),
        .D(sel0),
        .E(\s_registers_reg[1]0 ),
        .O(data1),
        .Q(\s_reg_file_data_out[0]_0 ),
        .data2({data2[7:6],data2[4:2]}),
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_rst_0(reg_file_n_34),
        .s_carry(s_carry),
        .s_carry0(s_carry0),
        .s_carry_i_7(reg_alu_n_8),
        .s_carry_reg(reg_file_n_36),
        .s_carry_reg_0(reg_instruction_n_21),
        .s_carry_reg_1(reg_instruction_n_91),
        .s_carry_reg_2(reg_instruction_n_89),
        .s_overflow(s_overflow),
        .s_overflow_reg(reg_instruction_n_90),
        .\s_registers[1][0]_i_5 ({reg_alu_n_9,reg_alu_n_10,reg_alu_n_11,reg_alu_n_12}),
        .\s_registers[1][3]_i_3_0 ({p_0_in[3],p_0_in[1:0]}),
        .\s_registers[1][4]_i_3_0 ({reg_alu_n_13,reg_alu_n_14,reg_alu_n_15,reg_alu_n_16}),
        .\s_registers_reg[0][3]_0 (reg_file_n_25),
        .\s_registers_reg[0][3]_1 (reg_file_n_26),
        .\s_registers_reg[0][5]_0 (reg_file_n_29),
        .\s_registers_reg[0][5]_1 (reg_file_n_30),
        .\s_registers_reg[0][6]_0 (reg_file_n_27),
        .\s_registers_reg[0][7]_0 (reg_file_n_24),
        .\s_registers_reg[0][7]_1 (reg_file_n_28),
        .\s_registers_reg[0][7]_2 (reg_file_n_35),
        .\s_registers_reg[0][7]_3 (\s_registers_reg[0]0 ),
        .\s_registers_reg[1][6]_0 (reg_instruction_n_20),
        .\s_registers_reg[1][7]_0 (\s_registers_reg[1] ),
        .\s_registers_reg[1][7]_1 (reg_instruction_n_22),
        .\s_registers_reg[2][0]_0 (reg_file_n_8),
        .\s_registers_reg[2][0]_1 (reg_instruction_n_14),
        .\s_registers_reg[2][2]_0 (reg_file_n_31),
        .\s_registers_reg[2][3]_0 (reg_file_n_32),
        .\s_registers_reg[2][4]_0 (reg_file_n_18),
        .\s_registers_reg[2][5]_0 (reg_file_n_19),
        .\s_registers_reg[3][0]_0 (reg_instruction_n_15),
        .\s_registers_reg[3][1]_0 (reg_file_n_17),
        .\s_registers_reg[3][6]_0 (reg_file_n_20),
        .\s_registers_reg[3][7]_0 (reg_file_n_21));
  turtle_top_level_turtle_processing_un_0_0_instruction_register reg_instruction
       (.CO(reg_file_n_33),
        .D(s_current_state__0),
        .E(\s_registers_reg[1]0 ),
        .\FSM_sequential_s_current_state_reg[0] (reg_instruction_n_54),
        .\FSM_sequential_s_current_state_reg[0]_0 (reg_instruction_n_78),
        .\FSM_sequential_s_current_state_reg[2] ({s_addr[15:6],s_addr[4:0]}),
        .\FSM_sequential_s_current_state_reg[2]_0 (s_current_state),
        .O(data1),
        .Q({p_0_in,s_addr_mode,reg_instruction_n_9}),
        .S({reg_instruction_n_0,reg_instruction_n_1,reg_instruction_n_2,reg_instruction_n_3}),
        .data2({data2[5],data2[1:0]}),
        .i_clk(i_clk),
        .i_data_bus(i_data_bus),
        .\i_data_bus[4] (s_addr_new[12:8]),
        .\i_data_bus[7] ({reg_instruction_n_55,reg_instruction_n_56,reg_instruction_n_57,reg_instruction_n_58,reg_instruction_n_59,reg_instruction_n_60,reg_instruction_n_61,reg_instruction_n_62,reg_instruction_n_63,reg_instruction_n_64,reg_instruction_n_65,reg_instruction_n_66,reg_instruction_n_67,reg_instruction_n_68,reg_instruction_n_69,reg_instruction_n_70}),
        .\i_data_bus[7]_0 (sel0),
        .o_data_bus(o_data_bus),
        .\o_data_bus[7] ({\s_addr_new_reg_n_0_[15] ,\s_addr_new_reg_n_0_[14] ,\s_addr_new_reg_n_0_[13] ,\s_addr_new_reg_n_0_[12] ,\s_addr_new_reg_n_0_[11] ,\s_addr_new_reg_n_0_[10] ,\s_addr_new_reg_n_0_[9] ,\s_addr_new_reg_n_0_[8] ,\s_addr_new_reg_n_0_[7] ,\s_addr_new_reg_n_0_[6] ,\s_addr_new_reg_n_0_[5] ,\s_addr_new_reg_n_0_[4] ,\s_addr_new_reg_n_0_[3] ,\s_addr_new_reg_n_0_[2] ,\s_addr_new_reg_n_0_[1] ,\s_addr_new_reg_n_0_[0] }),
        .\o_data_bus[7]_0 (reg_file_n_21),
        .o_data_bus_0_sp_1(reg_file_n_8),
        .o_data_bus_1_sp_1(reg_file_n_17),
        .o_data_bus_6_sp_1(reg_file_n_20),
        .o_rw(o_rw),
        .o_rw_0(pc_inst_n_22),
        .plusOp(plusOp[12:8]),
        .\s_addr[3]_i_6_0 (stack_inst_n_8),
        .\s_addr[4]_i_3_0 (stack_inst_n_15),
        .\s_addr[5]_i_2_0 (stack_inst_n_16),
        .\s_addr_reg[0] (\s_addr[0]_i_4_n_0 ),
        .\s_addr_reg[14] (pc_inst_n_23),
        .\s_addr_reg[15] ({pc_inst_n_1,pc_inst_n_2,pc_inst_n_3,pc_inst_n_4,pc_inst_n_5,pc_inst_n_6,pc_inst_n_7,pc_inst_n_8,pc_inst_n_9,pc_inst_n_10,pc_inst_n_11,pc_inst_n_12,pc_inst_n_13,pc_inst_n_14,pc_inst_n_15,pc_inst_n_16}),
        .\s_addr_reg[1] (\s_addr[1]_i_4_n_0 ),
        .\s_addr_reg[2] (stack_inst_n_13),
        .\s_addr_reg[2]_0 (stack_inst_n_12),
        .\s_addr_reg[3] (stack_inst_n_14),
        .\s_addr_reg[4] (stack_inst_n_9),
        .\s_addr_reg[6] (stack_inst_n_11),
        .\s_addr_reg[7] (\s_addr[7]_i_4_n_0 ),
        .\s_addr_reg[7]_0 (stack_inst_n_10),
        .\s_addr_reg[8] (\s_addr[8]_i_2_n_0 ),
        .s_carry(s_carry),
        .s_carry0(s_carry0),
        .s_counter(s_counter),
        .s_counter_reg(s_counter_reg),
        .\s_counter_reg[1] (reg_instruction_n_19),
        .\s_ir_reg[0]_0 (reg_instruction_n_16),
        .\s_ir_reg[0]_1 (s_pc_en),
        .\s_ir_reg[0]_2 (reg_file_n_34),
        .\s_ir_reg[1]_0 (reg_instruction_n_71),
        .\s_ir_reg[1]_1 (s_addr0),
        .\s_ir_reg[4]_0 (reg_instruction_n_22),
        .\s_ir_reg[4]_1 (reg_instruction_n_90),
        .\s_ir_reg[5]_0 (reg_instruction_n_17),
        .\s_ir_reg[5]_1 (reg_instruction_n_20),
        .\s_ir_reg[5]_2 (reg_instruction_n_52),
        .\s_ir_reg[6]_0 (reg_instruction_n_91),
        .\s_ir_reg[7]_0 (reg_instruction_n_14),
        .\s_ir_reg[7]_1 (reg_instruction_n_15),
        .\s_ir_reg[7]_2 (reg_instruction_n_21),
        .\s_ir_reg[7]_3 (\s_registers_reg[0]0 ),
        .\s_ir_reg[7]_4 (reg_instruction_n_53),
        .s_negative(s_negative),
        .s_negative_reg(reg_instruction_n_92),
        .s_overflow(s_overflow),
        .\s_registers[1][7]_i_8 (\s_registers_reg[1] ),
        .\s_registers[1][7]_i_8_0 (\s_reg_file_data_out[0]_0 ),
        .\s_registers_reg[0][7] (reg_instruction_n_89),
        .\s_registers_reg[1][2] (reg_file_n_31),
        .\s_registers_reg[1][2]_0 (reg_file_n_25),
        .\s_registers_reg[1][3] (reg_file_n_32),
        .\s_registers_reg[1][3]_0 (reg_file_n_26),
        .\s_registers_reg[1][4] (reg_file_n_18),
        .\s_registers_reg[1][4]_0 (reg_file_n_24),
        .\s_registers_reg[1][5] (reg_file_n_29),
        .\s_registers_reg[1][5]_0 (reg_file_n_30),
        .\s_registers_reg[1][5]_1 (reg_file_n_19),
        .\s_registers_reg[1][6] (reg_file_n_27),
        .\s_registers_reg[1][7] ({reg_instruction_n_10,reg_instruction_n_11,reg_instruction_n_12,reg_instruction_n_13}),
        .\s_registers_reg[1][7]_0 (reg_file_n_28),
        .s_stack_en(s_stack_en),
        .s_wait_for_starting_edge(s_wait_for_starting_edge),
        .s_zero(s_zero),
        .s_zero_reg(reg_instruction_n_93));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_addr[0]_i_4 
       (.I0(s_current_state[0]),
        .I1(s_current_state[1]),
        .O(\s_addr[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_addr[1]_i_4 
       (.I0(s_current_state[2]),
        .I1(s_current_state[1]),
        .I2(s_current_state[0]),
        .O(\s_addr[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_addr[7]_i_4 
       (.I0(s_current_state[1]),
        .I1(s_current_state[2]),
        .I2(s_current_state[0]),
        .O(\s_addr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_addr[8]_i_2 
       (.I0(s_current_state[2]),
        .I1(s_current_state[1]),
        .O(\s_addr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[2]_i_1 
       (.I0(i_data_bus[2]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[2]),
        .O(s_addr_new[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[3]_i_1 
       (.I0(i_data_bus[3]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[3]),
        .O(s_addr_new[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[4]_i_1 
       (.I0(i_data_bus[4]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[4]),
        .O(s_addr_new[4]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[5]_i_1 
       (.I0(i_data_bus[5]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[5]),
        .O(s_addr_new[5]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[6]_i_1 
       (.I0(i_data_bus[6]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[6]),
        .O(s_addr_new[6]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \s_addr_new[7]_i_2 
       (.I0(i_data_bus[7]),
        .I1(s_current_state[1]),
        .I2(s_current_state[2]),
        .I3(s_current_state[0]),
        .I4(plusOp[7]),
        .O(s_addr_new[7]));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[0] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[0]),
        .Q(\s_addr_new_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[10] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[10]),
        .Q(\s_addr_new_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[11] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[11]),
        .Q(\s_addr_new_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[12] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[12]),
        .Q(\s_addr_new_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[13] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[13]),
        .Q(\s_addr_new_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[14] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[14]),
        .Q(\s_addr_new_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[15] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[15]),
        .Q(\s_addr_new_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[1] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[1]),
        .Q(\s_addr_new_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[2] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[2]),
        .Q(\s_addr_new_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[3] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[3]),
        .Q(\s_addr_new_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[4] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[4]),
        .Q(\s_addr_new_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[5] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[5]),
        .Q(\s_addr_new_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[6] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[6]),
        .Q(\s_addr_new_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[7] 
       (.C(i_clk),
        .CE(reg_instruction_n_78),
        .CLR(reg_file_n_34),
        .D(s_addr_new[7]),
        .Q(\s_addr_new_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[8] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[8]),
        .Q(\s_addr_new_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \s_addr_new_reg[9] 
       (.C(i_clk),
        .CE(pc_inst_n_23),
        .CLR(reg_file_n_34),
        .D(s_addr_new[9]),
        .Q(\s_addr_new_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[0] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[0]),
        .Q(o_addr_bus[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[10] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[10]),
        .Q(o_addr_bus[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[11] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[11]),
        .Q(o_addr_bus[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[12] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[12]),
        .Q(o_addr_bus[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[13] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[13]),
        .Q(o_addr_bus[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[14] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[14]),
        .Q(o_addr_bus[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[15] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[15]),
        .Q(o_addr_bus[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[1] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[1]),
        .Q(o_addr_bus[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[2] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[2]),
        .Q(o_addr_bus[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[3] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[3]),
        .Q(o_addr_bus[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[4] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[4]),
        .Q(o_addr_bus[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[5] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[5]),
        .Q(o_addr_bus[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[6] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[6]),
        .Q(o_addr_bus[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[7] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[7]),
        .Q(o_addr_bus[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[8] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[8]),
        .Q(o_addr_bus[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \s_addr_reg[9] 
       (.C(i_clk),
        .CE(s_addr0),
        .CLR(reg_file_n_34),
        .D(s_addr[9]),
        .Q(o_addr_bus[9]));
  FDCE #(
    .INIT(1'b0)) 
    s_carry_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(reg_file_n_34),
        .D(reg_file_n_36),
        .Q(s_carry));
  FDCE #(
    .INIT(1'b0)) 
    s_negative_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(reg_file_n_34),
        .D(reg_instruction_n_92),
        .Q(s_negative));
  FDCE #(
    .INIT(1'b0)) 
    s_overflow_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(reg_file_n_34),
        .D(reg_file_n_35),
        .Q(s_overflow));
  FDPE #(
    .INIT(1'b1)) 
    s_wait_for_starting_edge_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reg_file_n_34),
        .Q(s_wait_for_starting_edge));
  FDCE #(
    .INIT(1'b0)) 
    s_zero_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(reg_file_n_34),
        .D(reg_instruction_n_93),
        .Q(s_zero));
  turtle_top_level_turtle_processing_un_0_0_counter_register__parameterized1 stack_inst
       (.Q({s_addr_mode,reg_instruction_n_9}),
        .i_clk(i_clk),
        .\s_addr_reg[2] (reg_instruction_n_53),
        .\s_addr_reg[2]_i_4_0 (reg_instruction_n_16),
        .\s_addr_reg[2]_i_4_1 (reg_instruction_n_52),
        .\s_addr_reg[2]_i_4_2 (reg_instruction_n_71),
        .\s_addr_reg[3] ({pc_inst_n_13,pc_inst_n_14}),
        .s_counter_reg(s_counter_reg),
        .\s_counter_reg[2]_0 (stack_inst_n_13),
        .\s_counter_reg[3]_0 (stack_inst_n_8),
        .\s_counter_reg[3]_1 (stack_inst_n_14),
        .\s_counter_reg[3]_2 (stack_inst_n_15),
        .\s_counter_reg[4]_0 (stack_inst_n_9),
        .\s_counter_reg[4]_1 (reg_instruction_n_19),
        .\s_counter_reg[5]_0 (stack_inst_n_11),
        .\s_counter_reg[5]_1 (stack_inst_n_16),
        .\s_counter_reg[7]_0 (stack_inst_n_10),
        .\s_counter_reg[7]_1 (reg_file_n_34),
        .\s_ir_reg[3] (stack_inst_n_12),
        .s_stack_en(s_stack_en));
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
