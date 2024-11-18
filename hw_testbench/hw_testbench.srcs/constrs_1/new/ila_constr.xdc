







create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/MCC_0/i_switch_bar[0]} {design_1_i/MCC_0/i_switch_bar[1]} {design_1_i/MCC_0/i_switch_bar[2]} {design_1_i/MCC_0/i_switch_bar[3]} {design_1_i/MCC_0/i_switch_bar[4]} {design_1_i/MCC_0/i_switch_bar[5]} {design_1_i/MCC_0/i_switch_bar[6]} {design_1_i/MCC_0/i_switch_bar[7]} {design_1_i/MCC_0/i_switch_bar[8]} {design_1_i/MCC_0/i_switch_bar[9]} {design_1_i/MCC_0/i_switch_bar[10]} {design_1_i/MCC_0/i_switch_bar[11]} {design_1_i/MCC_0/i_switch_bar[12]} {design_1_i/MCC_0/i_switch_bar[13]} {design_1_i/MCC_0/i_switch_bar[14]} {design_1_i/MCC_0/i_switch_bar[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/turtle_core_0/o_addr_bus[0]} {design_1_i/turtle_core_0/o_addr_bus[1]} {design_1_i/turtle_core_0/o_addr_bus[2]} {design_1_i/turtle_core_0/o_addr_bus[3]} {design_1_i/turtle_core_0/o_addr_bus[4]} {design_1_i/turtle_core_0/o_addr_bus[5]} {design_1_i/turtle_core_0/o_addr_bus[6]} {design_1_i/turtle_core_0/o_addr_bus[7]} {design_1_i/turtle_core_0/o_addr_bus[8]} {design_1_i/turtle_core_0/o_addr_bus[9]} {design_1_i/turtle_core_0/o_addr_bus[10]} {design_1_i/turtle_core_0/o_addr_bus[11]} {design_1_i/turtle_core_0/o_addr_bus[12]} {design_1_i/turtle_core_0/o_addr_bus[13]} {design_1_i/turtle_core_0/o_addr_bus[14]} {design_1_i/turtle_core_0/o_addr_bus[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/turtle_core_0/i_data_bus[0]} {design_1_i/turtle_core_0/i_data_bus[1]} {design_1_i/turtle_core_0/i_data_bus[2]} {design_1_i/turtle_core_0/i_data_bus[3]} {design_1_i/turtle_core_0/i_data_bus[4]} {design_1_i/turtle_core_0/i_data_bus[5]} {design_1_i/turtle_core_0/i_data_bus[6]} {design_1_i/turtle_core_0/i_data_bus[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/turtle_core_0/U0/s_registers_reg[1][0]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][1]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][2]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][3]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][4]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][5]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][6]} {design_1_i/turtle_core_0/U0/s_registers_reg[1][7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/turtle_core_0/o_data_bus[0]} {design_1_i/turtle_core_0/o_data_bus[1]} {design_1_i/turtle_core_0/o_data_bus[2]} {design_1_i/turtle_core_0/o_data_bus[3]} {design_1_i/turtle_core_0/o_data_bus[4]} {design_1_i/turtle_core_0/o_data_bus[5]} {design_1_i/turtle_core_0/o_data_bus[6]} {design_1_i/turtle_core_0/o_data_bus[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 8 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[0]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[1]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[2]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[3]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[4]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[5]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[6]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[0][7]_0[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 8 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][0]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][1]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][2]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][3]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][4]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][5]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][6]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[3][7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][0]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][1]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][2]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][3]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][4]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][5]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][6]} {design_1_i/turtle_core_0/U0/reg_file/s_registers_reg[2][7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 16 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/turtle_core_0/U0/pc_inst/Q[0]} {design_1_i/turtle_core_0/U0/pc_inst/Q[1]} {design_1_i/turtle_core_0/U0/pc_inst/Q[2]} {design_1_i/turtle_core_0/U0/pc_inst/Q[3]} {design_1_i/turtle_core_0/U0/pc_inst/Q[4]} {design_1_i/turtle_core_0/U0/pc_inst/Q[5]} {design_1_i/turtle_core_0/U0/pc_inst/Q[6]} {design_1_i/turtle_core_0/U0/pc_inst/Q[7]} {design_1_i/turtle_core_0/U0/pc_inst/Q[8]} {design_1_i/turtle_core_0/U0/pc_inst/Q[9]} {design_1_i/turtle_core_0/U0/pc_inst/Q[10]} {design_1_i/turtle_core_0/U0/pc_inst/Q[11]} {design_1_i/turtle_core_0/U0/pc_inst/Q[12]} {design_1_i/turtle_core_0/U0/pc_inst/Q[13]} {design_1_i/turtle_core_0/U0/pc_inst/Q[14]} {design_1_i/turtle_core_0/U0/pc_inst/Q[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 8 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/led_bar_0/i_data[0]} {design_1_i/led_bar_0/i_data[1]} {design_1_i/led_bar_0/i_data[2]} {design_1_i/led_bar_0/i_data[3]} {design_1_i/led_bar_0/i_data[4]} {design_1_i/led_bar_0/i_data[5]} {design_1_i/led_bar_0/i_data[6]} {design_1_i/led_bar_0/i_data[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/blk_mem_gen_0/wea[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 8 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/blk_mem_gen_0/dina[0]} {design_1_i/blk_mem_gen_0/dina[1]} {design_1_i/blk_mem_gen_0/dina[2]} {design_1_i/blk_mem_gen_0/dina[3]} {design_1_i/blk_mem_gen_0/dina[4]} {design_1_i/blk_mem_gen_0/dina[5]} {design_1_i/blk_mem_gen_0/dina[6]} {design_1_i/blk_mem_gen_0/dina[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 15 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/blk_mem_gen_0/addra[0]} {design_1_i/blk_mem_gen_0/addra[1]} {design_1_i/blk_mem_gen_0/addra[2]} {design_1_i/blk_mem_gen_0/addra[3]} {design_1_i/blk_mem_gen_0/addra[4]} {design_1_i/blk_mem_gen_0/addra[5]} {design_1_i/blk_mem_gen_0/addra[6]} {design_1_i/blk_mem_gen_0/addra[7]} {design_1_i/blk_mem_gen_0/addra[8]} {design_1_i/blk_mem_gen_0/addra[9]} {design_1_i/blk_mem_gen_0/addra[10]} {design_1_i/blk_mem_gen_0/addra[11]} {design_1_i/blk_mem_gen_0/addra[12]} {design_1_i/blk_mem_gen_0/addra[13]} {design_1_i/blk_mem_gen_0/addra[14]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 8 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {design_1_i/blk_mem_gen_0/douta[0]} {design_1_i/blk_mem_gen_0/douta[1]} {design_1_i/blk_mem_gen_0/douta[2]} {design_1_i/blk_mem_gen_0/douta[3]} {design_1_i/blk_mem_gen_0/douta[4]} {design_1_i/blk_mem_gen_0/douta[5]} {design_1_i/blk_mem_gen_0/douta[6]} {design_1_i/blk_mem_gen_0/douta[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list design_1_i/turtle_core_0/i_rst]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/MCC_0/i_rw]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list design_1_i/led_bar_0/i_rw]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list design_1_i/MCC_0/o_write_RAM]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list design_1_i/turtle_core_0/U0/s_carry]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list design_1_i/turtle_core_0/U0/s_negative]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list design_1_i/turtle_core_0/U0/s_overflow]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list design_1_i/turtle_core_0/U0/s_zero]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
