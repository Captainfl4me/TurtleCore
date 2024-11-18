transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xpm -L xil_defaultlib -L blk_mem_gen_v8_4_8 -L dist_mem_gen_v8_0_15 -L util_vector_logic_v2_0_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run 1000ns

endsim

quit -force
