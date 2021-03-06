// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jul 27 19:01:47 2019
// Host        : DESKTOP-EVPNNIR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module blk_mem_gen_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[5:0],dina[31:0],clkb,enb,addrb[5:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [5:0]addra;
  input [31:0]dina;
  input clkb;
  input enb;
  input [5:0]addrb;
  output [31:0]doutb;
endmodule
