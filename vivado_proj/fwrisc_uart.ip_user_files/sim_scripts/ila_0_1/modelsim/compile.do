vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../fwrisc_uart.srcs/sources_1/ip/ila_0_1/hdl/verilog" \
"../../../../fwrisc_uart.srcs/sources_1/ip/ila_0_1/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"
