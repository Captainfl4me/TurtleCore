// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Oct 10 22:37:21 2024
// Host        : GBNicoArch running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dist_mem_gen_0_1_sim_netlist.v
// Design      : design_1_dist_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dist_mem_gen_0_1,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [14:0]a;
  output [7:0]spo;

  wire \<const0> ;
  wire [14:0]a;
  wire [7:0]\^spo ;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;
  wire [6:6]NLW_U0_spo_UNCONNECTED;

  assign spo[7] = \^spo [7];
  assign spo[6] = \<const0> ;
  assign spo[5:0] = \^spo [5:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "15" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32768" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "design_1_dist_mem_gen_0_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_15 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4912)
`pragma protect data_block
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
Dk53iTSTv33vOQ==
`pragma protect end_protected
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
