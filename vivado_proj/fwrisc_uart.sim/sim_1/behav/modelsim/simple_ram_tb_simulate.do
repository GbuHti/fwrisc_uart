######################################################################
#
# File name : simple_ram_tb_simulate.do
# Created on: Sat Jul 27 15:10:37 +0800 2019
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L blk_mem_gen_v8_4_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.simple_ram_tb xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {simple_ram_tb_wave.do}

view wave
view structure
view signals

do {simple_ram_tb.udo}

run 1000ns
