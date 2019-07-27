# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param simulator.modelsimInstallPath C:/modeltech64_10.6d/win64
  create_project -in_memory -part xc7v2000tflg1925-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.cache/wt [current_project]
  set_property parent.project_path D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.xpr [current_project]
  set_property ip_output_repo D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.runs/synth_4_xc7v2000t/fwrisc_uart_wraper.dcp
  read_ip -quiet d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
  read_ip -quiet d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
  read_xdc D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/constrs_1/new/fwrisc_uart_xc7v2000t.xdc
  link_design -top fwrisc_uart_wraper -part xc7v2000tflg1925-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force fwrisc_uart_wraper_opt.dcp
  create_report "impl_4_opt_report_drc_0" "report_drc -file fwrisc_uart_wraper_drc_opted.rpt -pb fwrisc_uart_wraper_drc_opted.pb -rpx fwrisc_uart_wraper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force fwrisc_uart_wraper_placed.dcp
  create_report "impl_4_place_report_io_0" "report_io -file fwrisc_uart_wraper_io_placed.rpt"
  create_report "impl_4_place_report_utilization_0" "report_utilization -file fwrisc_uart_wraper_utilization_placed.rpt -pb fwrisc_uart_wraper_utilization_placed.pb"
  create_report "impl_4_place_report_control_sets_0" "report_control_sets -verbose -file fwrisc_uart_wraper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force fwrisc_uart_wraper_routed.dcp
  create_report "impl_4_route_report_drc_0" "report_drc -file fwrisc_uart_wraper_drc_routed.rpt -pb fwrisc_uart_wraper_drc_routed.pb -rpx fwrisc_uart_wraper_drc_routed.rpx"
  create_report "impl_4_route_report_methodology_0" "report_methodology -file fwrisc_uart_wraper_methodology_drc_routed.rpt -pb fwrisc_uart_wraper_methodology_drc_routed.pb -rpx fwrisc_uart_wraper_methodology_drc_routed.rpx"
  create_report "impl_4_route_report_power_0" "report_power -file fwrisc_uart_wraper_power_routed.rpt -pb fwrisc_uart_wraper_power_summary_routed.pb -rpx fwrisc_uart_wraper_power_routed.rpx"
  create_report "impl_4_route_report_route_status_0" "report_route_status -file fwrisc_uart_wraper_route_status.rpt -pb fwrisc_uart_wraper_route_status.pb"
  create_report "impl_4_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file fwrisc_uart_wraper_timing_summary_routed.rpt -pb fwrisc_uart_wraper_timing_summary_routed.pb -rpx fwrisc_uart_wraper_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_4_route_report_incremental_reuse_0" "report_incremental_reuse -file fwrisc_uart_wraper_incremental_reuse_routed.rpt"
  create_report "impl_4_route_report_clock_utilization_0" "report_clock_utilization -file fwrisc_uart_wraper_clock_utilization_routed.rpt"
  create_report "impl_4_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file fwrisc_uart_wraper_bus_skew_routed.rpt -pb fwrisc_uart_wraper_bus_skew_routed.pb -rpx fwrisc_uart_wraper_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force fwrisc_uart_wraper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force fwrisc_uart_wraper.mmi }
  write_bitstream -force fwrisc_uart_wraper.bit 
  catch {write_debug_probes -quiet -force fwrisc_uart_wraper}
  catch {file copy -force fwrisc_uart_wraper.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

