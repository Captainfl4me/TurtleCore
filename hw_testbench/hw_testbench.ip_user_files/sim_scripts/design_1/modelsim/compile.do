vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/dist_mem_gen_v8_0_15
vlib modelsim_lib/msim/util_vector_logic_v2_0_4

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap dist_mem_gen_v8_0_15 modelsim_lib/msim/dist_mem_gen_v8_0_15
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ipshared/9d93/src/alu.vhd" \
"../../../bd/design_1/ipshared/9d93/src/counter_register.vhd" \
"../../../bd/design_1/ipshared/9d93/src/instruction_register.vhd" \
"../../../bd/design_1/ipshared/9d93/src/register_file.vhd" \
"../../../bd/design_1/ipshared/9d93/sim/tb.vhd" \
"../../../bd/design_1/ipshared/9d93/src/turtle_top_level.vhd" \
"../../../bd/design_1/ip/design_1_turtle_core_0_0/sim/design_1_turtle_core_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.v" \

vlog -work blk_mem_gen_v8_4_8 -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_MCC_0_0/sim/design_1_MCC_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_15 -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_dist_mem_gen_0_1/sim/design_1_dist_mem_gen_0_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_led_bar_0_0/sim/design_1_led_bar_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4 -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../hw_testbench.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

