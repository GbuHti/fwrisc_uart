# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param simulator.modelsimInstallPath C:/modeltech64_10.6d/win64
create_project -in_memory -part xcvu440-flga2892-1-c

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.cache/wt [current_project]
set_property parent.project_path D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_defines.vh
read_verilog -library xil_defaultlib -sv {
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/IF_fifo.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/UART_Registers.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/UART_baudrate_gen.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/UART_rx_fsm.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/UART_tx_fsm.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_alu.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_comparator.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_dbus_if.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_fpga_top.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/fwrisc_regfile.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/mux2to1.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/my_fifo.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/my_ram.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/rtl/uart.sv
  D:/Project/16_proj_fwisc_uart/fwrisc_uart/fpga/fwrisc_uart_wraper.sv
}
read_ip -quiet d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/constrs_1/new/fwrisc_uart.xdc
set_property used_in_implementation false [get_files D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/constrs_1/new/fwrisc_uart.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top fwrisc_uart_wraper -part xcvu440-flga2892-1-c


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef fwrisc_uart_wraper.dcp
create_report "synth_2_synth_report_utilization_0" "report_utilization -file fwrisc_uart_wraper_utilization_synth.rpt -pb fwrisc_uart_wraper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
