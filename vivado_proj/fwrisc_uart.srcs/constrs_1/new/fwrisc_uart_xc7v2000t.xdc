set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS18} [get_ports clock]
create_clock -period 50.000 -name sys_clk_pin -waveform {0.000 25.000} -add [get_ports clock]

set_property -dict {PACKAGE_PIN L34 IOSTANDARD LVCMOS18} [get_ports reset]

##LEDs
#LED1
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS18} [get_ports program_receiving]
#LED2
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS18} [get_ports program_ov]
#LDE3
set_property -dict {PACKAGE_PIN M34 IOSTANDARD LVCMOS18} [get_ports program_done]

##UART
set_property -dict {PACKAGE_PIN J8 IOSTANDARD LVCMOS18} [get_ports tx]; #J8 IO_0_VRN_39 <--u1 | u217--> IO_L2N_18 M6
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS18} [get_ports rx]; #T10 IO_0_VRN_37 <--u1 | u217--> IO_L0P_18 K5



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list u_clock_gen/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[0]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[1]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[2]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[3]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[4]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[5]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[6]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[7]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[8]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[9]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[10]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[11]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[12]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[13]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[14]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[15]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[16]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[17]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[18]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[19]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[20]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[21]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[22]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[23]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[24]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[25]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[26]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[27]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[28]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[29]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[30]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[0]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[1]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[2]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[3]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[4]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[5]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[6]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[7]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[8]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[9]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[10]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[11]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[12]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[13]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[14]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[15]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[16]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[17]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[18]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[19]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[20]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[21]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[22]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[23]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[24]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[25]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[26]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[27]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[28]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[29]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[30]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[0]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[1]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[2]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[3]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[4]} {u_fwrisc_fpga_top/u_core/u_regfile/rb_raddr[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 6 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[0]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[1]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[2]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[3]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[4]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_waddr[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 6 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[0]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[1]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[2]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[3]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[4]} {u_fwrisc_fpga_top/u_core/u_regfile/ra_raddr[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[0]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[1]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[2]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[3]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[4]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[5]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[6]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[7]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[8]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[9]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[10]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[11]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[12]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[13]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[14]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[15]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[16]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[17]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[18]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[19]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[20]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[21]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[22]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[23]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[24]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[25]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[26]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[27]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[28]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[29]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[30]} {u_fwrisc_fpga_top/u_core/u_regfile/rd_wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list u_fwrisc_fpga_top/dready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list u_fwrisc_fpga_top/dvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list u_fwrisc_fpga_top/dwrite]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list u_fwrisc_fpga_top/u_core/u_regfile/rd_wen]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list rx_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list tx_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
