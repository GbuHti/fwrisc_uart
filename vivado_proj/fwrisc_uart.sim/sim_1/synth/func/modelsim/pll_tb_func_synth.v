// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 18 17:21:51 2019
// Host        : DESKTOP-EVPNNIR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Project/16_proj_fwisc_uart/vivado_proj/fwrisc_uart.sim/sim_1/synth/func/modelsim/pll_tb_func_synth.v
// Design      : fwrisc_uart_wraper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IF_fifo
   (dready_r,
    rx_dready_r,
    dready_fifo,
    clk_out1,
    E);
  output dready_r;
  output rx_dready_r;
  input dready_fifo;
  input clk_out1;
  input [0:0]E;

  wire [0:0]E;
  wire clk_out1;
  wire dready_fifo;
  wire dready_r;
  wire rx_dready_r;

  FDRE #(
    .INIT(1'b0)) 
    dready_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dready_fifo),
        .Q(dready_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_dready_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(E),
        .Q(rx_dready_r),
        .R(1'b0));
endmodule

module UART_Registers
   (dready_r,
    rx_dready_r,
    dready_o,
    tx_fifo_full,
    fifo_empty,
    empty_reg,
    fifo_full,
    \UART_Tx_Ctrl_reg[0]_0 ,
    rx_en,
    \UART_Baudrate_Div_reg[6]_0 ,
    Q,
    \doutb_reg[0] ,
    \doutb_reg[4] ,
    S,
    \UART_Baudrate_Div_reg[17]_0 ,
    \UART_Baudrate_Div_reg[13]_0 ,
    \UART_Baudrate_Div_reg[9]_0 ,
    \UART_Baudrate_Div_reg[5]_0 ,
    \UART_Tx_Ctrl_reg[0]_1 ,
    \UART_Tx_Ctrl_reg[0]_2 ,
    \UART_Tx_Buffer_reg[31]_0 ,
    \UART_Rx_Buffer_reg[31]_0 ,
    dready_fifo,
    clk_out1,
    E,
    reset_IBUF,
    dready_o_reg_0,
    \UART_Tx_Ctrl_reg[0]_3 ,
    \UART_Rx_Ctrl_reg[0]_0 ,
    empty_reg_0,
    \addra_reg[2] ,
    empty_reg_1,
    regs_reg_1_i_364,
    rd_en,
    tx_o_i_4,
    CO,
    \cs_reg[1] ,
    p_0_in,
    \doutb_reg[7] ,
    \UART_Baudrate_Div_reg[31]_0 ,
    \UART_Baudrate_Div_reg[0]_0 ,
    \doutb_reg[7]_0 ,
    \doutb_reg[7]_1 );
  output dready_r;
  output rx_dready_r;
  output dready_o;
  output tx_fifo_full;
  output fifo_empty;
  output empty_reg;
  output fifo_full;
  output \UART_Tx_Ctrl_reg[0]_0 ;
  output rx_en;
  output \UART_Baudrate_Div_reg[6]_0 ;
  output [31:0]Q;
  output \doutb_reg[0] ;
  output \doutb_reg[4] ;
  output [1:0]S;
  output [3:0]\UART_Baudrate_Div_reg[17]_0 ;
  output [3:0]\UART_Baudrate_Div_reg[13]_0 ;
  output [3:0]\UART_Baudrate_Div_reg[9]_0 ;
  output [3:0]\UART_Baudrate_Div_reg[5]_0 ;
  output \UART_Tx_Ctrl_reg[0]_1 ;
  output \UART_Tx_Ctrl_reg[0]_2 ;
  output [7:0]\UART_Tx_Buffer_reg[31]_0 ;
  output [7:0]\UART_Rx_Buffer_reg[31]_0 ;
  input dready_fifo;
  input clk_out1;
  input [0:0]E;
  input reset_IBUF;
  input dready_o_reg_0;
  input \UART_Tx_Ctrl_reg[0]_3 ;
  input \UART_Rx_Ctrl_reg[0]_0 ;
  input empty_reg_0;
  input \addra_reg[2] ;
  input empty_reg_1;
  input [2:0]regs_reg_1_i_364;
  input rd_en;
  input [1:0]tx_o_i_4;
  input [0:0]CO;
  input \cs_reg[1] ;
  input p_0_in;
  input [0:0]\doutb_reg[7] ;
  input [31:0]\UART_Baudrate_Div_reg[31]_0 ;
  input [0:0]\UART_Baudrate_Div_reg[0]_0 ;
  input \doutb_reg[7]_0 ;
  input [7:0]\doutb_reg[7]_1 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire [31:0]Q;
  wire [1:0]S;
  wire [0:0]\UART_Baudrate_Div_reg[0]_0 ;
  wire [3:0]\UART_Baudrate_Div_reg[13]_0 ;
  wire [3:0]\UART_Baudrate_Div_reg[17]_0 ;
  wire [31:0]\UART_Baudrate_Div_reg[31]_0 ;
  wire [3:0]\UART_Baudrate_Div_reg[5]_0 ;
  wire \UART_Baudrate_Div_reg[6]_0 ;
  wire [3:0]\UART_Baudrate_Div_reg[9]_0 ;
  wire [7:0]\UART_Rx_Buffer_reg[31]_0 ;
  wire \UART_Rx_Buffer_reg_n_0_[6] ;
  wire \UART_Rx_Ctrl_reg[0]_0 ;
  wire [6:6]UART_Tx_Buffer;
  wire [7:0]\UART_Tx_Buffer_reg[31]_0 ;
  wire \UART_Tx_Ctrl_reg[0]_0 ;
  wire \UART_Tx_Ctrl_reg[0]_1 ;
  wire \UART_Tx_Ctrl_reg[0]_2 ;
  wire \UART_Tx_Ctrl_reg[0]_3 ;
  wire \addra_reg[2] ;
  wire clk_out1;
  wire \cs_reg[1] ;
  wire [7:0]doutb;
  wire \doutb_reg[0] ;
  wire \doutb_reg[4] ;
  wire [0:0]\doutb_reg[7] ;
  wire \doutb_reg[7]_0 ;
  wire [7:0]\doutb_reg[7]_1 ;
  wire dready_fifo;
  wire dready_o;
  wire dready_o_reg_0;
  wire dready_r;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire fifo_empty;
  wire fifo_full;
  wire p_0_in;
  wire rd_en;
  wire [2:0]regs_reg_1_i_364;
  wire reset_IBUF;
  wire rx_dready_r;
  wire rx_en;
  wire [7:0]tx_data;
  wire tx_fifo_full;
  wire [1:0]tx_o_i_4;

  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[0] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [0]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[10] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [10]),
        .Q(Q[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[11] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [11]),
        .Q(Q[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[12] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [12]),
        .Q(Q[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[13] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [13]),
        .Q(Q[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[14] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [14]),
        .Q(Q[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[15] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [15]),
        .Q(Q[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[16] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [16]),
        .Q(Q[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[17] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [17]),
        .Q(Q[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[18] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [18]),
        .Q(Q[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[19] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [19]),
        .Q(Q[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[1] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [1]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[20] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [20]),
        .Q(Q[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[21] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [21]),
        .Q(Q[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[22] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [22]),
        .Q(Q[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[23] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [23]),
        .Q(Q[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[24] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [24]),
        .Q(Q[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[25] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [25]),
        .Q(Q[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[26] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [26]),
        .Q(Q[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[27] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [27]),
        .Q(Q[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[28] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [28]),
        .Q(Q[28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[29] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [29]),
        .Q(Q[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[2] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [2]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[30] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [30]),
        .Q(Q[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[31] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [31]),
        .Q(Q[31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[3] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [3]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[4] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [4]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[5] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [5]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[6] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [6]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[7] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [7]),
        .Q(Q[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[8] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [8]),
        .Q(Q[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Baudrate_Div_reg[9] 
       (.C(clk_out1),
        .CE(\UART_Baudrate_Div_reg[0]_0 ),
        .D(\UART_Baudrate_Div_reg[31]_0 [9]),
        .Q(Q[9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[0]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[1]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[2]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(fifo_full),
        .Q(\UART_Rx_Buffer_reg[31]_0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[3]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[4]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[5]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[6]),
        .Q(\UART_Rx_Buffer_reg_n_0_[6] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Buffer_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(doutb[7]),
        .Q(\UART_Rx_Buffer_reg[31]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Rx_Ctrl_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\UART_Rx_Ctrl_reg[0]_0 ),
        .Q(rx_en),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[0]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[1]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[2]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(fifo_empty),
        .Q(\UART_Tx_Buffer_reg[31]_0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[3]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[4]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[5]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[6]),
        .Q(UART_Tx_Buffer),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Buffer_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(tx_data[7]),
        .Q(\UART_Tx_Buffer_reg[31]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \UART_Tx_Ctrl_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\UART_Tx_Ctrl_reg[0]_3 ),
        .Q(\UART_Tx_Ctrl_reg[0]_0 ),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \clk_cnt[0]_i_1 
       (.I0(reset_IBUF),
        .I1(\UART_Tx_Ctrl_reg[0]_0 ),
        .I2(CO),
        .O(\UART_Tx_Ctrl_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cs[1]_i_2 
       (.I0(\UART_Tx_Ctrl_reg[0]_0 ),
        .I1(\cs_reg[1] ),
        .O(\UART_Tx_Ctrl_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    dready_o_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dready_o_reg_0),
        .Q(dready_o),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFCFCF4F7FFFFF4F7)) 
    regs_reg_1_i_382
       (.I0(Q[6]),
        .I1(regs_reg_1_i_364[2]),
        .I2(regs_reg_1_i_364[0]),
        .I3(UART_Tx_Buffer),
        .I4(regs_reg_1_i_364[1]),
        .I5(\UART_Rx_Buffer_reg_n_0_[6] ),
        .O(\UART_Baudrate_Div_reg[6]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__0_i_1
       (.I0(Q[9]),
        .O(\UART_Baudrate_Div_reg[9]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__0_i_2
       (.I0(Q[8]),
        .O(\UART_Baudrate_Div_reg[9]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__0_i_3
       (.I0(Q[7]),
        .O(\UART_Baudrate_Div_reg[9]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__0_i_4
       (.I0(Q[6]),
        .O(\UART_Baudrate_Div_reg[9]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__1_i_1
       (.I0(Q[13]),
        .O(\UART_Baudrate_Div_reg[13]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__1_i_2
       (.I0(Q[12]),
        .O(\UART_Baudrate_Div_reg[13]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__1_i_3
       (.I0(Q[11]),
        .O(\UART_Baudrate_Div_reg[13]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__1_i_4
       (.I0(Q[10]),
        .O(\UART_Baudrate_Div_reg[13]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__2_i_1
       (.I0(Q[17]),
        .O(\UART_Baudrate_Div_reg[17]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__2_i_2
       (.I0(Q[16]),
        .O(\UART_Baudrate_Div_reg[17]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__2_i_3
       (.I0(Q[15]),
        .O(\UART_Baudrate_Div_reg[17]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__2_i_4
       (.I0(Q[14]),
        .O(\UART_Baudrate_Div_reg[17]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__3_i_1
       (.I0(Q[19]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry__3_i_2
       (.I0(Q[18]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry_i_1
       (.I0(Q[5]),
        .O(\UART_Baudrate_Div_reg[5]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry_i_2
       (.I0(Q[4]),
        .O(\UART_Baudrate_Div_reg[5]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry_i_3
       (.I0(Q[3]),
        .O(\UART_Baudrate_Div_reg[5]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    tick_should_flip0_carry_i_4
       (.I0(Q[2]),
        .O(\UART_Baudrate_Div_reg[5]_0 [0]));
  IF_fifo u_if_fifo
       (.E(E),
        .clk_out1(clk_out1),
        .dready_fifo(dready_fifo),
        .dready_r(dready_r),
        .rx_dready_r(rx_dready_r));
  my_fifo u_rx_fifo
       (.D({fifo_full,doutb}),
        .E(E),
        .\addra_reg[2]_0 (\addra_reg[2] ),
        .clk_out1(clk_out1),
        .\doutb_reg[7] (\doutb_reg[7]_0 ),
        .\doutb_reg[7]_0 (\doutb_reg[7]_1 ),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .reset_IBUF(reset_IBUF));
  my_fifo_2 u_tx_fifo
       (.D({fifo_empty,tx_data}),
        .clk_out1(clk_out1),
        .\doutb_reg[0] (\doutb_reg[0] ),
        .\doutb_reg[4] (\doutb_reg[4] ),
        .\doutb_reg[7] (\doutb_reg[7] ),
        .\doutb_reg[7]_0 (\UART_Baudrate_Div_reg[31]_0 [7:0]),
        .empty_reg_0(empty_reg_1),
        .p_0_in(p_0_in),
        .rd_en(rd_en),
        .reset_IBUF(reset_IBUF),
        .tx_fifo_full(tx_fifo_full),
        .tx_o_i_4(tx_o_i_4));
endmodule

module UART_baudrate_gen
   (tick_should_flip0,
    CO,
    \UART_Baudrate_Div_reg[19] ,
    send_tick,
    \cs_reg[3] ,
    \cs_reg[0] ,
    E,
    \clk_cnt_reg[19]_0 ,
    clk_out1,
    Q,
    tick_should_flip_carry_i_4__0,
    tick_should_flip_carry_i_3__0,
    tick_should_flip_carry_i_1__0,
    tick_should_flip_carry__0_i_3__0,
    S,
    reset_IBUF,
    tx_o_reg,
    tx_o_reg_0,
    send_tick_r);
  output [17:0]tick_should_flip0;
  output [0:0]CO;
  output [0:0]\UART_Baudrate_Div_reg[19] ;
  output send_tick;
  output \cs_reg[3] ;
  output \cs_reg[0] ;
  output [0:0]E;
  input \clk_cnt_reg[19]_0 ;
  input clk_out1;
  input [18:0]Q;
  input [3:0]tick_should_flip_carry_i_4__0;
  input [3:0]tick_should_flip_carry_i_3__0;
  input [3:0]tick_should_flip_carry_i_1__0;
  input [3:0]tick_should_flip_carry__0_i_3__0;
  input [1:0]S;
  input reset_IBUF;
  input [3:0]tx_o_reg;
  input tx_o_reg_0;
  input send_tick_r;

  wire [0:0]CO;
  wire [0:0]E;
  wire [18:0]Q;
  wire [1:0]S;
  wire [0:0]\UART_Baudrate_Div_reg[19] ;
  wire \clk_cnt[0]_i_3_n_0 ;
  wire [19:0]clk_cnt_reg;
  wire \clk_cnt_reg[0]_i_2_n_0 ;
  wire \clk_cnt_reg[0]_i_2_n_1 ;
  wire \clk_cnt_reg[0]_i_2_n_2 ;
  wire \clk_cnt_reg[0]_i_2_n_3 ;
  wire \clk_cnt_reg[0]_i_2_n_4 ;
  wire \clk_cnt_reg[0]_i_2_n_5 ;
  wire \clk_cnt_reg[0]_i_2_n_6 ;
  wire \clk_cnt_reg[0]_i_2_n_7 ;
  wire \clk_cnt_reg[12]_i_1_n_0 ;
  wire \clk_cnt_reg[12]_i_1_n_1 ;
  wire \clk_cnt_reg[12]_i_1_n_2 ;
  wire \clk_cnt_reg[12]_i_1_n_3 ;
  wire \clk_cnt_reg[12]_i_1_n_4 ;
  wire \clk_cnt_reg[12]_i_1_n_5 ;
  wire \clk_cnt_reg[12]_i_1_n_6 ;
  wire \clk_cnt_reg[12]_i_1_n_7 ;
  wire \clk_cnt_reg[16]_i_1_n_1 ;
  wire \clk_cnt_reg[16]_i_1_n_2 ;
  wire \clk_cnt_reg[16]_i_1_n_3 ;
  wire \clk_cnt_reg[16]_i_1_n_4 ;
  wire \clk_cnt_reg[16]_i_1_n_5 ;
  wire \clk_cnt_reg[16]_i_1_n_6 ;
  wire \clk_cnt_reg[16]_i_1_n_7 ;
  wire \clk_cnt_reg[19]_0 ;
  wire \clk_cnt_reg[4]_i_1_n_0 ;
  wire \clk_cnt_reg[4]_i_1_n_1 ;
  wire \clk_cnt_reg[4]_i_1_n_2 ;
  wire \clk_cnt_reg[4]_i_1_n_3 ;
  wire \clk_cnt_reg[4]_i_1_n_4 ;
  wire \clk_cnt_reg[4]_i_1_n_5 ;
  wire \clk_cnt_reg[4]_i_1_n_6 ;
  wire \clk_cnt_reg[4]_i_1_n_7 ;
  wire \clk_cnt_reg[8]_i_1_n_0 ;
  wire \clk_cnt_reg[8]_i_1_n_1 ;
  wire \clk_cnt_reg[8]_i_1_n_2 ;
  wire \clk_cnt_reg[8]_i_1_n_3 ;
  wire \clk_cnt_reg[8]_i_1_n_4 ;
  wire \clk_cnt_reg[8]_i_1_n_5 ;
  wire \clk_cnt_reg[8]_i_1_n_6 ;
  wire \clk_cnt_reg[8]_i_1_n_7 ;
  wire clk_out1;
  wire \cs_reg[0] ;
  wire \cs_reg[3] ;
  wire reset_IBUF;
  wire send_tick;
  wire send_tick_r;
  wire tick_o_i_1_n_0;
  wire [17:0]tick_should_flip0;
  wire tick_should_flip0_carry__0_n_0;
  wire tick_should_flip0_carry__0_n_1;
  wire tick_should_flip0_carry__0_n_2;
  wire tick_should_flip0_carry__0_n_3;
  wire tick_should_flip0_carry__1_n_0;
  wire tick_should_flip0_carry__1_n_1;
  wire tick_should_flip0_carry__1_n_2;
  wire tick_should_flip0_carry__1_n_3;
  wire tick_should_flip0_carry__2_n_0;
  wire tick_should_flip0_carry__2_n_1;
  wire tick_should_flip0_carry__2_n_2;
  wire tick_should_flip0_carry__2_n_3;
  wire tick_should_flip0_carry__3_n_3;
  wire tick_should_flip0_carry_n_0;
  wire tick_should_flip0_carry_n_1;
  wire tick_should_flip0_carry_n_2;
  wire tick_should_flip0_carry_n_3;
  wire tick_should_flip_carry__0_i_1_n_0;
  wire tick_should_flip_carry__0_i_2_n_0;
  wire [3:0]tick_should_flip_carry__0_i_3__0;
  wire tick_should_flip_carry__0_i_3_n_0;
  wire tick_should_flip_carry__0_n_0;
  wire tick_should_flip_carry__0_n_1;
  wire tick_should_flip_carry__0_n_2;
  wire tick_should_flip_carry__0_n_3;
  wire tick_should_flip_carry__1_n_2;
  wire tick_should_flip_carry__1_n_3;
  wire [3:0]tick_should_flip_carry_i_1__0;
  wire tick_should_flip_carry_i_1_n_0;
  wire tick_should_flip_carry_i_2_n_0;
  wire [3:0]tick_should_flip_carry_i_3__0;
  wire tick_should_flip_carry_i_3_n_0;
  wire [3:0]tick_should_flip_carry_i_4__0;
  wire tick_should_flip_carry_i_4_n_0;
  wire tick_should_flip_carry_n_0;
  wire tick_should_flip_carry_n_1;
  wire tick_should_flip_carry_n_2;
  wire tick_should_flip_carry_n_3;
  wire tx_o_i_3_n_0;
  wire [3:0]tx_o_reg;
  wire tx_o_reg_0;
  wire [3:3]\NLW_clk_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_tick_should_flip0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_tick_should_flip0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry_O_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_tick_should_flip_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[3]_i_2 
       (.I0(send_tick),
        .I1(send_tick_r),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_3 
       (.I0(clk_cnt_reg[0]),
        .O(\clk_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2_n_7 ),
        .Q(clk_cnt_reg[0]),
        .R(\clk_cnt_reg[19]_0 ));
  CARRY4 \clk_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[0]_i_2_n_0 ,\clk_cnt_reg[0]_i_2_n_1 ,\clk_cnt_reg[0]_i_2_n_2 ,\clk_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_cnt_reg[0]_i_2_n_4 ,\clk_cnt_reg[0]_i_2_n_5 ,\clk_cnt_reg[0]_i_2_n_6 ,\clk_cnt_reg[0]_i_2_n_7 }),
        .S({clk_cnt_reg[3:1],\clk_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_5 ),
        .Q(clk_cnt_reg[10]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_4 ),
        .Q(clk_cnt_reg[11]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_7 ),
        .Q(clk_cnt_reg[12]),
        .R(\clk_cnt_reg[19]_0 ));
  CARRY4 \clk_cnt_reg[12]_i_1 
       (.CI(\clk_cnt_reg[8]_i_1_n_0 ),
        .CO({\clk_cnt_reg[12]_i_1_n_0 ,\clk_cnt_reg[12]_i_1_n_1 ,\clk_cnt_reg[12]_i_1_n_2 ,\clk_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_1_n_4 ,\clk_cnt_reg[12]_i_1_n_5 ,\clk_cnt_reg[12]_i_1_n_6 ,\clk_cnt_reg[12]_i_1_n_7 }),
        .S(clk_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_6 ),
        .Q(clk_cnt_reg[13]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_5 ),
        .Q(clk_cnt_reg[14]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1_n_4 ),
        .Q(clk_cnt_reg[15]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_7 ),
        .Q(clk_cnt_reg[16]),
        .R(\clk_cnt_reg[19]_0 ));
  CARRY4 \clk_cnt_reg[16]_i_1 
       (.CI(\clk_cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_clk_cnt_reg[16]_i_1_CO_UNCONNECTED [3],\clk_cnt_reg[16]_i_1_n_1 ,\clk_cnt_reg[16]_i_1_n_2 ,\clk_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_1_n_4 ,\clk_cnt_reg[16]_i_1_n_5 ,\clk_cnt_reg[16]_i_1_n_6 ,\clk_cnt_reg[16]_i_1_n_7 }),
        .S(clk_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_6 ),
        .Q(clk_cnt_reg[17]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_5 ),
        .Q(clk_cnt_reg[18]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1_n_4 ),
        .Q(clk_cnt_reg[19]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2_n_6 ),
        .Q(clk_cnt_reg[1]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2_n_5 ),
        .Q(clk_cnt_reg[2]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2_n_4 ),
        .Q(clk_cnt_reg[3]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_7 ),
        .Q(clk_cnt_reg[4]),
        .R(\clk_cnt_reg[19]_0 ));
  CARRY4 \clk_cnt_reg[4]_i_1 
       (.CI(\clk_cnt_reg[0]_i_2_n_0 ),
        .CO({\clk_cnt_reg[4]_i_1_n_0 ,\clk_cnt_reg[4]_i_1_n_1 ,\clk_cnt_reg[4]_i_1_n_2 ,\clk_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_1_n_4 ,\clk_cnt_reg[4]_i_1_n_5 ,\clk_cnt_reg[4]_i_1_n_6 ,\clk_cnt_reg[4]_i_1_n_7 }),
        .S(clk_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_6 ),
        .Q(clk_cnt_reg[5]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_5 ),
        .Q(clk_cnt_reg[6]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1_n_4 ),
        .Q(clk_cnt_reg[7]),
        .R(\clk_cnt_reg[19]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_7 ),
        .Q(clk_cnt_reg[8]),
        .R(\clk_cnt_reg[19]_0 ));
  CARRY4 \clk_cnt_reg[8]_i_1 
       (.CI(\clk_cnt_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg[8]_i_1_n_0 ,\clk_cnt_reg[8]_i_1_n_1 ,\clk_cnt_reg[8]_i_1_n_2 ,\clk_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_1_n_4 ,\clk_cnt_reg[8]_i_1_n_5 ,\clk_cnt_reg[8]_i_1_n_6 ,\clk_cnt_reg[8]_i_1_n_7 }),
        .S(clk_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1_n_6 ),
        .Q(clk_cnt_reg[9]),
        .R(\clk_cnt_reg[19]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    tick_o_i_1
       (.I0(\UART_Baudrate_Div_reg[19] ),
        .I1(send_tick),
        .O(tick_o_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_o_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tick_o_i_1_n_0),
        .Q(send_tick),
        .R(reset_IBUF));
  CARRY4 tick_should_flip0_carry
       (.CI(1'b0),
        .CO({tick_should_flip0_carry_n_0,tick_should_flip0_carry_n_1,tick_should_flip0_carry_n_2,tick_should_flip0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(tick_should_flip0[3:0]),
        .S(tick_should_flip_carry_i_4__0));
  CARRY4 tick_should_flip0_carry__0
       (.CI(tick_should_flip0_carry_n_0),
        .CO({tick_should_flip0_carry__0_n_0,tick_should_flip0_carry__0_n_1,tick_should_flip0_carry__0_n_2,tick_should_flip0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(tick_should_flip0[7:4]),
        .S(tick_should_flip_carry_i_3__0));
  CARRY4 tick_should_flip0_carry__1
       (.CI(tick_should_flip0_carry__0_n_0),
        .CO({tick_should_flip0_carry__1_n_0,tick_should_flip0_carry__1_n_1,tick_should_flip0_carry__1_n_2,tick_should_flip0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(tick_should_flip0[11:8]),
        .S(tick_should_flip_carry_i_1__0));
  CARRY4 tick_should_flip0_carry__2
       (.CI(tick_should_flip0_carry__1_n_0),
        .CO({tick_should_flip0_carry__2_n_0,tick_should_flip0_carry__2_n_1,tick_should_flip0_carry__2_n_2,tick_should_flip0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(tick_should_flip0[15:12]),
        .S(tick_should_flip_carry__0_i_3__0));
  CARRY4 tick_should_flip0_carry__3
       (.CI(tick_should_flip0_carry__2_n_0),
        .CO({NLW_tick_should_flip0_carry__3_CO_UNCONNECTED[3],CO,NLW_tick_should_flip0_carry__3_CO_UNCONNECTED[1],tick_should_flip0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[18:17]}),
        .O({NLW_tick_should_flip0_carry__3_O_UNCONNECTED[3:2],tick_should_flip0[17:16]}),
        .S({1'b0,1'b1,S}));
  CARRY4 tick_should_flip_carry
       (.CI(1'b0),
        .CO({tick_should_flip_carry_n_0,tick_should_flip_carry_n_1,tick_should_flip_carry_n_2,tick_should_flip_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry_O_UNCONNECTED[3:0]),
        .S({tick_should_flip_carry_i_1_n_0,tick_should_flip_carry_i_2_n_0,tick_should_flip_carry_i_3_n_0,tick_should_flip_carry_i_4_n_0}));
  CARRY4 tick_should_flip_carry__0
       (.CI(tick_should_flip_carry_n_0),
        .CO({tick_should_flip_carry__0_n_0,tick_should_flip_carry__0_n_1,tick_should_flip_carry__0_n_2,tick_should_flip_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry__0_O_UNCONNECTED[3:0]),
        .S({CO,tick_should_flip_carry__0_i_1_n_0,tick_should_flip_carry__0_i_2_n_0,tick_should_flip_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h4004)) 
    tick_should_flip_carry__0_i_1
       (.I0(clk_cnt_reg[19]),
        .I1(CO),
        .I2(clk_cnt_reg[18]),
        .I3(tick_should_flip0[17]),
        .O(tick_should_flip_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry__0_i_2
       (.I0(clk_cnt_reg[17]),
        .I1(tick_should_flip0[16]),
        .I2(tick_should_flip0[14]),
        .I3(clk_cnt_reg[15]),
        .I4(tick_should_flip0[15]),
        .I5(clk_cnt_reg[16]),
        .O(tick_should_flip_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry__0_i_3
       (.I0(clk_cnt_reg[14]),
        .I1(tick_should_flip0[13]),
        .I2(tick_should_flip0[12]),
        .I3(clk_cnt_reg[13]),
        .I4(tick_should_flip0[11]),
        .I5(clk_cnt_reg[12]),
        .O(tick_should_flip_carry__0_i_3_n_0));
  CARRY4 tick_should_flip_carry__1
       (.CI(tick_should_flip_carry__0_n_0),
        .CO({NLW_tick_should_flip_carry__1_CO_UNCONNECTED[3],\UART_Baudrate_Div_reg[19] ,tick_should_flip_carry__1_n_2,tick_should_flip_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,CO,CO,CO}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_1
       (.I0(clk_cnt_reg[11]),
        .I1(tick_should_flip0[10]),
        .I2(tick_should_flip0[8]),
        .I3(clk_cnt_reg[9]),
        .I4(tick_should_flip0[9]),
        .I5(clk_cnt_reg[10]),
        .O(tick_should_flip_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_2
       (.I0(clk_cnt_reg[8]),
        .I1(tick_should_flip0[7]),
        .I2(tick_should_flip0[6]),
        .I3(clk_cnt_reg[7]),
        .I4(tick_should_flip0[5]),
        .I5(clk_cnt_reg[6]),
        .O(tick_should_flip_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_3
       (.I0(clk_cnt_reg[5]),
        .I1(tick_should_flip0[4]),
        .I2(tick_should_flip0[2]),
        .I3(clk_cnt_reg[3]),
        .I4(tick_should_flip0[3]),
        .I5(clk_cnt_reg[4]),
        .O(tick_should_flip_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    tick_should_flip_carry_i_4
       (.I0(Q[0]),
        .I1(clk_cnt_reg[0]),
        .I2(tick_should_flip0[0]),
        .I3(clk_cnt_reg[1]),
        .I4(tick_should_flip0[1]),
        .I5(clk_cnt_reg[2]),
        .O(tick_should_flip_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABAAABABAAA)) 
    tx_o_i_1
       (.I0(reset_IBUF),
        .I1(tx_o_reg[0]),
        .I2(E),
        .I3(tx_o_reg[2]),
        .I4(tx_o_reg[1]),
        .I5(tx_o_reg[3]),
        .O(\cs_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAEAAEAAAAAAAEA)) 
    tx_o_i_2
       (.I0(reset_IBUF),
        .I1(tx_o_i_3_n_0),
        .I2(tx_o_reg[3]),
        .I3(tx_o_reg[1]),
        .I4(tx_o_reg[2]),
        .I5(tx_o_reg_0),
        .O(\cs_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h04)) 
    tx_o_i_3
       (.I0(send_tick_r),
        .I1(send_tick),
        .I2(tx_o_reg[0]),
        .O(tx_o_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "UART_baudrate_gen" *) 
module UART_baudrate_gen_1
   (tick,
    E,
    tick_o_reg_0,
    clk_out1,
    CO,
    reset_IBUF,
    D,
    \rx_data_reg[0] ,
    tick_reg,
    tick_should_flip0,
    Q,
    \clk_cnt_reg[19]_0 );
  output tick;
  output [0:0]E;
  output [0:0]tick_o_reg_0;
  input clk_out1;
  input [0:0]CO;
  input reset_IBUF;
  input [2:0]D;
  input \rx_data_reg[0] ;
  input tick_reg;
  input [17:0]tick_should_flip0;
  input [0:0]Q;
  input [3:0]\clk_cnt_reg[19]_0 ;

  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \clk_cnt[0]_i_1__0_n_0 ;
  wire \clk_cnt[0]_i_3__0_n_0 ;
  wire [19:0]clk_cnt_reg;
  wire \clk_cnt_reg[0]_i_2__0_n_0 ;
  wire \clk_cnt_reg[0]_i_2__0_n_1 ;
  wire \clk_cnt_reg[0]_i_2__0_n_2 ;
  wire \clk_cnt_reg[0]_i_2__0_n_3 ;
  wire \clk_cnt_reg[0]_i_2__0_n_4 ;
  wire \clk_cnt_reg[0]_i_2__0_n_5 ;
  wire \clk_cnt_reg[0]_i_2__0_n_6 ;
  wire \clk_cnt_reg[0]_i_2__0_n_7 ;
  wire \clk_cnt_reg[12]_i_1__0_n_0 ;
  wire \clk_cnt_reg[12]_i_1__0_n_1 ;
  wire \clk_cnt_reg[12]_i_1__0_n_2 ;
  wire \clk_cnt_reg[12]_i_1__0_n_3 ;
  wire \clk_cnt_reg[12]_i_1__0_n_4 ;
  wire \clk_cnt_reg[12]_i_1__0_n_5 ;
  wire \clk_cnt_reg[12]_i_1__0_n_6 ;
  wire \clk_cnt_reg[12]_i_1__0_n_7 ;
  wire \clk_cnt_reg[16]_i_1__0_n_1 ;
  wire \clk_cnt_reg[16]_i_1__0_n_2 ;
  wire \clk_cnt_reg[16]_i_1__0_n_3 ;
  wire \clk_cnt_reg[16]_i_1__0_n_4 ;
  wire \clk_cnt_reg[16]_i_1__0_n_5 ;
  wire \clk_cnt_reg[16]_i_1__0_n_6 ;
  wire \clk_cnt_reg[16]_i_1__0_n_7 ;
  wire [3:0]\clk_cnt_reg[19]_0 ;
  wire \clk_cnt_reg[4]_i_1__0_n_0 ;
  wire \clk_cnt_reg[4]_i_1__0_n_1 ;
  wire \clk_cnt_reg[4]_i_1__0_n_2 ;
  wire \clk_cnt_reg[4]_i_1__0_n_3 ;
  wire \clk_cnt_reg[4]_i_1__0_n_4 ;
  wire \clk_cnt_reg[4]_i_1__0_n_5 ;
  wire \clk_cnt_reg[4]_i_1__0_n_6 ;
  wire \clk_cnt_reg[4]_i_1__0_n_7 ;
  wire \clk_cnt_reg[8]_i_1__0_n_0 ;
  wire \clk_cnt_reg[8]_i_1__0_n_1 ;
  wire \clk_cnt_reg[8]_i_1__0_n_2 ;
  wire \clk_cnt_reg[8]_i_1__0_n_3 ;
  wire \clk_cnt_reg[8]_i_1__0_n_4 ;
  wire \clk_cnt_reg[8]_i_1__0_n_5 ;
  wire \clk_cnt_reg[8]_i_1__0_n_6 ;
  wire \clk_cnt_reg[8]_i_1__0_n_7 ;
  wire clk_out1;
  wire cnt_should_zero;
  wire reset_IBUF;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data_reg[0] ;
  wire tick;
  wire tick_o_i_1__1_n_0;
  wire [0:0]tick_o_reg_0;
  wire tick_reg;
  wire [17:0]tick_should_flip0;
  wire tick_should_flip_carry__0_i_1__0_n_0;
  wire tick_should_flip_carry__0_i_2__0_n_0;
  wire tick_should_flip_carry__0_i_3__0_n_0;
  wire tick_should_flip_carry__0_n_0;
  wire tick_should_flip_carry__0_n_1;
  wire tick_should_flip_carry__0_n_2;
  wire tick_should_flip_carry__0_n_3;
  wire tick_should_flip_carry__1_n_2;
  wire tick_should_flip_carry__1_n_3;
  wire tick_should_flip_carry_i_1__0_n_0;
  wire tick_should_flip_carry_i_2__0_n_0;
  wire tick_should_flip_carry_i_3__0_n_0;
  wire tick_should_flip_carry_i_4__0_n_0;
  wire tick_should_flip_carry_n_0;
  wire tick_should_flip_carry_n_1;
  wire tick_should_flip_carry_n_2;
  wire tick_should_flip_carry_n_3;
  wire [3:3]\NLW_clk_cnt_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_tick_should_flip_carry_O_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_tick_should_flip_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \clk_cnt[0]_i_1__0 
       (.I0(cnt_should_zero),
        .I1(\clk_cnt_reg[19]_0 [1]),
        .I2(\clk_cnt_reg[19]_0 [3]),
        .I3(\clk_cnt_reg[19]_0 [0]),
        .I4(\clk_cnt_reg[19]_0 [2]),
        .I5(reset_IBUF),
        .O(\clk_cnt[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_3__0 
       (.I0(clk_cnt_reg[0]),
        .O(\clk_cnt[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__0_n_7 ),
        .Q(clk_cnt_reg[0]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  CARRY4 \clk_cnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[0]_i_2__0_n_0 ,\clk_cnt_reg[0]_i_2__0_n_1 ,\clk_cnt_reg[0]_i_2__0_n_2 ,\clk_cnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_cnt_reg[0]_i_2__0_n_4 ,\clk_cnt_reg[0]_i_2__0_n_5 ,\clk_cnt_reg[0]_i_2__0_n_6 ,\clk_cnt_reg[0]_i_2__0_n_7 }),
        .S({clk_cnt_reg[3:1],\clk_cnt[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__0_n_5 ),
        .Q(clk_cnt_reg[10]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__0_n_4 ),
        .Q(clk_cnt_reg[11]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__0_n_7 ),
        .Q(clk_cnt_reg[12]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  CARRY4 \clk_cnt_reg[12]_i_1__0 
       (.CI(\clk_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\clk_cnt_reg[12]_i_1__0_n_0 ,\clk_cnt_reg[12]_i_1__0_n_1 ,\clk_cnt_reg[12]_i_1__0_n_2 ,\clk_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_1__0_n_4 ,\clk_cnt_reg[12]_i_1__0_n_5 ,\clk_cnt_reg[12]_i_1__0_n_6 ,\clk_cnt_reg[12]_i_1__0_n_7 }),
        .S(clk_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__0_n_6 ),
        .Q(clk_cnt_reg[13]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__0_n_5 ),
        .Q(clk_cnt_reg[14]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__0_n_4 ),
        .Q(clk_cnt_reg[15]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__0_n_7 ),
        .Q(clk_cnt_reg[16]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  CARRY4 \clk_cnt_reg[16]_i_1__0 
       (.CI(\clk_cnt_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_clk_cnt_reg[16]_i_1__0_CO_UNCONNECTED [3],\clk_cnt_reg[16]_i_1__0_n_1 ,\clk_cnt_reg[16]_i_1__0_n_2 ,\clk_cnt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_1__0_n_4 ,\clk_cnt_reg[16]_i_1__0_n_5 ,\clk_cnt_reg[16]_i_1__0_n_6 ,\clk_cnt_reg[16]_i_1__0_n_7 }),
        .S(clk_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__0_n_6 ),
        .Q(clk_cnt_reg[17]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__0_n_5 ),
        .Q(clk_cnt_reg[18]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__0_n_4 ),
        .Q(clk_cnt_reg[19]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__0_n_6 ),
        .Q(clk_cnt_reg[1]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__0_n_5 ),
        .Q(clk_cnt_reg[2]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__0_n_4 ),
        .Q(clk_cnt_reg[3]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__0_n_7 ),
        .Q(clk_cnt_reg[4]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  CARRY4 \clk_cnt_reg[4]_i_1__0 
       (.CI(\clk_cnt_reg[0]_i_2__0_n_0 ),
        .CO({\clk_cnt_reg[4]_i_1__0_n_0 ,\clk_cnt_reg[4]_i_1__0_n_1 ,\clk_cnt_reg[4]_i_1__0_n_2 ,\clk_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_1__0_n_4 ,\clk_cnt_reg[4]_i_1__0_n_5 ,\clk_cnt_reg[4]_i_1__0_n_6 ,\clk_cnt_reg[4]_i_1__0_n_7 }),
        .S(clk_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__0_n_6 ),
        .Q(clk_cnt_reg[5]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__0_n_5 ),
        .Q(clk_cnt_reg[6]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__0_n_4 ),
        .Q(clk_cnt_reg[7]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__0_n_7 ),
        .Q(clk_cnt_reg[8]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  CARRY4 \clk_cnt_reg[8]_i_1__0 
       (.CI(\clk_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\clk_cnt_reg[8]_i_1__0_n_0 ,\clk_cnt_reg[8]_i_1__0_n_1 ,\clk_cnt_reg[8]_i_1__0_n_2 ,\clk_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_1__0_n_4 ,\clk_cnt_reg[8]_i_1__0_n_5 ,\clk_cnt_reg[8]_i_1__0_n_6 ,\clk_cnt_reg[8]_i_1__0_n_7 }),
        .S(clk_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__0_n_6 ),
        .Q(clk_cnt_reg[9]),
        .R(\clk_cnt[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \rx_data[7]_i_1 
       (.I0(D[1]),
        .I1(\rx_data_reg[0] ),
        .I2(D[0]),
        .I3(D[2]),
        .I4(\rx_data[7]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \rx_data[7]_i_3 
       (.I0(\clk_cnt_reg[19]_0 [1]),
        .I1(\clk_cnt_reg[19]_0 [3]),
        .I2(tick),
        .I3(\clk_cnt_reg[19]_0 [2]),
        .I4(\clk_cnt_reg[19]_0 [0]),
        .I5(tick_reg),
        .O(\rx_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tick_counter[3]_i_2 
       (.I0(tick),
        .I1(tick_reg),
        .O(tick_o_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h6)) 
    tick_o_i_1__1
       (.I0(cnt_should_zero),
        .I1(tick),
        .O(tick_o_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_o_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tick_o_i_1__1_n_0),
        .Q(tick),
        .R(reset_IBUF));
  CARRY4 tick_should_flip_carry
       (.CI(1'b0),
        .CO({tick_should_flip_carry_n_0,tick_should_flip_carry_n_1,tick_should_flip_carry_n_2,tick_should_flip_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry_O_UNCONNECTED[3:0]),
        .S({tick_should_flip_carry_i_1__0_n_0,tick_should_flip_carry_i_2__0_n_0,tick_should_flip_carry_i_3__0_n_0,tick_should_flip_carry_i_4__0_n_0}));
  CARRY4 tick_should_flip_carry__0
       (.CI(tick_should_flip_carry_n_0),
        .CO({tick_should_flip_carry__0_n_0,tick_should_flip_carry__0_n_1,tick_should_flip_carry__0_n_2,tick_should_flip_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry__0_O_UNCONNECTED[3:0]),
        .S({CO,tick_should_flip_carry__0_i_1__0_n_0,tick_should_flip_carry__0_i_2__0_n_0,tick_should_flip_carry__0_i_3__0_n_0}));
  LUT4 #(
    .INIT(16'h4004)) 
    tick_should_flip_carry__0_i_1__0
       (.I0(clk_cnt_reg[19]),
        .I1(CO),
        .I2(clk_cnt_reg[18]),
        .I3(tick_should_flip0[17]),
        .O(tick_should_flip_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry__0_i_2__0
       (.I0(clk_cnt_reg[17]),
        .I1(tick_should_flip0[16]),
        .I2(tick_should_flip0[14]),
        .I3(clk_cnt_reg[15]),
        .I4(tick_should_flip0[15]),
        .I5(clk_cnt_reg[16]),
        .O(tick_should_flip_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry__0_i_3__0
       (.I0(clk_cnt_reg[14]),
        .I1(tick_should_flip0[13]),
        .I2(tick_should_flip0[12]),
        .I3(clk_cnt_reg[13]),
        .I4(tick_should_flip0[11]),
        .I5(clk_cnt_reg[12]),
        .O(tick_should_flip_carry__0_i_3__0_n_0));
  CARRY4 tick_should_flip_carry__1
       (.CI(tick_should_flip_carry__0_n_0),
        .CO({NLW_tick_should_flip_carry__1_CO_UNCONNECTED[3],cnt_should_zero,tick_should_flip_carry__1_n_2,tick_should_flip_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,CO,CO,CO}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_1__0
       (.I0(clk_cnt_reg[11]),
        .I1(tick_should_flip0[10]),
        .I2(tick_should_flip0[9]),
        .I3(clk_cnt_reg[10]),
        .I4(tick_should_flip0[8]),
        .I5(clk_cnt_reg[9]),
        .O(tick_should_flip_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_2__0
       (.I0(clk_cnt_reg[8]),
        .I1(tick_should_flip0[7]),
        .I2(tick_should_flip0[6]),
        .I3(clk_cnt_reg[7]),
        .I4(tick_should_flip0[5]),
        .I5(clk_cnt_reg[6]),
        .O(tick_should_flip_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tick_should_flip_carry_i_3__0
       (.I0(clk_cnt_reg[5]),
        .I1(tick_should_flip0[4]),
        .I2(tick_should_flip0[2]),
        .I3(clk_cnt_reg[3]),
        .I4(tick_should_flip0[3]),
        .I5(clk_cnt_reg[4]),
        .O(tick_should_flip_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    tick_should_flip_carry_i_4__0
       (.I0(clk_cnt_reg[0]),
        .I1(Q),
        .I2(tick_should_flip0[0]),
        .I3(clk_cnt_reg[1]),
        .I4(tick_should_flip0[1]),
        .I5(clk_cnt_reg[2]),
        .O(tick_should_flip_carry_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "UART_baudrate_gen" *) 
module UART_baudrate_gen_4
   (tick,
    E,
    \cs_reg[3] ,
    clk_out1,
    reset_IBUF,
    tick_reg,
    D,
    \rx_data_reg[0] ,
    \rx_data_reg[0]_0 ,
    Q);
  output tick;
  output [0:0]E;
  output [0:0]\cs_reg[3] ;
  input clk_out1;
  input reset_IBUF;
  input tick_reg;
  input [1:0]D;
  input \rx_data_reg[0] ;
  input \rx_data_reg[0]_0 ;
  input [3:0]Q;

  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \clk_cnt[0]_i_1__1_n_0 ;
  wire \clk_cnt[0]_i_3__1_n_0 ;
  wire [19:0]clk_cnt_reg;
  wire \clk_cnt_reg[0]_i_2__1_n_0 ;
  wire \clk_cnt_reg[0]_i_2__1_n_1 ;
  wire \clk_cnt_reg[0]_i_2__1_n_2 ;
  wire \clk_cnt_reg[0]_i_2__1_n_3 ;
  wire \clk_cnt_reg[0]_i_2__1_n_4 ;
  wire \clk_cnt_reg[0]_i_2__1_n_5 ;
  wire \clk_cnt_reg[0]_i_2__1_n_6 ;
  wire \clk_cnt_reg[0]_i_2__1_n_7 ;
  wire \clk_cnt_reg[12]_i_1__1_n_0 ;
  wire \clk_cnt_reg[12]_i_1__1_n_1 ;
  wire \clk_cnt_reg[12]_i_1__1_n_2 ;
  wire \clk_cnt_reg[12]_i_1__1_n_3 ;
  wire \clk_cnt_reg[12]_i_1__1_n_4 ;
  wire \clk_cnt_reg[12]_i_1__1_n_5 ;
  wire \clk_cnt_reg[12]_i_1__1_n_6 ;
  wire \clk_cnt_reg[12]_i_1__1_n_7 ;
  wire \clk_cnt_reg[16]_i_1__1_n_1 ;
  wire \clk_cnt_reg[16]_i_1__1_n_2 ;
  wire \clk_cnt_reg[16]_i_1__1_n_3 ;
  wire \clk_cnt_reg[16]_i_1__1_n_4 ;
  wire \clk_cnt_reg[16]_i_1__1_n_5 ;
  wire \clk_cnt_reg[16]_i_1__1_n_6 ;
  wire \clk_cnt_reg[16]_i_1__1_n_7 ;
  wire \clk_cnt_reg[4]_i_1__1_n_0 ;
  wire \clk_cnt_reg[4]_i_1__1_n_1 ;
  wire \clk_cnt_reg[4]_i_1__1_n_2 ;
  wire \clk_cnt_reg[4]_i_1__1_n_3 ;
  wire \clk_cnt_reg[4]_i_1__1_n_4 ;
  wire \clk_cnt_reg[4]_i_1__1_n_5 ;
  wire \clk_cnt_reg[4]_i_1__1_n_6 ;
  wire \clk_cnt_reg[4]_i_1__1_n_7 ;
  wire \clk_cnt_reg[8]_i_1__1_n_0 ;
  wire \clk_cnt_reg[8]_i_1__1_n_1 ;
  wire \clk_cnt_reg[8]_i_1__1_n_2 ;
  wire \clk_cnt_reg[8]_i_1__1_n_3 ;
  wire \clk_cnt_reg[8]_i_1__1_n_4 ;
  wire \clk_cnt_reg[8]_i_1__1_n_5 ;
  wire \clk_cnt_reg[8]_i_1__1_n_6 ;
  wire \clk_cnt_reg[8]_i_1__1_n_7 ;
  wire clk_out1;
  wire cnt_should_zero;
  wire [0:0]\cs_reg[3] ;
  wire reset_IBUF;
  wire \rx_data[7]_i_3__0_n_0 ;
  wire \rx_data_reg[0] ;
  wire \rx_data_reg[0]_0 ;
  wire tick;
  wire tick_o_i_1__0_n_0;
  wire tick_reg;
  wire tick_should_flip_carry__0_i_1__1_n_0;
  wire tick_should_flip_carry__0_i_2__1_n_0;
  wire tick_should_flip_carry__0_i_3__1_n_0;
  wire tick_should_flip_carry__0_n_2;
  wire tick_should_flip_carry__0_n_3;
  wire tick_should_flip_carry_i_1__1_n_0;
  wire tick_should_flip_carry_i_2__1_n_0;
  wire tick_should_flip_carry_i_3__1_n_0;
  wire tick_should_flip_carry_i_4__1_n_0;
  wire tick_should_flip_carry_n_0;
  wire tick_should_flip_carry_n_1;
  wire tick_should_flip_carry_n_2;
  wire tick_should_flip_carry_n_3;
  wire [3:3]\NLW_clk_cnt_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]NLW_tick_should_flip_carry_O_UNCONNECTED;
  wire [3:3]NLW_tick_should_flip_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_tick_should_flip_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \clk_cnt[0]_i_1__1 
       (.I0(cnt_should_zero),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(reset_IBUF),
        .O(\clk_cnt[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_3__1 
       (.I0(clk_cnt_reg[0]),
        .O(\clk_cnt[0]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__1_n_7 ),
        .Q(clk_cnt_reg[0]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  CARRY4 \clk_cnt_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[0]_i_2__1_n_0 ,\clk_cnt_reg[0]_i_2__1_n_1 ,\clk_cnt_reg[0]_i_2__1_n_2 ,\clk_cnt_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_cnt_reg[0]_i_2__1_n_4 ,\clk_cnt_reg[0]_i_2__1_n_5 ,\clk_cnt_reg[0]_i_2__1_n_6 ,\clk_cnt_reg[0]_i_2__1_n_7 }),
        .S({clk_cnt_reg[3:1],\clk_cnt[0]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__1_n_5 ),
        .Q(clk_cnt_reg[10]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__1_n_4 ),
        .Q(clk_cnt_reg[11]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__1_n_7 ),
        .Q(clk_cnt_reg[12]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  CARRY4 \clk_cnt_reg[12]_i_1__1 
       (.CI(\clk_cnt_reg[8]_i_1__1_n_0 ),
        .CO({\clk_cnt_reg[12]_i_1__1_n_0 ,\clk_cnt_reg[12]_i_1__1_n_1 ,\clk_cnt_reg[12]_i_1__1_n_2 ,\clk_cnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_1__1_n_4 ,\clk_cnt_reg[12]_i_1__1_n_5 ,\clk_cnt_reg[12]_i_1__1_n_6 ,\clk_cnt_reg[12]_i_1__1_n_7 }),
        .S(clk_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__1_n_6 ),
        .Q(clk_cnt_reg[13]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__1_n_5 ),
        .Q(clk_cnt_reg[14]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[12]_i_1__1_n_4 ),
        .Q(clk_cnt_reg[15]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__1_n_7 ),
        .Q(clk_cnt_reg[16]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  CARRY4 \clk_cnt_reg[16]_i_1__1 
       (.CI(\clk_cnt_reg[12]_i_1__1_n_0 ),
        .CO({\NLW_clk_cnt_reg[16]_i_1__1_CO_UNCONNECTED [3],\clk_cnt_reg[16]_i_1__1_n_1 ,\clk_cnt_reg[16]_i_1__1_n_2 ,\clk_cnt_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_1__1_n_4 ,\clk_cnt_reg[16]_i_1__1_n_5 ,\clk_cnt_reg[16]_i_1__1_n_6 ,\clk_cnt_reg[16]_i_1__1_n_7 }),
        .S(clk_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__1_n_6 ),
        .Q(clk_cnt_reg[17]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__1_n_5 ),
        .Q(clk_cnt_reg[18]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[16]_i_1__1_n_4 ),
        .Q(clk_cnt_reg[19]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__1_n_6 ),
        .Q(clk_cnt_reg[1]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__1_n_5 ),
        .Q(clk_cnt_reg[2]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[0]_i_2__1_n_4 ),
        .Q(clk_cnt_reg[3]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__1_n_7 ),
        .Q(clk_cnt_reg[4]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  CARRY4 \clk_cnt_reg[4]_i_1__1 
       (.CI(\clk_cnt_reg[0]_i_2__1_n_0 ),
        .CO({\clk_cnt_reg[4]_i_1__1_n_0 ,\clk_cnt_reg[4]_i_1__1_n_1 ,\clk_cnt_reg[4]_i_1__1_n_2 ,\clk_cnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_1__1_n_4 ,\clk_cnt_reg[4]_i_1__1_n_5 ,\clk_cnt_reg[4]_i_1__1_n_6 ,\clk_cnt_reg[4]_i_1__1_n_7 }),
        .S(clk_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__1_n_6 ),
        .Q(clk_cnt_reg[5]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__1_n_5 ),
        .Q(clk_cnt_reg[6]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[4]_i_1__1_n_4 ),
        .Q(clk_cnt_reg[7]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__1_n_7 ),
        .Q(clk_cnt_reg[8]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  CARRY4 \clk_cnt_reg[8]_i_1__1 
       (.CI(\clk_cnt_reg[4]_i_1__1_n_0 ),
        .CO({\clk_cnt_reg[8]_i_1__1_n_0 ,\clk_cnt_reg[8]_i_1__1_n_1 ,\clk_cnt_reg[8]_i_1__1_n_2 ,\clk_cnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_1__1_n_4 ,\clk_cnt_reg[8]_i_1__1_n_5 ,\clk_cnt_reg[8]_i_1__1_n_6 ,\clk_cnt_reg[8]_i_1__1_n_7 }),
        .S(clk_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\clk_cnt_reg[8]_i_1__1_n_6 ),
        .Q(clk_cnt_reg[9]),
        .R(\clk_cnt[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \rx_data[7]_i_1__0 
       (.I0(D[0]),
        .I1(\rx_data_reg[0] ),
        .I2(\rx_data_reg[0]_0 ),
        .I3(D[1]),
        .I4(\rx_data[7]_i_3__0_n_0 ),
        .O(\cs_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \rx_data[7]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(tick),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(tick_reg),
        .O(\rx_data[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tick_counter[3]_i_2__0 
       (.I0(tick),
        .I1(tick_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    tick_o_i_1__0
       (.I0(cnt_should_zero),
        .I1(tick),
        .O(tick_o_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_o_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tick_o_i_1__0_n_0),
        .Q(tick),
        .R(reset_IBUF));
  CARRY4 tick_should_flip_carry
       (.CI(1'b0),
        .CO({tick_should_flip_carry_n_0,tick_should_flip_carry_n_1,tick_should_flip_carry_n_2,tick_should_flip_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry_O_UNCONNECTED[3:0]),
        .S({tick_should_flip_carry_i_1__1_n_0,tick_should_flip_carry_i_2__1_n_0,tick_should_flip_carry_i_3__1_n_0,tick_should_flip_carry_i_4__1_n_0}));
  CARRY4 tick_should_flip_carry__0
       (.CI(tick_should_flip_carry_n_0),
        .CO({NLW_tick_should_flip_carry__0_CO_UNCONNECTED[3],cnt_should_zero,tick_should_flip_carry__0_n_2,tick_should_flip_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tick_should_flip_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,tick_should_flip_carry__0_i_1__1_n_0,tick_should_flip_carry__0_i_2__1_n_0,tick_should_flip_carry__0_i_3__1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    tick_should_flip_carry__0_i_1__1
       (.I0(clk_cnt_reg[18]),
        .I1(clk_cnt_reg[19]),
        .O(tick_should_flip_carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tick_should_flip_carry__0_i_2__1
       (.I0(clk_cnt_reg[17]),
        .I1(clk_cnt_reg[16]),
        .I2(clk_cnt_reg[15]),
        .O(tick_should_flip_carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tick_should_flip_carry__0_i_3__1
       (.I0(clk_cnt_reg[14]),
        .I1(clk_cnt_reg[13]),
        .I2(clk_cnt_reg[12]),
        .O(tick_should_flip_carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tick_should_flip_carry_i_1__1
       (.I0(clk_cnt_reg[11]),
        .I1(clk_cnt_reg[10]),
        .I2(clk_cnt_reg[9]),
        .O(tick_should_flip_carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    tick_should_flip_carry_i_2__1
       (.I0(clk_cnt_reg[8]),
        .I1(clk_cnt_reg[7]),
        .I2(clk_cnt_reg[6]),
        .O(tick_should_flip_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    tick_should_flip_carry_i_3__1
       (.I0(clk_cnt_reg[5]),
        .I1(clk_cnt_reg[4]),
        .I2(clk_cnt_reg[3]),
        .O(tick_should_flip_carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    tick_should_flip_carry_i_4__1
       (.I0(clk_cnt_reg[2]),
        .I1(clk_cnt_reg[0]),
        .I2(clk_cnt_reg[1]),
        .O(tick_should_flip_carry_i_4__1_n_0));
endmodule

module UART_rx_fsm
   (E,
    Q,
    clk_out1,
    reset_IBUF,
    \cs_reg[0]_0 ,
    D);
  output [0:0]E;
  output [7:0]Q;
  input clk_out1;
  input reset_IBUF;
  input \cs_reg[0]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_out1;
  wire [3:0]cs;
  wire \cs[0]_i_2__1_n_0 ;
  wire \cs[1]_i_2__1_n_0 ;
  wire \cs[2]_i_1__1_n_0 ;
  wire \cs[2]_i_2__1_n_0 ;
  wire \cs[3]_i_2_n_0 ;
  wire \cs[3]_i_3__1_n_0 ;
  wire \cs_reg[0]_0 ;
  wire [3:0]ns__0;
  wire [3:1]p_0_in__4;
  wire reset_IBUF;
  wire rx_data;
  wire \rx_data[7]_i_2__0_n_0 ;
  wire tick;
  wire \tick_counter[0]_i_1__0_n_0 ;
  wire \tick_counter[3]_i_1__0_n_0 ;
  wire [3:0]tick_counter_reg__0;
  wire tick_l2h;
  wire tick_reg;

  LUT5 #(
    .INIT(32'hFF8F8F8F)) 
    \cs[0]_i_1__1 
       (.I0(\cs[0]_i_2__1_n_0 ),
        .I1(cs[3]),
        .I2(\cs[3]_i_2_n_0 ),
        .I3(cs[0]),
        .I4(\cs_reg[0]_0 ),
        .O(ns__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cs[0]_i_2__1 
       (.I0(tick_counter_reg__0[0]),
        .I1(tick_counter_reg__0[1]),
        .I2(tick_counter_reg__0[3]),
        .I3(tick_counter_reg__0[2]),
        .O(\cs[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h88808880AAAA8880)) 
    \cs[1]_i_1__1 
       (.I0(\cs[3]_i_2_n_0 ),
        .I1(cs[1]),
        .I2(\cs[1]_i_2__1_n_0 ),
        .I3(tick_counter_reg__0[3]),
        .I4(cs[0]),
        .I5(\cs_reg[0]_0 ),
        .O(ns__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \cs[1]_i_2__1 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[0]),
        .I2(tick_counter_reg__0[1]),
        .O(\cs[1]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cs[2]_i_1__1 
       (.I0(\cs[2]_i_2__1_n_0 ),
        .I1(\cs[3]_i_2_n_0 ),
        .O(\cs[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5FF00000400)) 
    \cs[2]_i_2__1 
       (.I0(tick_counter_reg__0[3]),
        .I1(cs[1]),
        .I2(tick_counter_reg__0[1]),
        .I3(tick_counter_reg__0[0]),
        .I4(tick_counter_reg__0[2]),
        .I5(cs[2]),
        .O(\cs[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h888A808888888088)) 
    \cs[3]_i_1__1 
       (.I0(\cs[3]_i_2_n_0 ),
        .I1(cs[3]),
        .I2(\cs[3]_i_3__1_n_0 ),
        .I3(tick_counter_reg__0[1]),
        .I4(tick_counter_reg__0[0]),
        .I5(cs[2]),
        .O(ns__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \cs[3]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[3]),
        .O(\cs[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cs[3]_i_3__1 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[3]),
        .O(\cs[3]_i_3__1_n_0 ));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \cs_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[0]),
        .Q(cs[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[1]),
        .Q(cs[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\cs[2]_i_1__1_n_0 ),
        .Q(cs[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[3]),
        .Q(cs[3]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    program_receiving_OBUF_inst_i_1
       (.I0(ns__0[0]),
        .I1(cs[3]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h000BBBBB)) 
    \rx_data[7]_i_2__0 
       (.I0(\cs_reg[0]_0 ),
        .I1(cs[0]),
        .I2(tick_counter_reg__0[3]),
        .I3(\cs[1]_i_2__1_n_0 ),
        .I4(cs[1]),
        .O(\rx_data[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[1]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[2]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[3]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[4]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[5]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[6]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(Q[7]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(D),
        .Q(Q[7]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tick_counter[0]_i_1__0 
       (.I0(tick_counter_reg__0[0]),
        .O(\tick_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tick_counter[1]_i_1__0 
       (.I0(tick_counter_reg__0[0]),
        .I1(tick_counter_reg__0[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tick_counter[2]_i_1__0 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[1]),
        .I2(tick_counter_reg__0[0]),
        .O(p_0_in__4[2]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \tick_counter[3]_i_1__0 
       (.I0(reset_IBUF),
        .I1(cs[3]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(\tick_counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tick_counter[3]_i_3__0 
       (.I0(tick_counter_reg__0[3]),
        .I1(tick_counter_reg__0[0]),
        .I2(tick_counter_reg__0[1]),
        .I3(tick_counter_reg__0[2]),
        .O(p_0_in__4[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[0] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(\tick_counter[0]_i_1__0_n_0 ),
        .Q(tick_counter_reg__0[0]),
        .R(\tick_counter[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[1] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__4[1]),
        .Q(tick_counter_reg__0[1]),
        .R(\tick_counter[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[2] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__4[2]),
        .Q(tick_counter_reg__0[2]),
        .R(\tick_counter[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[3] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__4[3]),
        .Q(tick_counter_reg__0[3]),
        .R(\tick_counter[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tick),
        .Q(tick_reg),
        .R(1'b0));
  UART_baudrate_gen_4 u_UART_baudrate_gen
       (.D({ns__0[3],ns__0[0]}),
        .E(tick_l2h),
        .Q(cs),
        .clk_out1(clk_out1),
        .\cs_reg[3] (rx_data),
        .reset_IBUF(reset_IBUF),
        .\rx_data_reg[0] (\rx_data[7]_i_2__0_n_0 ),
        .\rx_data_reg[0]_0 (\cs[2]_i_2__1_n_0 ),
        .tick(tick),
        .tick_reg(tick_reg));
endmodule

(* ORIG_REF_NAME = "UART_rx_fsm" *) 
module UART_rx_fsm_0
   (full_reg,
    \cs_reg[0]_0 ,
    rx_reg2_reg_0,
    \rx_data_reg[7]_0 ,
    D,
    clk_out1,
    CO,
    reset_IBUF,
    rx_en,
    fifo_full,
    tick_should_flip0,
    Q,
    rx_program_en,
    program_ov_OBUF);
  output full_reg;
  output \cs_reg[0]_0 ;
  output rx_reg2_reg_0;
  output [7:0]\rx_data_reg[7]_0 ;
  input [0:0]D;
  input clk_out1;
  input [0:0]CO;
  input reset_IBUF;
  input rx_en;
  input fifo_full;
  input [17:0]tick_should_flip0;
  input [0:0]Q;
  input rx_program_en;
  input program_ov_OBUF;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]Q;
  wire clk_out1;
  wire [3:0]cs;
  wire \cs[0]_i_2_n_0 ;
  wire \cs[1]_i_2__0_n_0 ;
  wire \cs[1]_i_3_n_0 ;
  wire \cs[2]_i_2__0_n_0 ;
  wire \cs[3]_i_2__0_n_0 ;
  wire \cs[3]_i_3_n_0 ;
  wire \cs_reg[0]_0 ;
  wire fifo_full;
  wire full_reg;
  wire [3:0]ns__0;
  wire [3:1]p_0_in__3;
  wire program_ov_OBUF;
  wire reset_IBUF;
  wire rx_data;
  wire \rx_data[7]_i_2_n_0 ;
  wire [7:0]\rx_data_reg[7]_0 ;
  wire rx_en;
  wire rx_program_en;
  wire rx_reg;
  wire rx_reg1;
  wire rx_reg2;
  wire rx_reg2_reg_0;
  wire tick;
  wire \tick_counter[0]_i_1_n_0 ;
  wire \tick_counter[3]_i_1_n_0 ;
  wire [3:0]tick_counter_reg__0;
  wire tick_l2h;
  wire tick_reg;
  wire [17:0]tick_should_flip0;

  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \addra[2]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[3]),
        .I3(cs[2]),
        .I4(\cs[0]_i_2_n_0 ),
        .O(\cs_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF55555555)) 
    \cs[0]_i_1 
       (.I0(\cs[0]_i_2_n_0 ),
        .I1(rx_reg2),
        .I2(rx_reg1),
        .I3(rx_en),
        .I4(fifo_full),
        .I5(cs[0]),
        .O(ns__0[0]));
  LUT6 #(
    .INIT(64'hAAAA8AAAAAAAAAAA)) 
    \cs[0]_i_2 
       (.I0(\cs[3]_i_2__0_n_0 ),
        .I1(tick_counter_reg__0[0]),
        .I2(tick_counter_reg__0[1]),
        .I3(tick_counter_reg__0[3]),
        .I4(tick_counter_reg__0[2]),
        .I5(cs[3]),
        .O(\cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88808880AAAA8880)) 
    \cs[1]_i_1__0 
       (.I0(\cs[3]_i_2__0_n_0 ),
        .I1(cs[1]),
        .I2(\cs[1]_i_2__0_n_0 ),
        .I3(tick_counter_reg__0[3]),
        .I4(cs[0]),
        .I5(\cs[1]_i_3_n_0 ),
        .O(ns__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \cs[1]_i_2__0 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[0]),
        .I2(tick_counter_reg__0[1]),
        .O(\cs[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cs[1]_i_3 
       (.I0(rx_reg2),
        .I1(rx_reg1),
        .I2(rx_en),
        .I3(fifo_full),
        .O(\cs[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cs[1]_i_3__0 
       (.I0(rx_reg2),
        .I1(rx_reg1),
        .I2(rx_program_en),
        .I3(program_ov_OBUF),
        .O(rx_reg2_reg_0));
  LUT6 #(
    .INIT(64'hC0C0C0C0C0C000E0)) 
    \cs[2]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(\cs[3]_i_2__0_n_0 ),
        .I3(tick_counter_reg__0[3]),
        .I4(tick_counter_reg__0[2]),
        .I5(\cs[2]_i_2__0_n_0 ),
        .O(ns__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cs[2]_i_2__0 
       (.I0(tick_counter_reg__0[1]),
        .I1(tick_counter_reg__0[0]),
        .O(\cs[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h888A808888888088)) 
    \cs[3]_i_1 
       (.I0(\cs[3]_i_2__0_n_0 ),
        .I1(cs[3]),
        .I2(\cs[3]_i_3_n_0 ),
        .I3(tick_counter_reg__0[1]),
        .I4(tick_counter_reg__0[0]),
        .I5(cs[2]),
        .O(ns__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \cs[3]_i_2__0 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[3]),
        .O(\cs[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cs[3]_i_3 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[3]),
        .O(\cs[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \cs_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[0]),
        .Q(cs[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[1]),
        .Q(cs[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[2]),
        .Q(cs[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,RXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[3]),
        .Q(cs[3]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_7_0_5_i_1__0
       (.I0(\cs_reg[0]_0 ),
        .I1(fifo_full),
        .O(full_reg));
  LUT5 #(
    .INIT(32'h000BBBBB)) 
    \rx_data[7]_i_2 
       (.I0(\cs[1]_i_3_n_0 ),
        .I1(cs[0]),
        .I2(tick_counter_reg__0[3]),
        .I3(\cs[1]_i_2__0_n_0 ),
        .I4(cs[1]),
        .O(\rx_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [1]),
        .Q(\rx_data_reg[7]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [2]),
        .Q(\rx_data_reg[7]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [3]),
        .Q(\rx_data_reg[7]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [4]),
        .Q(\rx_data_reg[7]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [5]),
        .Q(\rx_data_reg[7]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [6]),
        .Q(\rx_data_reg[7]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(\rx_data_reg[7]_0 [7]),
        .Q(\rx_data_reg[7]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_out1),
        .CE(rx_data),
        .D(D),
        .Q(\rx_data_reg[7]_0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    rx_reg1_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(rx_reg),
        .Q(rx_reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_reg2_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(rx_reg1),
        .Q(rx_reg2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_reg_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(D),
        .Q(rx_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tick_counter[0]_i_1 
       (.I0(tick_counter_reg__0[0]),
        .O(\tick_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tick_counter[1]_i_1 
       (.I0(tick_counter_reg__0[1]),
        .I1(tick_counter_reg__0[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tick_counter[2]_i_1 
       (.I0(tick_counter_reg__0[2]),
        .I1(tick_counter_reg__0[0]),
        .I2(tick_counter_reg__0[1]),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \tick_counter[3]_i_1 
       (.I0(reset_IBUF),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[3]),
        .I4(cs[1]),
        .O(\tick_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tick_counter[3]_i_3 
       (.I0(tick_counter_reg__0[3]),
        .I1(tick_counter_reg__0[1]),
        .I2(tick_counter_reg__0[0]),
        .I3(tick_counter_reg__0[2]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[0] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(\tick_counter[0]_i_1_n_0 ),
        .Q(tick_counter_reg__0[0]),
        .R(\tick_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[1] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__3[1]),
        .Q(tick_counter_reg__0[1]),
        .R(\tick_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[2] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__3[2]),
        .Q(tick_counter_reg__0[2]),
        .R(\tick_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tick_counter_reg[3] 
       (.C(clk_out1),
        .CE(tick_l2h),
        .D(p_0_in__3[3]),
        .Q(tick_counter_reg__0[3]),
        .R(\tick_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(tick),
        .Q(tick_reg),
        .R(1'b0));
  UART_baudrate_gen_1 u_UART_baudrate_gen
       (.CO(CO),
        .D({ns__0[3:2],ns__0[0]}),
        .E(rx_data),
        .Q(Q),
        .\clk_cnt_reg[19]_0 (cs),
        .clk_out1(clk_out1),
        .reset_IBUF(reset_IBUF),
        .\rx_data_reg[0] (\rx_data[7]_i_2_n_0 ),
        .tick(tick),
        .tick_o_reg_0(tick_l2h),
        .tick_reg(tick_reg),
        .tick_should_flip0(tick_should_flip0));
endmodule

module UART_tx_fsm
   (rd_en,
    tx,
    tick_should_flip0,
    CO,
    \UART_Baudrate_Div_reg[19] ,
    \cs_reg[0]_0 ,
    rd_en_o_reg_0,
    \bit_cnt_reg[1]_0 ,
    clk_out1,
    reset_IBUF,
    \clk_cnt_reg[19] ,
    Q,
    tick_should_flip_carry_i_4__0,
    tick_should_flip_carry_i_3__0,
    tick_should_flip_carry_i_1__0,
    tick_should_flip_carry__0_i_3__0,
    S,
    fifo_empty,
    \cs_reg[2]_0 ,
    tx_o_reg_0,
    tx_o_reg_1,
    \cs_reg[1]_0 );
  output rd_en;
  output tx;
  output [17:0]tick_should_flip0;
  output [0:0]CO;
  output [0:0]\UART_Baudrate_Div_reg[19] ;
  output \cs_reg[0]_0 ;
  output [0:0]rd_en_o_reg_0;
  output [1:0]\bit_cnt_reg[1]_0 ;
  input clk_out1;
  input reset_IBUF;
  input \clk_cnt_reg[19] ;
  input [18:0]Q;
  input [3:0]tick_should_flip_carry_i_4__0;
  input [3:0]tick_should_flip_carry_i_3__0;
  input [3:0]tick_should_flip_carry_i_1__0;
  input [3:0]tick_should_flip_carry__0_i_3__0;
  input [1:0]S;
  input fifo_empty;
  input \cs_reg[2]_0 ;
  input tx_o_reg_0;
  input tx_o_reg_1;
  input \cs_reg[1]_0 ;

  wire [0:0]CO;
  wire [18:0]Q;
  wire [1:0]S;
  wire [0:0]\UART_Baudrate_Div_reg[19] ;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire [1:0]\bit_cnt_reg[1]_0 ;
  wire [3:2]bit_cnt_reg__0;
  wire \clk_cnt_reg[19] ;
  wire clk_out1;
  wire [3:0]cs;
  wire \cs[0]_i_2__0_n_0 ;
  wire \cs[0]_i_3_n_0 ;
  wire \cs[2]_i_2_n_0 ;
  wire \cs[3]_i_2__1_n_0 ;
  wire \cs[3]_i_3__0_n_0 ;
  wire \cs_reg[0]_0 ;
  wire \cs_reg[1]_0 ;
  wire \cs_reg[2]_0 ;
  wire fifo_empty;
  wire [3:0]ns__0;
  wire [3:2]p_0_in__2;
  wire rd_en;
  wire rd_en_o0;
  wire rd_en_o_i_2_n_0;
  wire [0:0]rd_en_o_reg_0;
  wire reset_IBUF;
  wire send_tick;
  wire send_tick_puls;
  wire send_tick_r;
  wire [17:0]tick_should_flip0;
  wire [3:0]tick_should_flip_carry__0_i_3__0;
  wire [3:0]tick_should_flip_carry_i_1__0;
  wire [3:0]tick_should_flip_carry_i_3__0;
  wire [3:0]tick_should_flip_carry_i_4__0;
  wire tx;
  wire tx_o_i_4_n_0;
  wire tx_o_reg_0;
  wire tx_o_reg_1;
  wire u_UART_baudrate_gen_n_21;
  wire u_UART_baudrate_gen_n_22;

  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg[1]_0 [0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg[1]_0 [0]),
        .I1(\bit_cnt_reg[1]_0 [1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg__0[2]),
        .I1(\bit_cnt_reg[1]_0 [1]),
        .I2(\bit_cnt_reg[1]_0 [0]),
        .O(p_0_in__2[2]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \bit_cnt[3]_i_1 
       (.I0(reset_IBUF),
        .I1(cs[3]),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(\bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_cnt[3]_i_3 
       (.I0(bit_cnt_reg__0[3]),
        .I1(\bit_cnt_reg[1]_0 [0]),
        .I2(\bit_cnt_reg[1]_0 [1]),
        .I3(bit_cnt_reg__0[2]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_out1),
        .CE(send_tick_puls),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg[1]_0 [0]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_out1),
        .CE(send_tick_puls),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg[1]_0 [1]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_out1),
        .CE(send_tick_puls),
        .D(p_0_in__2[2]),
        .Q(bit_cnt_reg__0[2]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk_out1),
        .CE(send_tick_puls),
        .D(p_0_in__2[3]),
        .Q(bit_cnt_reg__0[3]),
        .R(\bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75550000)) 
    \cs[0]_i_1__0 
       (.I0(\cs_reg[2]_0 ),
        .I1(bit_cnt_reg__0[2]),
        .I2(\cs[0]_i_2__0_n_0 ),
        .I3(bit_cnt_reg__0[3]),
        .I4(cs[3]),
        .I5(\cs[0]_i_3_n_0 ),
        .O(ns__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cs[0]_i_2__0 
       (.I0(\bit_cnt_reg[1]_0 [0]),
        .I1(\bit_cnt_reg[1]_0 [1]),
        .O(\cs[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF0FEF0FEF)) 
    \cs[0]_i_3 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(\cs_reg[0]_0 ),
        .I3(\cs_reg[2]_0 ),
        .I4(fifo_empty),
        .I5(cs[0]),
        .O(\cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA08AA08AA080808)) 
    \cs[1]_i_1 
       (.I0(\cs_reg[1]_0 ),
        .I1(cs[0]),
        .I2(fifo_empty),
        .I3(cs[1]),
        .I4(\cs[2]_i_2_n_0 ),
        .I5(bit_cnt_reg__0[3]),
        .O(ns__0[1]));
  LUT6 #(
    .INIT(64'h808000008080C080)) 
    \cs[2]_i_1__0 
       (.I0(cs[2]),
        .I1(\cs_reg[0]_0 ),
        .I2(\cs_reg[2]_0 ),
        .I3(cs[1]),
        .I4(\cs[2]_i_2_n_0 ),
        .I5(bit_cnt_reg__0[3]),
        .O(ns__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \cs[2]_i_2 
       (.I0(bit_cnt_reg__0[2]),
        .I1(\bit_cnt_reg[1]_0 [0]),
        .I2(\bit_cnt_reg[1]_0 [1]),
        .O(\cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F00000088000000)) 
    \cs[3]_i_1__0 
       (.I0(cs[2]),
        .I1(\cs[3]_i_2__1_n_0 ),
        .I2(\cs[3]_i_3__0_n_0 ),
        .I3(\cs_reg[0]_0 ),
        .I4(\cs_reg[2]_0 ),
        .I5(cs[3]),
        .O(ns__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \cs[3]_i_2__1 
       (.I0(bit_cnt_reg__0[3]),
        .I1(\bit_cnt_reg[1]_0 [1]),
        .I2(\bit_cnt_reg[1]_0 [0]),
        .I3(bit_cnt_reg__0[2]),
        .O(\cs[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cs[3]_i_3__0 
       (.I0(bit_cnt_reg__0[3]),
        .I1(\bit_cnt_reg[1]_0 [0]),
        .I2(\bit_cnt_reg[1]_0 [1]),
        .I3(bit_cnt_reg__0[2]),
        .O(\cs[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \cs[3]_i_4 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[3]),
        .O(\cs_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "STAR:0010,TXDA:0100,STOP:1000,IDLE:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \cs_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[0]),
        .Q(cs[0]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,TXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[1]),
        .Q(cs[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,TXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[2]),
        .Q(cs[2]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "STAR:0010,TXDA:0100,STOP:1000,IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ns__0[3]),
        .Q(cs[3]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \doutb[7]_i_1 
       (.I0(rd_en),
        .I1(fifo_empty),
        .O(rd_en_o_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    rd_en_o_i_1
       (.I0(cs[3]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(rd_en_o_i_2_n_0),
        .O(rd_en_o0));
  LUT6 #(
    .INIT(64'h1F001F1FFFFFFFFF)) 
    rd_en_o_i_2
       (.I0(bit_cnt_reg__0[3]),
        .I1(\cs[2]_i_2_n_0 ),
        .I2(cs[1]),
        .I3(fifo_empty),
        .I4(cs[0]),
        .I5(\cs_reg[1]_0 ),
        .O(rd_en_o_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_en_o_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(rd_en_o0),
        .Q(rd_en),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    send_tick_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(send_tick),
        .Q(send_tick_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'hBBBE8882)) 
    tx_o_i_4
       (.I0(tx_o_reg_0),
        .I1(bit_cnt_reg__0[2]),
        .I2(\bit_cnt_reg[1]_0 [1]),
        .I3(\bit_cnt_reg[1]_0 [0]),
        .I4(tx_o_reg_1),
        .O(tx_o_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_o_reg
       (.C(clk_out1),
        .CE(u_UART_baudrate_gen_n_22),
        .D(u_UART_baudrate_gen_n_21),
        .Q(tx),
        .R(1'b0));
  UART_baudrate_gen u_UART_baudrate_gen
       (.CO(CO),
        .E(send_tick_puls),
        .Q(Q),
        .S(S),
        .\UART_Baudrate_Div_reg[19] (\UART_Baudrate_Div_reg[19] ),
        .\clk_cnt_reg[19]_0 (\clk_cnt_reg[19] ),
        .clk_out1(clk_out1),
        .\cs_reg[0] (u_UART_baudrate_gen_n_22),
        .\cs_reg[3] (u_UART_baudrate_gen_n_21),
        .reset_IBUF(reset_IBUF),
        .send_tick(send_tick),
        .send_tick_r(send_tick_r),
        .tick_should_flip0(tick_should_flip0),
        .tick_should_flip_carry__0_i_3__0(tick_should_flip_carry__0_i_3__0),
        .tick_should_flip_carry_i_1__0(tick_should_flip_carry_i_1__0),
        .tick_should_flip_carry_i_3__0(tick_should_flip_carry_i_3__0),
        .tick_should_flip_carry_i_4__0(tick_should_flip_carry_i_4__0),
        .tx_o_reg(cs),
        .tx_o_reg_0(tx_o_i_4_n_0));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(34),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(17),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module fwrisc
   (dvalid,
    Q,
    \daddr_reg[31]_0 ,
    dready_fifo,
    p_0_in,
    \daddr_reg[2]_0 ,
    \daddr_reg[3]_0 ,
    E,
    \daddr_reg[4]_0 ,
    dvalid_reg_0,
    WEA,
    \daddr_reg[13]_0 ,
    \FSM_sequential_state_reg[2]_0 ,
    \dwdata_reg[0]_0 ,
    \dwdata_reg[31]_0 ,
    \dwdata_reg[0]_1 ,
    clk_out1,
    regs_reg_1_i_151,
    regs_reg_1_i_339,
    rx_en,
    dready_o,
    dready_r,
    reset_IBUF,
    rx_dready_r,
    tx_fifo_full,
    rx_fifo_empty,
    dready_r_0,
    p_0_in_0,
    drdata_r0,
    regs_reg_1_i_339_0,
    tx_en,
    regs_reg_1_i_325,
    rx_program_en,
    iready_r,
    regs_reg_1_i_336,
    idata0,
    \instr_reg[31]_0 );
  output dvalid;
  output [17:0]Q;
  output [17:0]\daddr_reg[31]_0 ;
  output dready_fifo;
  output p_0_in;
  output \daddr_reg[2]_0 ;
  output \daddr_reg[3]_0 ;
  output [0:0]E;
  output \daddr_reg[4]_0 ;
  output [0:0]dvalid_reg_0;
  output [0:0]WEA;
  output \daddr_reg[13]_0 ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \dwdata_reg[0]_0 ;
  output [31:0]\dwdata_reg[31]_0 ;
  output \dwdata_reg[0]_1 ;
  input clk_out1;
  input [30:0]regs_reg_1_i_151;
  input [7:0]regs_reg_1_i_339;
  input rx_en;
  input dready_o;
  input dready_r;
  input reset_IBUF;
  input rx_dready_r;
  input tx_fifo_full;
  input rx_fifo_empty;
  input dready_r_0;
  input [31:0]p_0_in_0;
  input [31:0]drdata_r0;
  input [7:0]regs_reg_1_i_339_0;
  input tx_en;
  input regs_reg_1_i_325;
  input rx_program_en;
  input iready_r;
  input [7:0]regs_reg_1_i_336;
  input [31:0]idata0;
  input [7:0]\instr_reg[31]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [17:0]Q;
  wire \UART_Baudrate_Div[31]_i_2_n_0 ;
  wire \UART_Rx_Ctrl[0]_i_2_n_0 ;
  wire [0:0]WEA;
  wire [30:0]alu_op_a;
  wire [31:2]alu_out;
  wire clk_out1;
  wire cycle_counter0;
  wire \cycle_counter[7]_i_3_n_0 ;
  wire cycle_counter_ovf;
  wire [6:0]cycle_counter_reg__0;
  wire [27:16]daddr;
  wire \daddr_reg[13]_0 ;
  wire \daddr_reg[2]_0 ;
  wire [17:0]\daddr_reg[31]_0 ;
  wire \daddr_reg[3]_0 ;
  wire \daddr_reg[4]_0 ;
  wire [31:0]data0;
  wire [31:0]drdata_r0;
  wire dready_fifo;
  wire dready_o;
  wire dready_o_i_2_n_0;
  wire dready_o_i_3_n_0;
  wire dready_o_i_4_n_0;
  wire dready_r;
  wire dready_r_0;
  wire [0:0]dstrb;
  wire dstrb_w;
  wire dvalid;
  wire [0:0]dvalid_reg_0;
  wire dvalid_w;
  wire \dwdata_reg[0]_0 ;
  wire \dwdata_reg[0]_1 ;
  wire [31:0]\dwdata_reg[31]_0 ;
  wire [31:8]dwdata_w;
  wire dwrite;
  wire dwrite_w;
  wire [27:16]iaddr;
  wire [31:0]idata;
  wire [31:0]idata0;
  wire instr;
  wire \instr[31]_i_3_n_0 ;
  wire \instr[31]_i_4_n_0 ;
  wire instr_counter;
  wire instr_counter0;
  wire \instr_counter[7]_i_4_n_0 ;
  wire [7:0]instr_counter_reg__0;
  wire [7:0]\instr_reg[31]_0 ;
  wire \instr_reg_n_0_[0] ;
  wire \instr_reg_n_0_[12] ;
  wire \instr_reg_n_0_[14] ;
  wire \instr_reg_n_0_[1] ;
  wire \instr_reg_n_0_[25] ;
  wire \instr_reg_n_0_[26] ;
  wire \instr_reg_n_0_[27] ;
  wire \instr_reg_n_0_[29] ;
  wire \instr_reg_n_0_[2] ;
  wire \instr_reg_n_0_[30] ;
  wire \instr_reg_n_0_[3] ;
  wire iready_r;
  wire iready_r_i_2_n_0;
  wire p_0_in;
  wire p_0_in10_in;
  wire p_0_in27_in;
  wire [31:0]p_0_in_0;
  wire [2:0]p_0_in_1;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire p_1_in;
  wire [31:2]pc0_in;
  wire [31:3]pc_plus4;
  wire pc_plus4_carry__0_n_0;
  wire pc_plus4_carry__0_n_1;
  wire pc_plus4_carry__0_n_2;
  wire pc_plus4_carry__0_n_3;
  wire pc_plus4_carry__1_n_0;
  wire pc_plus4_carry__1_n_1;
  wire pc_plus4_carry__1_n_2;
  wire pc_plus4_carry__1_n_3;
  wire pc_plus4_carry__2_n_0;
  wire pc_plus4_carry__2_n_1;
  wire pc_plus4_carry__2_n_2;
  wire pc_plus4_carry__2_n_3;
  wire pc_plus4_carry__3_n_0;
  wire pc_plus4_carry__3_n_1;
  wire pc_plus4_carry__3_n_2;
  wire pc_plus4_carry__3_n_3;
  wire pc_plus4_carry__4_n_0;
  wire pc_plus4_carry__4_n_1;
  wire pc_plus4_carry__4_n_2;
  wire pc_plus4_carry__4_n_3;
  wire pc_plus4_carry__5_n_0;
  wire pc_plus4_carry__5_n_1;
  wire pc_plus4_carry__5_n_2;
  wire pc_plus4_carry__5_n_3;
  wire pc_plus4_carry_n_0;
  wire pc_plus4_carry_n_1;
  wire pc_plus4_carry_n_2;
  wire pc_plus4_carry_n_3;
  wire [4:0]rd;
  wire [30:0]regs_reg_1_i_151;
  wire regs_reg_1_i_325;
  wire [7:0]regs_reg_1_i_336;
  wire [7:0]regs_reg_1_i_339;
  wire [7:0]regs_reg_1_i_339_0;
  wire reset_IBUF;
  wire [4:0]rs1;
  wire [4:0]rs2;
  wire rx_dready_r;
  wire rx_dready_r_i_3_n_0;
  wire rx_en;
  wire rx_fifo_empty;
  wire rx_program_en;
  wire [4:0]shift_amt0_in;
  wire \shift_amt[4]_i_1_n_0 ;
  wire \shift_amt[4]_i_3_n_0 ;
  wire \shift_amt[4]_i_5_n_0 ;
  wire [4:0]shift_amt__0;
  wire [3:0]state;
  wire tx_en;
  wire tx_fifo_full;
  wire u_alu_n_32;
  wire u_alu_n_33;
  wire u_alu_n_34;
  wire u_alu_n_35;
  wire u_alu_n_36;
  wire u_alu_n_37;
  wire u_alu_n_38;
  wire u_alu_n_39;
  wire u_alu_n_40;
  wire u_comp_n_0;
  wire u_comp_n_1;
  wire u_comp_n_2;
  wire u_regfile_n_0;
  wire u_regfile_n_100;
  wire u_regfile_n_101;
  wire u_regfile_n_102;
  wire u_regfile_n_103;
  wire u_regfile_n_104;
  wire u_regfile_n_105;
  wire u_regfile_n_106;
  wire u_regfile_n_137;
  wire u_regfile_n_138;
  wire u_regfile_n_139;
  wire u_regfile_n_140;
  wire u_regfile_n_141;
  wire u_regfile_n_142;
  wire u_regfile_n_145;
  wire u_regfile_n_146;
  wire u_regfile_n_147;
  wire u_regfile_n_172;
  wire u_regfile_n_173;
  wire u_regfile_n_174;
  wire u_regfile_n_175;
  wire u_regfile_n_176;
  wire u_regfile_n_177;
  wire u_regfile_n_178;
  wire u_regfile_n_179;
  wire u_regfile_n_180;
  wire u_regfile_n_181;
  wire u_regfile_n_182;
  wire u_regfile_n_183;
  wire u_regfile_n_184;
  wire u_regfile_n_185;
  wire u_regfile_n_186;
  wire u_regfile_n_187;
  wire u_regfile_n_188;
  wire u_regfile_n_189;
  wire u_regfile_n_190;
  wire u_regfile_n_191;
  wire u_regfile_n_192;
  wire u_regfile_n_193;
  wire u_regfile_n_194;
  wire u_regfile_n_195;
  wire u_regfile_n_196;
  wire u_regfile_n_197;
  wire u_regfile_n_198;
  wire u_regfile_n_199;
  wire u_regfile_n_200;
  wire u_regfile_n_201;
  wire u_regfile_n_202;
  wire u_regfile_n_203;
  wire u_regfile_n_204;
  wire u_regfile_n_205;
  wire u_regfile_n_206;
  wire u_regfile_n_207;
  wire u_regfile_n_208;
  wire u_regfile_n_209;
  wire u_regfile_n_210;
  wire u_regfile_n_211;
  wire u_regfile_n_212;
  wire u_regfile_n_213;
  wire u_regfile_n_214;
  wire u_regfile_n_215;
  wire u_regfile_n_216;
  wire u_regfile_n_217;
  wire u_regfile_n_218;
  wire u_regfile_n_219;
  wire u_regfile_n_220;
  wire u_regfile_n_221;
  wire u_regfile_n_222;
  wire u_regfile_n_223;
  wire u_regfile_n_224;
  wire u_regfile_n_225;
  wire u_regfile_n_226;
  wire u_regfile_n_227;
  wire u_regfile_n_228;
  wire u_regfile_n_229;
  wire u_regfile_n_230;
  wire u_regfile_n_231;
  wire u_regfile_n_232;
  wire u_regfile_n_233;
  wire u_regfile_n_234;
  wire u_regfile_n_235;
  wire u_regfile_n_236;
  wire u_regfile_n_237;
  wire u_regfile_n_238;
  wire u_regfile_n_239;
  wire u_regfile_n_240;
  wire u_regfile_n_241;
  wire u_regfile_n_242;
  wire u_regfile_n_32;
  wire u_regfile_n_33;
  wire u_regfile_n_34;
  wire u_regfile_n_35;
  wire u_regfile_n_36;
  wire u_regfile_n_40;
  wire u_regfile_n_42;
  wire u_regfile_n_43;
  wire u_regfile_n_44;
  wire u_regfile_n_45;
  wire u_regfile_n_46;
  wire u_regfile_n_47;
  wire u_regfile_n_78;
  wire u_regfile_n_79;
  wire u_regfile_n_80;
  wire u_regfile_n_81;
  wire u_regfile_n_82;
  wire u_regfile_n_83;
  wire u_regfile_n_84;
  wire u_regfile_n_85;
  wire u_regfile_n_86;
  wire u_regfile_n_87;
  wire u_regfile_n_88;
  wire u_regfile_n_89;
  wire u_regfile_n_90;
  wire u_regfile_n_91;
  wire u_regfile_n_92;
  wire u_regfile_n_93;
  wire u_regfile_n_94;
  wire u_regfile_n_95;
  wire u_regfile_n_96;
  wire u_regfile_n_97;
  wire u_regfile_n_98;
  wire u_regfile_n_99;
  wire [3:0]NLW_pc_plus4_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_pc_plus4_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(state[2]),
        .I1(state[0]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(rs2[1]),
        .I1(rs2[2]),
        .I2(rs2[3]),
        .I3(rs2[4]),
        .I4(\shift_amt[4]_i_5_n_0 ),
        .I5(rs2[0]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000057AAAA)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state[3]),
        .I1(u_regfile_n_142),
        .I2(u_regfile_n_35),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE5554)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(instr),
        .I4(\FSM_sequential_state[3]_i_3_n_0 ),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h45400000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[3]),
        .I1(dready_o),
        .I2(u_regfile_n_224),
        .I3(dready_r),
        .I4(dvalid),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hAABF)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\shift_amt[4]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0000,iSTATE1:0011,iSTATE2:0010,iSTATE3:1010,iSTATE4:1000,iSTATE5:1011,iSTATE6:1001,iSTATE7:0100,iSTATE8:1100,iSTATE9:0101,iSTATE10:1101,iSTATE11:0110,iSTATE12:0111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_out1),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(u_regfile_n_141),
        .Q(state[0]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0000,iSTATE1:0011,iSTATE2:0010,iSTATE3:1010,iSTATE4:1000,iSTATE5:1011,iSTATE6:1001,iSTATE7:0100,iSTATE8:1100,iSTATE9:0101,iSTATE10:1101,iSTATE11:0110,iSTATE12:0111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out1),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(u_regfile_n_140),
        .Q(state[1]),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0000,iSTATE1:0011,iSTATE2:0010,iSTATE3:1010,iSTATE4:1000,iSTATE5:1011,iSTATE6:1001,iSTATE7:0100,iSTATE8:1100,iSTATE9:0101,iSTATE10:1101,iSTATE11:0110,iSTATE12:0111" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_out1),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(u_regfile_n_139),
        .Q(state[2]),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0000,iSTATE1:0011,iSTATE2:0010,iSTATE3:1010,iSTATE4:1000,iSTATE5:1011,iSTATE6:1001,iSTATE7:0100,iSTATE8:1100,iSTATE9:0101,iSTATE10:1101,iSTATE11:0110,iSTATE12:0111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk_out1),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(u_regfile_n_138),
        .Q(state[3]),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h0080)) 
    \UART_Baudrate_Div[31]_i_1 
       (.I0(dvalid),
        .I1(u_regfile_n_224),
        .I2(dwrite),
        .I3(\UART_Baudrate_Div[31]_i_2_n_0 ),
        .O(dvalid_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \UART_Baudrate_Div[31]_i_2 
       (.I0(\daddr_reg[31]_0 [0]),
        .I1(\daddr_reg[31]_0 [1]),
        .I2(\daddr_reg[31]_0 [2]),
        .I3(\daddr_reg[31]_0 [4]),
        .I4(\daddr_reg[31]_0 [3]),
        .I5(\daddr_reg[31]_0 [5]),
        .O(\UART_Baudrate_Div[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \UART_Rx_Ctrl[0]_i_1 
       (.I0(\dwdata_reg[31]_0 [0]),
        .I1(\UART_Rx_Ctrl[0]_i_2_n_0 ),
        .I2(\daddr_reg[31]_0 [1]),
        .I3(\daddr_reg[31]_0 [0]),
        .I4(rx_en),
        .O(\dwdata_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \UART_Rx_Ctrl[0]_i_2 
       (.I0(dvalid),
        .I1(u_regfile_n_224),
        .I2(dwrite),
        .I3(u_regfile_n_43),
        .O(\UART_Rx_Ctrl[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \UART_Tx_Ctrl[0]_i_1 
       (.I0(\dwdata_reg[31]_0 [0]),
        .I1(\daddr_reg[31]_0 [0]),
        .I2(dready_o_i_3_n_0),
        .I3(tx_en),
        .O(\dwdata_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_counter[0]_i_1 
       (.I0(cycle_counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycle_counter[1]_i_1 
       (.I0(cycle_counter_reg__0[1]),
        .I1(cycle_counter_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cycle_counter[2]_i_1 
       (.I0(cycle_counter_reg__0[2]),
        .I1(cycle_counter_reg__0[0]),
        .I2(cycle_counter_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cycle_counter[3]_i_1 
       (.I0(cycle_counter_reg__0[3]),
        .I1(cycle_counter_reg__0[2]),
        .I2(cycle_counter_reg__0[1]),
        .I3(cycle_counter_reg__0[0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cycle_counter[4]_i_1 
       (.I0(cycle_counter_reg__0[4]),
        .I1(cycle_counter_reg__0[3]),
        .I2(cycle_counter_reg__0[0]),
        .I3(cycle_counter_reg__0[1]),
        .I4(cycle_counter_reg__0[2]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cycle_counter[5]_i_1 
       (.I0(cycle_counter_reg__0[5]),
        .I1(cycle_counter_reg__0[4]),
        .I2(cycle_counter_reg__0[2]),
        .I3(cycle_counter_reg__0[1]),
        .I4(cycle_counter_reg__0[0]),
        .I5(cycle_counter_reg__0[3]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycle_counter[6]_i_1 
       (.I0(cycle_counter_reg__0[6]),
        .I1(\cycle_counter[7]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \cycle_counter[7]_i_1 
       (.I0(reset_IBUF),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(cycle_counter0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cycle_counter[7]_i_2 
       (.I0(cycle_counter_ovf),
        .I1(cycle_counter_reg__0[6]),
        .I2(\cycle_counter[7]_i_3_n_0 ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cycle_counter[7]_i_3 
       (.I0(cycle_counter_reg__0[4]),
        .I1(cycle_counter_reg__0[2]),
        .I2(cycle_counter_reg__0[1]),
        .I3(cycle_counter_reg__0[0]),
        .I4(cycle_counter_reg__0[3]),
        .I5(cycle_counter_reg__0[5]),
        .O(\cycle_counter[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cycle_counter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(cycle_counter_reg__0[0]),
        .S(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(cycle_counter_reg__0[1]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(cycle_counter_reg__0[2]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(cycle_counter_reg__0[3]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(cycle_counter_reg__0[4]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(cycle_counter_reg__0[5]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(cycle_counter_reg__0[6]),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(cycle_counter_ovf),
        .R(cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[10]),
        .Q(\daddr_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[11]),
        .Q(\daddr_reg[31]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[12]),
        .Q(\daddr_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[13]),
        .Q(\daddr_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[14]),
        .Q(\daddr_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[15]),
        .Q(\daddr_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[16]),
        .Q(daddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[17]),
        .Q(daddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[18]),
        .Q(daddr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[19]),
        .Q(daddr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[20]),
        .Q(daddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[21]),
        .Q(daddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[22]),
        .Q(daddr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[23]),
        .Q(daddr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[24]),
        .Q(daddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[25]),
        .Q(daddr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[26]),
        .Q(daddr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[27]),
        .Q(daddr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[28]),
        .Q(\daddr_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[29]),
        .Q(\daddr_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[2]),
        .Q(\daddr_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[30]),
        .Q(\daddr_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[31]),
        .Q(\daddr_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[3]),
        .Q(\daddr_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[4]),
        .Q(\daddr_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[5]),
        .Q(\daddr_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[6]),
        .Q(\daddr_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[7]),
        .Q(\daddr_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[8]),
        .Q(\daddr_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(alu_out[9]),
        .Q(\daddr_reg[31]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555555554544)) 
    dready_o_i_1
       (.I0(dready_o_i_2_n_0),
        .I1(\daddr_reg[31]_0 [0]),
        .I2(dready_o_i_3_n_0),
        .I3(dready_o_i_4_n_0),
        .I4(rx_dready_r),
        .I5(p_0_in),
        .O(\daddr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h7)) 
    dready_o_i_2
       (.I0(dvalid),
        .I1(u_regfile_n_224),
        .O(dready_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    dready_o_i_3
       (.I0(u_regfile_n_43),
        .I1(dwrite),
        .I2(u_regfile_n_224),
        .I3(dvalid),
        .I4(\daddr_reg[31]_0 [1]),
        .O(dready_o_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    dready_o_i_4
       (.I0(\daddr_reg[31]_0 [4]),
        .I1(\daddr_reg[31]_0 [3]),
        .I2(\daddr_reg[31]_0 [5]),
        .I3(\daddr_reg[31]_0 [2]),
        .I4(\daddr_reg[31]_0 [1]),
        .I5(dwrite),
        .O(dready_o_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    dready_r_i_1
       (.I0(p_0_in),
        .I1(rx_dready_r),
        .O(dready_fifo));
  FDRE #(
    .INIT(1'b0)) 
    \dstrb_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dstrb_w),
        .Q(dstrb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h08)) 
    dvalid_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .O(dvalid_w));
  FDRE #(
    .INIT(1'b0)) 
    dvalid_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dvalid_w),
        .Q(dvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_178),
        .Q(\dwdata_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[10]),
        .Q(\dwdata_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[11]),
        .Q(\dwdata_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[12]),
        .Q(\dwdata_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[13]),
        .Q(\dwdata_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[14]),
        .Q(\dwdata_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[15]),
        .Q(\dwdata_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[16]),
        .Q(\dwdata_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[17]),
        .Q(\dwdata_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[18]),
        .Q(\dwdata_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[19]),
        .Q(\dwdata_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_42),
        .Q(\dwdata_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[20]),
        .Q(\dwdata_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[21]),
        .Q(\dwdata_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[22]),
        .Q(\dwdata_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[23]),
        .Q(\dwdata_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[24]),
        .Q(\dwdata_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[25]),
        .Q(\dwdata_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[26]),
        .Q(\dwdata_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[27]),
        .Q(\dwdata_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[28]),
        .Q(\dwdata_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[29]),
        .Q(\dwdata_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_177),
        .Q(\dwdata_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[30]),
        .Q(\dwdata_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[31]),
        .Q(\dwdata_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_176),
        .Q(\dwdata_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_175),
        .Q(\dwdata_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_174),
        .Q(\dwdata_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_173),
        .Q(\dwdata_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_regfile_n_172),
        .Q(\dwdata_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[8]),
        .Q(\dwdata_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dwdata_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwdata_w[9]),
        .Q(\dwdata_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    dwrite_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .O(dwrite_w));
  FDRE #(
    .INIT(1'b0)) 
    dwrite_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dwrite_w),
        .Q(dwrite),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[0]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[0]),
        .O(idata[0]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[10]_i_1 
       (.I0(p_0_in_0[10]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[10]),
        .O(idata[10]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[11]_i_1 
       (.I0(p_0_in_0[11]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[11]),
        .O(idata[11]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[12]_i_1 
       (.I0(p_0_in_0[12]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[12]),
        .O(idata[12]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[13]_i_1 
       (.I0(p_0_in_0[13]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[13]),
        .O(idata[13]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[14]_i_1 
       (.I0(p_0_in_0[14]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[14]),
        .O(idata[14]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[15]_i_1 
       (.I0(p_0_in_0[15]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[15]),
        .O(idata[15]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[16]_i_1 
       (.I0(p_0_in_0[16]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[16]),
        .O(idata[16]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[17]_i_1 
       (.I0(p_0_in_0[17]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[17]),
        .O(idata[17]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[18]_i_1 
       (.I0(p_0_in_0[18]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[18]),
        .O(idata[18]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[19]_i_1 
       (.I0(p_0_in_0[19]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[19]),
        .O(idata[19]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[1]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[1]),
        .O(idata[1]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[20]_i_1 
       (.I0(p_0_in_0[20]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[20]),
        .O(idata[20]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[21]_i_1 
       (.I0(p_0_in_0[21]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[21]),
        .O(idata[21]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[22]_i_1 
       (.I0(p_0_in_0[22]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[22]),
        .O(idata[22]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[23]_i_1 
       (.I0(p_0_in_0[23]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[23]),
        .O(idata[23]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[24]_i_1 
       (.I0(p_0_in_0[24]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[24]),
        .O(idata[24]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[25]_i_1 
       (.I0(p_0_in_0[25]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[25]),
        .O(idata[25]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[26]_i_1 
       (.I0(p_0_in_0[26]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[26]),
        .O(idata[26]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[27]_i_1 
       (.I0(p_0_in_0[27]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[27]),
        .O(idata[27]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[28]_i_1 
       (.I0(p_0_in_0[28]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[28]),
        .O(idata[28]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[29]_i_1 
       (.I0(p_0_in_0[29]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[29]),
        .O(idata[29]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[2]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[2]),
        .O(idata[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[30]_i_1 
       (.I0(p_0_in_0[30]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[30]),
        .O(idata[30]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \instr[31]_i_1 
       (.I0(iready_r),
        .I1(reset_IBUF),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(instr));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[31]_i_2 
       (.I0(p_0_in_0[31]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[31]),
        .O(idata[31]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \instr[31]_i_3 
       (.I0(\instr_reg[31]_0 [0]),
        .I1(\instr_reg[31]_0 [4]),
        .I2(\instr_reg[31]_0 [7]),
        .I3(\instr_reg[31]_0 [3]),
        .I4(\instr[31]_i_4_n_0 ),
        .O(\instr[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \instr[31]_i_4 
       (.I0(\instr_reg[31]_0 [2]),
        .I1(\instr_reg[31]_0 [6]),
        .I2(\instr_reg[31]_0 [1]),
        .I3(\instr_reg[31]_0 [5]),
        .O(\instr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[3]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[3]),
        .O(idata[3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[4]_i_1 
       (.I0(p_0_in_0[4]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[4]),
        .O(idata[4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[5]_i_1 
       (.I0(p_0_in_0[5]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[5]),
        .O(idata[5]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[6]_i_1 
       (.I0(p_0_in_0[6]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[6]),
        .O(idata[6]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[7]_i_1 
       (.I0(p_0_in_0[7]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[7]),
        .O(idata[7]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[8]_i_1 
       (.I0(p_0_in_0[8]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[8]),
        .O(idata[8]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \instr[9]_i_1 
       (.I0(p_0_in_0[9]),
        .I1(\instr[31]_i_3_n_0 ),
        .I2(idata0[9]),
        .O(idata[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \instr_counter[0]_i_1 
       (.I0(instr_counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \instr_counter[1]_i_1 
       (.I0(instr_counter_reg__0[1]),
        .I1(instr_counter_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \instr_counter[2]_i_1 
       (.I0(instr_counter_reg__0[2]),
        .I1(instr_counter_reg__0[0]),
        .I2(instr_counter_reg__0[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \instr_counter[3]_i_1 
       (.I0(instr_counter_reg__0[3]),
        .I1(instr_counter_reg__0[1]),
        .I2(instr_counter_reg__0[0]),
        .I3(instr_counter_reg__0[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \instr_counter[4]_i_1 
       (.I0(instr_counter_reg__0[4]),
        .I1(instr_counter_reg__0[2]),
        .I2(instr_counter_reg__0[0]),
        .I3(instr_counter_reg__0[1]),
        .I4(instr_counter_reg__0[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \instr_counter[5]_i_1 
       (.I0(instr_counter_reg__0[5]),
        .I1(instr_counter_reg__0[3]),
        .I2(instr_counter_reg__0[1]),
        .I3(instr_counter_reg__0[0]),
        .I4(instr_counter_reg__0[2]),
        .I5(instr_counter_reg__0[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \instr_counter[6]_i_1 
       (.I0(instr_counter_reg__0[6]),
        .I1(\instr_counter[7]_i_4_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \instr_counter[7]_i_1 
       (.I0(reset_IBUF),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(instr_counter0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \instr_counter[7]_i_3 
       (.I0(instr_counter_reg__0[7]),
        .I1(\instr_counter[7]_i_4_n_0 ),
        .I2(instr_counter_reg__0[6]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \instr_counter[7]_i_4 
       (.I0(instr_counter_reg__0[5]),
        .I1(instr_counter_reg__0[3]),
        .I2(instr_counter_reg__0[1]),
        .I3(instr_counter_reg__0[0]),
        .I4(instr_counter_reg__0[2]),
        .I5(instr_counter_reg__0[4]),
        .O(\instr_counter[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[0] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[0]),
        .Q(instr_counter_reg__0[0]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[1] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[1]),
        .Q(instr_counter_reg__0[1]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[2] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[2]),
        .Q(instr_counter_reg__0[2]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[3] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[3]),
        .Q(instr_counter_reg__0[3]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[4] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[4]),
        .Q(instr_counter_reg__0[4]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[5] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[5]),
        .Q(instr_counter_reg__0[5]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[6] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[6]),
        .Q(instr_counter_reg__0[6]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_counter_reg[7] 
       (.C(clk_out1),
        .CE(instr_counter),
        .D(p_0_in__1[7]),
        .Q(instr_counter_reg__0[7]),
        .R(instr_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[0] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[0]),
        .Q(\instr_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[10] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[10]),
        .Q(rd[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[11] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[11]),
        .Q(rd[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[12] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[12]),
        .Q(\instr_reg_n_0_[12] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[13] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[13]),
        .Q(p_0_in27_in),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[14] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[14]),
        .Q(\instr_reg_n_0_[14] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[15] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[15]),
        .Q(rs1[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[16] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[16]),
        .Q(rs1[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[17] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[17]),
        .Q(rs1[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[18] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[18]),
        .Q(rs1[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[19] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[19]),
        .Q(rs1[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[1] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[1]),
        .Q(\instr_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[20] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[20]),
        .Q(rs2[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[21] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[21]),
        .Q(rs2[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[22] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[22]),
        .Q(rs2[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[23] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[23]),
        .Q(rs2[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[24] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[24]),
        .Q(rs2[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[25] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[25]),
        .Q(\instr_reg_n_0_[25] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[26] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[26]),
        .Q(\instr_reg_n_0_[26] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[27] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[27]),
        .Q(\instr_reg_n_0_[27] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[28] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[28]),
        .Q(p_0_in10_in),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[29] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[29]),
        .Q(\instr_reg_n_0_[29] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[2] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[2]),
        .Q(\instr_reg_n_0_[2] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[30] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[30]),
        .Q(\instr_reg_n_0_[30] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[31] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[31]),
        .Q(p_1_in),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[3] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[3]),
        .Q(\instr_reg_n_0_[3] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[4] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[4]),
        .Q(p_0_in_1[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[5] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[5]),
        .Q(p_0_in_1[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[6] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[6]),
        .Q(p_0_in_1[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[7] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[7]),
        .Q(rd[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[8] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[8]),
        .Q(rd[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \instr_reg[9] 
       (.C(clk_out1),
        .CE(instr),
        .D(idata[9]),
        .Q(rd[2]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    iready_r_i_1
       (.I0(reset_IBUF),
        .I1(iready_r_i_2_n_0),
        .I2(state[2]),
        .I3(state[0]),
        .I4(rx_program_en),
        .I5(dvalid),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    iready_r_i_2
       (.I0(state[1]),
        .I1(state[3]),
        .O(iready_r_i_2_n_0));
  CARRY4 pc_plus4_carry
       (.CI(1'b0),
        .CO({pc_plus4_carry_n_0,pc_plus4_carry_n_1,pc_plus4_carry_n_2,pc_plus4_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[6:3]),
        .S(Q[4:1]));
  CARRY4 pc_plus4_carry__0
       (.CI(pc_plus4_carry_n_0),
        .CO({pc_plus4_carry__0_n_0,pc_plus4_carry__0_n_1,pc_plus4_carry__0_n_2,pc_plus4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[10:7]),
        .S(Q[8:5]));
  CARRY4 pc_plus4_carry__1
       (.CI(pc_plus4_carry__0_n_0),
        .CO({pc_plus4_carry__1_n_0,pc_plus4_carry__1_n_1,pc_plus4_carry__1_n_2,pc_plus4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[14:11]),
        .S(Q[12:9]));
  CARRY4 pc_plus4_carry__2
       (.CI(pc_plus4_carry__1_n_0),
        .CO({pc_plus4_carry__2_n_0,pc_plus4_carry__2_n_1,pc_plus4_carry__2_n_2,pc_plus4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[18:15]),
        .S({iaddr[18:16],Q[13]}));
  CARRY4 pc_plus4_carry__3
       (.CI(pc_plus4_carry__2_n_0),
        .CO({pc_plus4_carry__3_n_0,pc_plus4_carry__3_n_1,pc_plus4_carry__3_n_2,pc_plus4_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[22:19]),
        .S(iaddr[22:19]));
  CARRY4 pc_plus4_carry__4
       (.CI(pc_plus4_carry__3_n_0),
        .CO({pc_plus4_carry__4_n_0,pc_plus4_carry__4_n_1,pc_plus4_carry__4_n_2,pc_plus4_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[26:23]),
        .S(iaddr[26:23]));
  CARRY4 pc_plus4_carry__5
       (.CI(pc_plus4_carry__4_n_0),
        .CO({pc_plus4_carry__5_n_0,pc_plus4_carry__5_n_1,pc_plus4_carry__5_n_2,pc_plus4_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[30:27]),
        .S({Q[16:14],iaddr[27]}));
  CARRY4 pc_plus4_carry__6
       (.CI(pc_plus4_carry__5_n_0),
        .CO(NLW_pc_plus4_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_plus4_carry__6_O_UNCONNECTED[3:1],pc_plus4[31]}),
        .S({1'b0,1'b0,1'b0,Q[17]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[10]),
        .Q(Q[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[11]),
        .Q(Q[9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[12]),
        .Q(Q[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[13]),
        .Q(Q[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[14]),
        .Q(Q[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[15]),
        .Q(Q[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[16]),
        .Q(iaddr[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[17]),
        .Q(iaddr[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[18]),
        .Q(iaddr[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[19]),
        .Q(iaddr[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[20]),
        .Q(iaddr[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[21]),
        .Q(iaddr[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[22]),
        .Q(iaddr[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[23]),
        .Q(iaddr[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[24]),
        .Q(iaddr[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[25]),
        .Q(iaddr[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[26]),
        .Q(iaddr[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[27]),
        .Q(iaddr[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[28]),
        .Q(Q[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[29]),
        .Q(Q[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[2]),
        .Q(Q[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[30]),
        .Q(Q[16]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[31] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[31]),
        .Q(Q[17]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[3]),
        .Q(Q[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[4]),
        .Q(Q[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[5]),
        .Q(Q[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[6]),
        .Q(Q[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[7]),
        .Q(Q[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[8]),
        .Q(Q[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_out1),
        .CE(u_regfile_n_137),
        .D(pc0_in[9]),
        .Q(Q[7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    ram_0_reg_i_1
       (.I0(u_regfile_n_226),
        .I1(\daddr_reg[31]_0 [11]),
        .I2(\daddr_reg[31]_0 [12]),
        .I3(dstrb),
        .I4(\daddr_reg[31]_0 [16]),
        .I5(\daddr_reg[31]_0 [17]),
        .O(\daddr_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    ram_0_reg_i_2
       (.I0(dwrite),
        .I1(dready_o),
        .I2(u_regfile_n_224),
        .I3(dready_r),
        .I4(dvalid),
        .O(WEA));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_7_0_5_i_1
       (.I0(\daddr_reg[3]_0 ),
        .I1(tx_fifo_full),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    ram_reg_0_7_0_5_i_2
       (.I0(\daddr_reg[31]_0 [1]),
        .I1(dvalid),
        .I2(u_regfile_n_224),
        .I3(dwrite),
        .I4(u_regfile_n_43),
        .I5(rx_dready_r_i_3_n_0),
        .O(\daddr_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    rx_dready_r_i_1
       (.I0(\daddr_reg[4]_0 ),
        .I1(rx_fifo_empty),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    rx_dready_r_i_2
       (.I0(dready_o_i_2_n_0),
        .I1(rx_dready_r_i_3_n_0),
        .I2(u_regfile_n_225),
        .I3(\daddr_reg[31]_0 [2]),
        .I4(\daddr_reg[31]_0 [1]),
        .I5(dwrite),
        .O(\daddr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rx_dready_r_i_3
       (.I0(\daddr_reg[31]_0 [8]),
        .I1(\daddr_reg[31]_0 [9]),
        .I2(\daddr_reg[31]_0 [7]),
        .I3(\daddr_reg[31]_0 [6]),
        .I4(dready_r_0),
        .I5(\daddr_reg[31]_0 [0]),
        .O(rx_dready_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000002000020)) 
    \shift_amt[4]_i_1 
       (.I0(state[3]),
        .I1(reset_IBUF),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\shift_amt[4]_i_3_n_0 ),
        .O(\shift_amt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \shift_amt[4]_i_3 
       (.I0(shift_amt__0[3]),
        .I1(shift_amt__0[0]),
        .I2(state[2]),
        .I3(shift_amt__0[2]),
        .I4(shift_amt__0[1]),
        .I5(shift_amt__0[4]),
        .O(\shift_amt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_amt[4]_i_5 
       (.I0(u_regfile_n_142),
        .I1(p_0_in_1[1]),
        .O(\shift_amt[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_amt_reg[0] 
       (.C(clk_out1),
        .CE(\shift_amt[4]_i_1_n_0 ),
        .D(shift_amt0_in[0]),
        .Q(shift_amt__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_amt_reg[1] 
       (.C(clk_out1),
        .CE(\shift_amt[4]_i_1_n_0 ),
        .D(u_regfile_n_40),
        .Q(shift_amt__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_amt_reg[2] 
       (.C(clk_out1),
        .CE(\shift_amt[4]_i_1_n_0 ),
        .D(shift_amt0_in[2]),
        .Q(shift_amt__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_amt_reg[3] 
       (.C(clk_out1),
        .CE(\shift_amt[4]_i_1_n_0 ),
        .D(shift_amt0_in[3]),
        .Q(shift_amt__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_amt_reg[4] 
       (.C(clk_out1),
        .CE(\shift_amt[4]_i_1_n_0 ),
        .D(shift_amt0_in[4]),
        .Q(shift_amt__0[4]),
        .R(1'b0));
  fwrisc_alu u_alu
       (.\FSM_sequential_state_reg[0] (u_alu_n_40),
        .\FSM_sequential_state_reg[2] (u_alu_n_37),
        .\FSM_sequential_state_reg[2]_0 (u_alu_n_38),
        .\FSM_sequential_state_reg[3] (u_alu_n_32),
        .\FSM_sequential_state_reg[3]_0 (u_alu_n_33),
        .Q({p_1_in,rs1[1],\instr_reg_n_0_[14] ,p_0_in27_in,\instr_reg_n_0_[12] ,p_0_in_1,\instr_reg_n_0_[3] ,\instr_reg_n_0_[1] ,\instr_reg_n_0_[0] }),
        .S({u_regfile_n_44,u_regfile_n_45,u_regfile_n_46,u_regfile_n_47}),
        .alu_op_a(alu_op_a),
        .\daddr_reg[11] ({u_regfile_n_83,u_regfile_n_84,u_regfile_n_85,u_regfile_n_86}),
        .\daddr_reg[12] ({u_regfile_n_103,u_regfile_n_104,u_regfile_n_105,u_regfile_n_106}),
        .\daddr_reg[17] ({u_regfile_n_99,u_regfile_n_100,u_regfile_n_101,u_regfile_n_102}),
        .\daddr_reg[23] ({u_regfile_n_87,u_regfile_n_88,u_regfile_n_89,u_regfile_n_90}),
        .\daddr_reg[26] ({u_regfile_n_91,u_regfile_n_92,u_regfile_n_93,u_regfile_n_94}),
        .\daddr_reg[30] ({u_regfile_n_95,u_regfile_n_96,u_regfile_n_97,u_regfile_n_98}),
        .\daddr_reg[7] ({u_regfile_n_79,u_regfile_n_80,u_regfile_n_81,u_regfile_n_82}),
        .data0(data0),
        .\dstrb[0]_i_9 (u_regfile_n_179),
        .\dstrb[0]_i_9_0 (u_regfile_n_34),
        .\instr_reg[31] (u_alu_n_36),
        .\instr_reg[5] (u_alu_n_34),
        .\instr_reg[5]_0 (u_alu_n_35),
        .\instr_reg[5]_1 (u_alu_n_39),
        .out1_carry_0(u_regfile_n_78),
        .out1_carry_1(u_regfile_n_32),
        .out1_carry_2(u_regfile_n_33),
        .out1_carry__0_i_18(u_regfile_n_147),
        .out1_carry__0_i_18_0(u_regfile_n_146),
        .out1_carry__0_i_18_1(state),
        .out1_carry__3_i_11(u_regfile_n_145),
        .out1_carry__6_i_11(u_regfile_n_36),
        .out1_carry_i_36(u_regfile_n_0));
  fwrisc_comparator u_comp
       (.CO(u_comp_n_0),
        .DI({u_regfile_n_180,u_regfile_n_181,u_regfile_n_182,u_regfile_n_183}),
        .S({u_regfile_n_227,u_regfile_n_228,u_regfile_n_229,u_regfile_n_230}),
        .\instr_reg[31] (u_comp_n_1),
        .out0_carry__1_0({u_regfile_n_200,u_regfile_n_201,u_regfile_n_202,u_regfile_n_203}),
        .out0_carry__1_1({u_regfile_n_231,u_regfile_n_232,u_regfile_n_233,u_regfile_n_234}),
        .out0_carry__2_0({u_regfile_n_204,u_regfile_n_205,u_regfile_n_206,u_regfile_n_207}),
        .out0_carry__2_1({u_regfile_n_235,u_regfile_n_236,u_regfile_n_237,u_regfile_n_238}),
        .\out0_inferred__0/i__carry__0_0 ({u_regfile_n_184,u_regfile_n_185,u_regfile_n_186,u_regfile_n_187}),
        .\out0_inferred__0/i__carry__1_0 ({u_regfile_n_208,u_regfile_n_209,u_regfile_n_210,u_regfile_n_211}),
        .\out0_inferred__1/i__carry__0_0 ({u_regfile_n_220,u_regfile_n_221,u_regfile_n_222,u_regfile_n_223}),
        .\out0_inferred__1/i__carry__1_0 ({u_regfile_n_216,u_regfile_n_217,u_regfile_n_218,u_regfile_n_219}),
        .\out0_inferred__1/i__carry__2_0 ({u_regfile_n_212,u_regfile_n_213,u_regfile_n_214,u_regfile_n_215}),
        .regs_reg_1(u_comp_n_2),
        .regs_reg_1_i_274({u_regfile_n_193,u_regfile_n_194,u_regfile_n_195,u_regfile_n_196}),
        .regs_reg_1_i_274_0({u_regfile_n_239,u_regfile_n_240,u_regfile_n_241,u_regfile_n_242}),
        .regs_reg_1_i_274_1({u_regfile_n_197,u_regfile_n_198,u_regfile_n_199}),
        .regs_reg_1_i_274_2(u_regfile_n_192),
        .regs_reg_1_i_274_3({u_regfile_n_188,u_regfile_n_189,u_regfile_n_190,u_regfile_n_191}));
  fwrisc_regfile u_regfile
       (.CO(u_comp_n_0),
        .D({shift_amt0_in[4:2],u_regfile_n_40,shift_amt0_in[0]}),
        .DI({u_regfile_n_180,u_regfile_n_181,u_regfile_n_182,u_regfile_n_183}),
        .E(u_regfile_n_137),
        .\FSM_sequential_state_reg[0] (u_regfile_n_78),
        .\FSM_sequential_state_reg[0]_0 ({u_regfile_n_79,u_regfile_n_80,u_regfile_n_81,u_regfile_n_82}),
        .\FSM_sequential_state_reg[0]_1 ({u_regfile_n_83,u_regfile_n_84,u_regfile_n_85,u_regfile_n_86}),
        .\FSM_sequential_state_reg[0]_10 (\FSM_sequential_state[0]_i_7_n_0 ),
        .\FSM_sequential_state_reg[0]_2 ({u_regfile_n_87,u_regfile_n_88,u_regfile_n_89,u_regfile_n_90}),
        .\FSM_sequential_state_reg[0]_3 ({u_regfile_n_91,u_regfile_n_92,u_regfile_n_93,u_regfile_n_94}),
        .\FSM_sequential_state_reg[0]_4 ({u_regfile_n_95,u_regfile_n_96,u_regfile_n_97,u_regfile_n_98}),
        .\FSM_sequential_state_reg[0]_5 ({u_regfile_n_99,u_regfile_n_100,u_regfile_n_101,u_regfile_n_102}),
        .\FSM_sequential_state_reg[0]_6 ({u_regfile_n_103,u_regfile_n_104,u_regfile_n_105,u_regfile_n_106}),
        .\FSM_sequential_state_reg[0]_7 (instr_counter),
        .\FSM_sequential_state_reg[0]_8 (u_alu_n_34),
        .\FSM_sequential_state_reg[0]_9 (\FSM_sequential_state[0]_i_6_n_0 ),
        .\FSM_sequential_state_reg[1] (pc0_in),
        .\FSM_sequential_state_reg[1]_0 ({u_regfile_n_138,u_regfile_n_139,u_regfile_n_140,u_regfile_n_141}),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state[1]_i_4_n_0 ),
        .\FSM_sequential_state_reg[1]_2 (\FSM_sequential_state[1]_i_5_n_0 ),
        .\FSM_sequential_state_reg[3] (u_regfile_n_32),
        .\FSM_sequential_state_reg[3]_0 ({cycle_counter_ovf,cycle_counter_reg__0}),
        .Q(state),
        .S({u_regfile_n_44,u_regfile_n_45,u_regfile_n_46,u_regfile_n_47}),
        .alu_op_a(alu_op_a),
        .alu_out(alu_out),
        .clk_out1(clk_out1),
        .\daddr[17]_i_3_0 (u_alu_n_40),
        .\daddr[4]_i_2_0 (u_alu_n_39),
        .\daddr[4]_i_2_1 (u_alu_n_33),
        .\daddr[7]_i_2_0 (u_alu_n_38),
        .\daddr_reg[12] (u_regfile_n_226),
        .\daddr_reg[18] (u_regfile_n_224),
        .\daddr_reg[30] ({p_1_in,\instr_reg_n_0_[30] ,\instr_reg_n_0_[29] ,p_0_in10_in,\instr_reg_n_0_[27] ,\instr_reg_n_0_[26] ,\instr_reg_n_0_[25] ,rs2,rs1,\instr_reg_n_0_[14] ,p_0_in27_in,\instr_reg_n_0_[12] ,rd,p_0_in_1,\instr_reg_n_0_[3] ,\instr_reg_n_0_[2] ,\instr_reg_n_0_[1] ,\instr_reg_n_0_[0] }),
        .\daddr_reg[6] (u_regfile_n_43),
        .\daddr_reg[7] (u_regfile_n_225),
        .data0(data0),
        .drdata_r0(drdata_r0),
        .dready_o(dready_o),
        .dready_r(dready_r),
        .\dstrb[0]_i_7_0 (u_alu_n_35),
        .dstrb_w(dstrb_w),
        .\instr_reg[0] (u_regfile_n_145),
        .\instr_reg[0]_0 (u_regfile_n_146),
        .\instr_reg[13] (u_regfile_n_33),
        .\instr_reg[13]_0 (u_regfile_n_142),
        .\instr_reg[1] (u_regfile_n_34),
        .\instr_reg[31] ({u_regfile_n_188,u_regfile_n_189,u_regfile_n_190,u_regfile_n_191}),
        .\instr_reg[31]_0 ({u_regfile_n_197,u_regfile_n_198,u_regfile_n_199}),
        .\instr_reg[31]_1 ({u_regfile_n_200,u_regfile_n_201,u_regfile_n_202,u_regfile_n_203}),
        .\instr_reg[31]_2 ({u_regfile_n_204,u_regfile_n_205,u_regfile_n_206,u_regfile_n_207}),
        .\instr_reg[31]_3 ({u_regfile_n_208,u_regfile_n_209,u_regfile_n_210,u_regfile_n_211}),
        .\instr_reg[31]_4 ({u_regfile_n_216,u_regfile_n_217,u_regfile_n_218,u_regfile_n_219}),
        .\instr_reg[31]_5 ({u_regfile_n_231,u_regfile_n_232,u_regfile_n_233,u_regfile_n_234}),
        .\instr_reg[31]_6 ({u_regfile_n_239,u_regfile_n_240,u_regfile_n_241,u_regfile_n_242}),
        .\instr_reg[3] (u_regfile_n_0),
        .\instr_reg[3]_0 (u_regfile_n_147),
        .\instr_reg[4] (u_regfile_n_36),
        .\instr_reg[5] (u_regfile_n_35),
        .\instr_reg[5]_0 (u_regfile_n_179),
        .out1_carry__0_i_18_0(u_alu_n_37),
        .out1_carry__0_i_9_0(instr_counter_reg__0),
        .p_0_in_0(p_0_in_0),
        .\pc[31]_i_4_0 (u_alu_n_32),
        .\pc[31]_i_4_1 (u_alu_n_36),
        .pc_plus4(pc_plus4),
        .\pc_reg[2] (\FSM_sequential_state[3]_i_3_n_0 ),
        .regs_reg_1_0(u_regfile_n_192),
        .regs_reg_1_1({u_regfile_n_193,u_regfile_n_194,u_regfile_n_195,u_regfile_n_196}),
        .regs_reg_1_2({Q[17:14],iaddr,Q[13:0]}),
        .regs_reg_1_i_147_0(u_comp_n_2),
        .regs_reg_1_i_147_1(u_comp_n_1),
        .regs_reg_1_i_151_0(regs_reg_1_i_151),
        .regs_reg_1_i_325_0(regs_reg_1_i_325),
        .regs_reg_1_i_333_0({\daddr_reg[31]_0 [17:14],daddr,\daddr_reg[31]_0 [13:10],\daddr_reg[31]_0 [5:0]}),
        .regs_reg_1_i_336_0(regs_reg_1_i_336),
        .regs_reg_1_i_339_0(regs_reg_1_i_339),
        .regs_reg_1_i_339_1(regs_reg_1_i_339_0),
        .regs_reg_2_0(u_regfile_n_42),
        .regs_reg_2_1({dwdata_w,u_regfile_n_172,u_regfile_n_173,u_regfile_n_174,u_regfile_n_175,u_regfile_n_176,u_regfile_n_177,u_regfile_n_178}),
        .regs_reg_2_2({u_regfile_n_184,u_regfile_n_185,u_regfile_n_186,u_regfile_n_187}),
        .regs_reg_2_3({u_regfile_n_212,u_regfile_n_213,u_regfile_n_214,u_regfile_n_215}),
        .regs_reg_2_4({u_regfile_n_220,u_regfile_n_221,u_regfile_n_222,u_regfile_n_223}),
        .regs_reg_2_5({u_regfile_n_227,u_regfile_n_228,u_regfile_n_229,u_regfile_n_230}),
        .regs_reg_2_6({u_regfile_n_235,u_regfile_n_236,u_regfile_n_237,u_regfile_n_238}),
        .rx_en(rx_en),
        .\shift_amt_reg[4] (\shift_amt[4]_i_5_n_0 ),
        .\shift_amt_reg[4]_0 (shift_amt__0),
        .tx_en(tx_en));
endmodule

module fwrisc_alu
   (data0,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[3]_0 ,
    \instr_reg[5] ,
    \instr_reg[5]_0 ,
    \instr_reg[31] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[2]_0 ,
    \instr_reg[5]_1 ,
    \FSM_sequential_state_reg[0] ,
    alu_op_a,
    S,
    \daddr_reg[7] ,
    \daddr_reg[11] ,
    \daddr_reg[12] ,
    \daddr_reg[17] ,
    \daddr_reg[23] ,
    \daddr_reg[26] ,
    \daddr_reg[30] ,
    out1_carry__0_i_18,
    out1_carry__0_i_18_0,
    Q,
    out1_carry_0,
    out1_carry_1,
    out1_carry_2,
    out1_carry__6_i_11,
    out1_carry__0_i_18_1,
    out1_carry__3_i_11,
    \dstrb[0]_i_9 ,
    \dstrb[0]_i_9_0 ,
    out1_carry_i_36);
  output [31:0]data0;
  output \FSM_sequential_state_reg[3] ;
  output \FSM_sequential_state_reg[3]_0 ;
  output \instr_reg[5] ;
  output \instr_reg[5]_0 ;
  output \instr_reg[31] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \instr_reg[5]_1 ;
  output \FSM_sequential_state_reg[0] ;
  input [30:0]alu_op_a;
  input [3:0]S;
  input [3:0]\daddr_reg[7] ;
  input [3:0]\daddr_reg[11] ;
  input [3:0]\daddr_reg[12] ;
  input [3:0]\daddr_reg[17] ;
  input [3:0]\daddr_reg[23] ;
  input [3:0]\daddr_reg[26] ;
  input [3:0]\daddr_reg[30] ;
  input out1_carry__0_i_18;
  input out1_carry__0_i_18_0;
  input [10:0]Q;
  input out1_carry_0;
  input out1_carry_1;
  input out1_carry_2;
  input out1_carry__6_i_11;
  input [3:0]out1_carry__0_i_18_1;
  input out1_carry__3_i_11;
  input \dstrb[0]_i_9 ;
  input \dstrb[0]_i_9_0 ;
  input out1_carry_i_36;

  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire [10:0]Q;
  wire [3:0]S;
  wire [30:0]alu_op_a;
  wire [3:0]\daddr_reg[11] ;
  wire [3:0]\daddr_reg[12] ;
  wire [3:0]\daddr_reg[17] ;
  wire [3:0]\daddr_reg[23] ;
  wire [3:0]\daddr_reg[26] ;
  wire [3:0]\daddr_reg[30] ;
  wire [3:0]\daddr_reg[7] ;
  wire [31:0]data0;
  wire \dstrb[0]_i_9 ;
  wire \dstrb[0]_i_9_0 ;
  wire \instr_reg[31] ;
  wire \instr_reg[5] ;
  wire \instr_reg[5]_0 ;
  wire \instr_reg[5]_1 ;
  wire out1_carry_0;
  wire out1_carry_1;
  wire out1_carry_2;
  wire out1_carry__0_i_18;
  wire out1_carry__0_i_18_0;
  wire [3:0]out1_carry__0_i_18_1;
  wire out1_carry__0_n_0;
  wire out1_carry__0_n_1;
  wire out1_carry__0_n_2;
  wire out1_carry__0_n_3;
  wire out1_carry__1_n_0;
  wire out1_carry__1_n_1;
  wire out1_carry__1_n_2;
  wire out1_carry__1_n_3;
  wire out1_carry__2_i_19_n_0;
  wire out1_carry__2_n_0;
  wire out1_carry__2_n_1;
  wire out1_carry__2_n_2;
  wire out1_carry__2_n_3;
  wire out1_carry__3_i_11;
  wire out1_carry__3_n_0;
  wire out1_carry__3_n_1;
  wire out1_carry__3_n_2;
  wire out1_carry__3_n_3;
  wire out1_carry__4_n_0;
  wire out1_carry__4_n_1;
  wire out1_carry__4_n_2;
  wire out1_carry__4_n_3;
  wire out1_carry__5_n_0;
  wire out1_carry__5_n_1;
  wire out1_carry__5_n_2;
  wire out1_carry__5_n_3;
  wire out1_carry__6_i_11;
  wire out1_carry__6_n_1;
  wire out1_carry__6_n_2;
  wire out1_carry__6_n_3;
  wire out1_carry_i_36;
  wire out1_carry_i_42_n_0;
  wire out1_carry_i_43_n_0;
  wire out1_carry_i_44_n_0;
  wire out1_carry_i_46_n_0;
  wire out1_carry_n_0;
  wire out1_carry_n_1;
  wire out1_carry_n_2;
  wire out1_carry_n_3;
  wire p_1_in;
  wire [3:3]NLW_out1_carry__6_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(Q[4]),
        .I1(out1_carry_i_36),
        .O(\instr_reg[5] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry
       (.CI(1'b0),
        .CO({out1_carry_n_0,out1_carry_n_1,out1_carry_n_2,out1_carry_n_3}),
        .CYINIT(alu_op_a[0]),
        .DI({alu_op_a[3:1],p_1_in}),
        .O(data0[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__0
       (.CI(out1_carry_n_0),
        .CO({out1_carry__0_n_0,out1_carry__0_n_1,out1_carry__0_n_2,out1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[7:4]),
        .O(data0[7:4]),
        .S(\daddr_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55555545)) 
    out1_carry__0_i_21
       (.I0(\FSM_sequential_state_reg[3]_0 ),
        .I1(\instr_reg[5] ),
        .I2(\instr_reg[5]_0 ),
        .I3(out1_carry__0_i_18),
        .I4(out1_carry__0_i_18_0),
        .O(\FSM_sequential_state_reg[3] ));
  LUT3 #(
    .INIT(8'hAE)) 
    out1_carry__0_i_22
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(\instr_reg[5]_0 ),
        .I2(\instr_reg[5] ),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__1
       (.CI(out1_carry__0_n_0),
        .CO({out1_carry__1_n_0,out1_carry__1_n_1,out1_carry__1_n_2,out1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[11:8]),
        .O(data0[11:8]),
        .S(\daddr_reg[11] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__2
       (.CI(out1_carry__1_n_0),
        .CO({out1_carry__2_n_0,out1_carry__2_n_1,out1_carry__2_n_2,out1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[15:12]),
        .O(data0[15:12]),
        .S(\daddr_reg[12] ));
  LUT6 #(
    .INIT(64'h4040400040404040)) 
    out1_carry__2_i_17
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(out1_carry__2_i_19_n_0),
        .I2(Q[10]),
        .I3(out1_carry_i_43_n_0),
        .I4(out1_carry__6_i_11),
        .I5(Q[8]),
        .O(\instr_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out1_carry__2_i_19
       (.I0(\instr_reg[5] ),
        .I1(\instr_reg[5]_0 ),
        .O(out1_carry__2_i_19_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__3
       (.CI(out1_carry__2_n_0),
        .CO({out1_carry__3_n_0,out1_carry__3_n_1,out1_carry__3_n_2,out1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[19:16]),
        .O(data0[19:16]),
        .S(\daddr_reg[17] ));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__3_i_18
       (.I0(out1_carry__0_i_18_1[0]),
        .I1(out1_carry__0_i_18_1[1]),
        .I2(out1_carry__0_i_18_1[2]),
        .I3(out1_carry__0_i_18_1[3]),
        .I4(Q[9]),
        .I5(out1_carry__3_i_11),
        .O(\FSM_sequential_state_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__4
       (.CI(out1_carry__3_n_0),
        .CO({out1_carry__4_n_0,out1_carry__4_n_1,out1_carry__4_n_2,out1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[23:20]),
        .O(data0[23:20]),
        .S(\daddr_reg[23] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__5
       (.CI(out1_carry__4_n_0),
        .CO({out1_carry__5_n_0,out1_carry__5_n_1,out1_carry__5_n_2,out1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(alu_op_a[27:24]),
        .O(data0[27:24]),
        .S(\daddr_reg[26] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 out1_carry__6
       (.CI(out1_carry__5_n_0),
        .CO({NLW_out1_carry__6_CO_UNCONNECTED[3],out1_carry__6_n_1,out1_carry__6_n_2,out1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,alu_op_a[30:28]}),
        .O(data0[31:28]),
        .S(\daddr_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBABB)) 
    out1_carry_i_32
       (.I0(\FSM_sequential_state_reg[3]_0 ),
        .I1(out1_carry__0_i_18),
        .I2(Q[4]),
        .I3(out1_carry__0_i_18_0),
        .O(\instr_reg[5]_1 ));
  LUT4 #(
    .INIT(16'h0060)) 
    out1_carry_i_33
       (.I0(out1_carry__0_i_18_1[3]),
        .I1(out1_carry__0_i_18_1[0]),
        .I2(out1_carry__0_i_18_1[1]),
        .I3(out1_carry__0_i_18_1[2]),
        .O(\FSM_sequential_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF0FEE0EFF0F0000)) 
    out1_carry_i_35
       (.I0(out1_carry_i_42_n_0),
        .I1(out1_carry_i_43_n_0),
        .I2(out1_carry_i_44_n_0),
        .I3(\dstrb[0]_i_9 ),
        .I4(\dstrb[0]_i_9_0 ),
        .I5(out1_carry_i_46_n_0),
        .O(\instr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0440)) 
    out1_carry_i_41
       (.I0(out1_carry__0_i_18_1[2]),
        .I1(out1_carry__0_i_18_1[1]),
        .I2(out1_carry__0_i_18_1[0]),
        .I3(out1_carry__0_i_18_1[3]),
        .I4(out1_carry__0_i_18),
        .I5(out1_carry__0_i_18_0),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    out1_carry_i_42
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(out1_carry_i_42_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out1_carry_i_43
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(out1_carry_i_43_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    out1_carry_i_44
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(out1_carry_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    out1_carry_i_46
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .O(out1_carry_i_46_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    out1_carry_i_5
       (.I0(out1_carry_0),
        .I1(out1_carry_1),
        .I2(out1_carry_2),
        .O(p_1_in));
endmodule

module fwrisc_comparator
   (CO,
    \instr_reg[31] ,
    regs_reg_1,
    DI,
    S,
    out0_carry__1_0,
    out0_carry__1_1,
    out0_carry__2_0,
    out0_carry__2_1,
    regs_reg_1_i_274,
    regs_reg_1_i_274_0,
    \out0_inferred__0/i__carry__0_0 ,
    \out0_inferred__0/i__carry__1_0 ,
    regs_reg_1_i_274_1,
    \out0_inferred__1/i__carry__0_0 ,
    \out0_inferred__1/i__carry__1_0 ,
    \out0_inferred__1/i__carry__2_0 ,
    regs_reg_1_i_274_2,
    regs_reg_1_i_274_3);
  output [0:0]CO;
  output [0:0]\instr_reg[31] ;
  output [0:0]regs_reg_1;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]out0_carry__1_0;
  input [3:0]out0_carry__1_1;
  input [3:0]out0_carry__2_0;
  input [3:0]out0_carry__2_1;
  input [3:0]regs_reg_1_i_274;
  input [3:0]regs_reg_1_i_274_0;
  input [3:0]\out0_inferred__0/i__carry__0_0 ;
  input [3:0]\out0_inferred__0/i__carry__1_0 ;
  input [2:0]regs_reg_1_i_274_1;
  input [3:0]\out0_inferred__1/i__carry__0_0 ;
  input [3:0]\out0_inferred__1/i__carry__1_0 ;
  input [3:0]\out0_inferred__1/i__carry__2_0 ;
  input [0:0]regs_reg_1_i_274_2;
  input [3:0]regs_reg_1_i_274_3;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]\instr_reg[31] ;
  wire out0_carry__0_n_0;
  wire out0_carry__0_n_1;
  wire out0_carry__0_n_2;
  wire out0_carry__0_n_3;
  wire [3:0]out0_carry__1_0;
  wire [3:0]out0_carry__1_1;
  wire out0_carry__1_n_0;
  wire out0_carry__1_n_1;
  wire out0_carry__1_n_2;
  wire out0_carry__1_n_3;
  wire [3:0]out0_carry__2_0;
  wire [3:0]out0_carry__2_1;
  wire out0_carry__2_n_1;
  wire out0_carry__2_n_2;
  wire out0_carry__2_n_3;
  wire out0_carry_n_0;
  wire out0_carry_n_1;
  wire out0_carry_n_2;
  wire out0_carry_n_3;
  wire [3:0]\out0_inferred__0/i__carry__0_0 ;
  wire \out0_inferred__0/i__carry__0_n_0 ;
  wire \out0_inferred__0/i__carry__0_n_1 ;
  wire \out0_inferred__0/i__carry__0_n_2 ;
  wire \out0_inferred__0/i__carry__0_n_3 ;
  wire [3:0]\out0_inferred__0/i__carry__1_0 ;
  wire \out0_inferred__0/i__carry__1_n_2 ;
  wire \out0_inferred__0/i__carry__1_n_3 ;
  wire \out0_inferred__0/i__carry_n_0 ;
  wire \out0_inferred__0/i__carry_n_1 ;
  wire \out0_inferred__0/i__carry_n_2 ;
  wire \out0_inferred__0/i__carry_n_3 ;
  wire [3:0]\out0_inferred__1/i__carry__0_0 ;
  wire \out0_inferred__1/i__carry__0_n_0 ;
  wire \out0_inferred__1/i__carry__0_n_1 ;
  wire \out0_inferred__1/i__carry__0_n_2 ;
  wire \out0_inferred__1/i__carry__0_n_3 ;
  wire [3:0]\out0_inferred__1/i__carry__1_0 ;
  wire \out0_inferred__1/i__carry__1_n_0 ;
  wire \out0_inferred__1/i__carry__1_n_1 ;
  wire \out0_inferred__1/i__carry__1_n_2 ;
  wire \out0_inferred__1/i__carry__1_n_3 ;
  wire [3:0]\out0_inferred__1/i__carry__2_0 ;
  wire \out0_inferred__1/i__carry__2_n_1 ;
  wire \out0_inferred__1/i__carry__2_n_2 ;
  wire \out0_inferred__1/i__carry__2_n_3 ;
  wire \out0_inferred__1/i__carry_n_0 ;
  wire \out0_inferred__1/i__carry_n_1 ;
  wire \out0_inferred__1/i__carry_n_2 ;
  wire \out0_inferred__1/i__carry_n_3 ;
  wire [0:0]regs_reg_1;
  wire [3:0]regs_reg_1_i_274;
  wire [3:0]regs_reg_1_i_274_0;
  wire [2:0]regs_reg_1_i_274_1;
  wire [0:0]regs_reg_1_i_274_2;
  wire [3:0]regs_reg_1_i_274_3;
  wire [3:0]NLW_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_out0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_out0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_out0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_out0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_out0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_out0_inferred__1/i__carry__2_O_UNCONNECTED ;

  CARRY4 out0_carry
       (.CI(1'b0),
        .CO({out0_carry_n_0,out0_carry_n_1,out0_carry_n_2,out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_out0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 out0_carry__0
       (.CI(out0_carry_n_0),
        .CO({out0_carry__0_n_0,out0_carry__0_n_1,out0_carry__0_n_2,out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out0_carry__1_0),
        .O(NLW_out0_carry__0_O_UNCONNECTED[3:0]),
        .S(out0_carry__1_1));
  CARRY4 out0_carry__1
       (.CI(out0_carry__0_n_0),
        .CO({out0_carry__1_n_0,out0_carry__1_n_1,out0_carry__1_n_2,out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out0_carry__2_0),
        .O(NLW_out0_carry__1_O_UNCONNECTED[3:0]),
        .S(out0_carry__2_1));
  CARRY4 out0_carry__2
       (.CI(out0_carry__1_n_0),
        .CO({CO,out0_carry__2_n_1,out0_carry__2_n_2,out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(regs_reg_1_i_274),
        .O(NLW_out0_carry__2_O_UNCONNECTED[3:0]),
        .S(regs_reg_1_i_274_0));
  CARRY4 \out0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\out0_inferred__0/i__carry_n_0 ,\out0_inferred__0/i__carry_n_1 ,\out0_inferred__0/i__carry_n_2 ,\out0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\out0_inferred__0/i__carry__0_0 ));
  CARRY4 \out0_inferred__0/i__carry__0 
       (.CI(\out0_inferred__0/i__carry_n_0 ),
        .CO({\out0_inferred__0/i__carry__0_n_0 ,\out0_inferred__0/i__carry__0_n_1 ,\out0_inferred__0/i__carry__0_n_2 ,\out0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\out0_inferred__0/i__carry__1_0 ));
  CARRY4 \out0_inferred__0/i__carry__1 
       (.CI(\out0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_out0_inferred__0/i__carry__1_CO_UNCONNECTED [3],\instr_reg[31] ,\out0_inferred__0/i__carry__1_n_2 ,\out0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_out0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,regs_reg_1_i_274_1}));
  CARRY4 \out0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\out0_inferred__1/i__carry_n_0 ,\out0_inferred__1/i__carry_n_1 ,\out0_inferred__1/i__carry_n_2 ,\out0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\NLW_out0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(\out0_inferred__1/i__carry__0_0 ));
  CARRY4 \out0_inferred__1/i__carry__0 
       (.CI(\out0_inferred__1/i__carry_n_0 ),
        .CO({\out0_inferred__1/i__carry__0_n_0 ,\out0_inferred__1/i__carry__0_n_1 ,\out0_inferred__1/i__carry__0_n_2 ,\out0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(out0_carry__1_0),
        .O(\NLW_out0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\out0_inferred__1/i__carry__1_0 ));
  CARRY4 \out0_inferred__1/i__carry__1 
       (.CI(\out0_inferred__1/i__carry__0_n_0 ),
        .CO({\out0_inferred__1/i__carry__1_n_0 ,\out0_inferred__1/i__carry__1_n_1 ,\out0_inferred__1/i__carry__1_n_2 ,\out0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(out0_carry__2_0),
        .O(\NLW_out0_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\out0_inferred__1/i__carry__2_0 ));
  CARRY4 \out0_inferred__1/i__carry__2 
       (.CI(\out0_inferred__1/i__carry__1_n_0 ),
        .CO({regs_reg_1,\out0_inferred__1/i__carry__2_n_1 ,\out0_inferred__1/i__carry__2_n_2 ,\out0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({regs_reg_1_i_274_2,regs_reg_1_i_274[2:0]}),
        .O(\NLW_out0_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S(regs_reg_1_i_274_3));
endmodule

module fwrisc_fpga_top
   (program_receiving_OBUF,
    tx,
    program_done_OBUF,
    program_ov_OBUF,
    clk_out1,
    reset_IBUF,
    D);
  output program_receiving_OBUF;
  output tx;
  output program_done_OBUF;
  output program_ov_OBUF;
  input clk_out1;
  input reset_IBUF;
  input [0:0]D;

  wire [0:0]D;
  wire [31:0]UART_Baudrate_Div;
  wire [31:0]UART_Tx_Buffer;
  wire [31:12]addr_d;
  wire [31:12]addr_i;
  wire clk_out1;
  wire [31:2]daddr;
  wire [31:0]drdata_r0;
  wire dready_o;
  wire dready_r;
  wire dvalid;
  wire [31:2]iaddr;
  wire iready_r;
  wire itcm_full;
  wire itcm_full_i_1_n_0;
  wire itcm_full_i_3_n_0;
  wire itcm_full_i_4_n_0;
  wire itcm_full_i_5_n_0;
  wire p_0_in;
  wire [31:0]p_0_in_0;
  wire [7:0]p_3_in;
  wire \program_addr[0]_i_3_n_0 ;
  wire [11:0]program_addr_reg;
  wire \program_addr_reg[0]_i_2_n_0 ;
  wire \program_addr_reg[0]_i_2_n_1 ;
  wire \program_addr_reg[0]_i_2_n_2 ;
  wire \program_addr_reg[0]_i_2_n_3 ;
  wire \program_addr_reg[0]_i_2_n_4 ;
  wire \program_addr_reg[0]_i_2_n_5 ;
  wire \program_addr_reg[0]_i_2_n_6 ;
  wire \program_addr_reg[0]_i_2_n_7 ;
  wire \program_addr_reg[12]_i_1_n_2 ;
  wire \program_addr_reg[12]_i_1_n_3 ;
  wire \program_addr_reg[12]_i_1_n_5 ;
  wire \program_addr_reg[12]_i_1_n_6 ;
  wire \program_addr_reg[12]_i_1_n_7 ;
  wire \program_addr_reg[4]_i_1_n_0 ;
  wire \program_addr_reg[4]_i_1_n_1 ;
  wire \program_addr_reg[4]_i_1_n_2 ;
  wire \program_addr_reg[4]_i_1_n_3 ;
  wire \program_addr_reg[4]_i_1_n_4 ;
  wire \program_addr_reg[4]_i_1_n_5 ;
  wire \program_addr_reg[4]_i_1_n_6 ;
  wire \program_addr_reg[4]_i_1_n_7 ;
  wire \program_addr_reg[8]_i_1_n_0 ;
  wire \program_addr_reg[8]_i_1_n_1 ;
  wire \program_addr_reg[8]_i_1_n_2 ;
  wire \program_addr_reg[8]_i_1_n_3 ;
  wire \program_addr_reg[8]_i_1_n_4 ;
  wire \program_addr_reg[8]_i_1_n_5 ;
  wire \program_addr_reg[8]_i_1_n_6 ;
  wire \program_addr_reg[8]_i_1_n_7 ;
  wire [14:12]program_addr_reg__0;
  wire [31:0]program_data;
  wire program_done_OBUF;
  wire program_ov_OBUF;
  wire program_receiving_OBUF;
  wire reset_IBUF;
  wire rom_reg_1_0_i_2_n_0;
  wire rom_reg_1_2_i_1_n_0;
  wire rom_reg_2_0_n_60;
  wire rom_reg_2_0_n_61;
  wire rom_reg_2_0_n_62;
  wire rom_reg_2_0_n_63;
  wire rom_reg_2_0_n_64;
  wire rom_reg_2_0_n_65;
  wire rom_reg_2_0_n_66;
  wire rom_reg_2_0_n_67;
  wire rom_reg_2_0_n_75;
  wire rom_reg_2_1_i_1_n_0;
  wire rom_reg_2_1_n_60;
  wire rom_reg_2_1_n_61;
  wire rom_reg_2_1_n_62;
  wire rom_reg_2_1_n_63;
  wire rom_reg_2_1_n_64;
  wire rom_reg_2_1_n_65;
  wire rom_reg_2_1_n_66;
  wire rom_reg_2_1_n_67;
  wire rom_reg_2_1_n_75;
  wire rom_reg_2_2_n_60;
  wire rom_reg_2_2_n_61;
  wire rom_reg_2_2_n_62;
  wire rom_reg_2_2_n_63;
  wire rom_reg_2_2_n_64;
  wire rom_reg_2_2_n_65;
  wire rom_reg_2_2_n_66;
  wire rom_reg_2_2_n_67;
  wire rom_reg_2_2_n_75;
  wire rom_reg_2_3_i_1_n_0;
  wire rom_reg_2_3_n_63;
  wire rom_reg_2_3_n_64;
  wire rom_reg_2_3_n_65;
  wire rom_reg_2_3_n_66;
  wire rom_reg_2_3_n_67;
  wire rom_wr_en;
  wire rom_wr_en00_in;
  wire rx_en;
  wire [7:0]rx_program_data;
  wire [1:0]rx_program_data_cnt;
  wire \rx_program_data_cnt[0]_i_1_n_0 ;
  wire \rx_program_data_cnt[1]_i_1_n_0 ;
  wire [1:0]rx_program_data_cnt_r;
  wire rx_program_en;
  wire rx_program_en_i_1_n_0;
  wire rx_program_en_i_2_n_0;
  wire rx_program_en_i_3_n_0;
  wire rx_program_en_i_4_n_0;
  wire rx_program_en_i_5_n_0;
  wire rx_program_en_i_6_n_0;
  wire rx_program_en_i_7_n_0;
  wire rx_program_en_i_8_n_0;
  wire rx_program_en_i_9_n_0;
  wire tx;
  wire tx_en;
  wire \u_UART_Registers/dready_fifo ;
  wire \u_UART_Registers/rx_fifo_empty ;
  wire \u_UART_Registers/tx_fifo_full ;
  wire \u_UART_Registers/u_if_fifo/dready_r ;
  wire \u_UART_Registers/u_if_fifo/rx_dready ;
  wire \u_UART_Registers/u_if_fifo/rx_dready_r ;
  wire u_core_n_39;
  wire u_core_n_40;
  wire u_core_n_42;
  wire u_core_n_43;
  wire u_core_n_44;
  wire u_core_n_45;
  wire u_core_n_46;
  wire u_core_n_47;
  wire u_core_n_48;
  wire u_core_n_49;
  wire u_core_n_50;
  wire u_core_n_51;
  wire u_core_n_52;
  wire u_core_n_53;
  wire u_core_n_54;
  wire u_core_n_55;
  wire u_core_n_56;
  wire u_core_n_57;
  wire u_core_n_58;
  wire u_core_n_59;
  wire u_core_n_60;
  wire u_core_n_61;
  wire u_core_n_62;
  wire u_core_n_63;
  wire u_core_n_72;
  wire u_core_n_73;
  wire u_core_n_74;
  wire u_core_n_75;
  wire u_core_n_76;
  wire u_core_n_77;
  wire u_core_n_78;
  wire u_core_n_79;
  wire u_core_n_80;
  wire u_uart_n_39;
  wire u_uart_n_48;
  wire u_uart_n_49;
  wire u_uart_n_50;
  wire u_uart_n_51;
  wire u_uart_n_52;
  wire u_uart_n_53;
  wire u_uart_n_54;
  wire u_uart_n_55;
  wire u_uart_n_56;
  wire [3:2]\NLW_program_addr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_program_addr_reg[12]_i_1_O_UNCONNECTED ;
  wire NLW_ram_0_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_0_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_0_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_0_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_0_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_0_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_0_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_0_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_0_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_0_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_0_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_0_reg_RDADDRECC_UNCONNECTED;
  wire NLW_ram_1_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_1_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_1_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_1_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_1_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_1_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_1_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_1_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_1_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_1_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_1_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_1_reg_RDADDRECC_UNCONNECTED;
  wire NLW_ram_2_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_2_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_2_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_2_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_2_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_2_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_2_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_2_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_2_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_2_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_2_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_2_reg_RDADDRECC_UNCONNECTED;
  wire NLW_ram_3_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_3_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_3_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_3_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_3_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_3_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_3_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_ram_3_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_3_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_3_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_3_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_3_reg_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_1_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_1_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_1_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_1_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_1_3_DOADO_UNCONNECTED;
  wire [31:5]NLW_rom_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_rom_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_2_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_2_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_2_0_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_2_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_2_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_2_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_2_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_2_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_2_0_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_2_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_2_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_2_1_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_2_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_2_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_2_1_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_2_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_2_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_2_1_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_2_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_2_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_2_2_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_2_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_rom_reg_2_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_2_2_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_rom_reg_2_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_2_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_2_2_RDADDRECC_UNCONNECTED;
  wire NLW_rom_reg_2_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_rom_reg_2_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_rom_reg_2_3_DBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_rom_reg_2_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_rom_reg_2_3_DOADO_UNCONNECTED;
  wire [31:5]NLW_rom_reg_2_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_rom_reg_2_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_rom_reg_2_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_rom_reg_2_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_rom_reg_2_3_RDADDRECC_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[12]),
        .Q(addr_d[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[13]),
        .Q(addr_d[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[14]),
        .Q(addr_d[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[15]),
        .Q(addr_d[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[28]),
        .Q(addr_d[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[29]),
        .Q(addr_d[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[30]),
        .Q(addr_d[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_d_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(daddr[31]),
        .Q(addr_d[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[12]),
        .Q(addr_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[13]),
        .Q(addr_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[14]),
        .Q(addr_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[15]),
        .Q(addr_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[28]),
        .Q(addr_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[29]),
        .Q(addr_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[30]),
        .Q(addr_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(iaddr[31]),
        .Q(addr_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    dready_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dvalid),
        .Q(dready_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iready_r_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(u_core_n_46),
        .Q(iready_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    itcm_full_i_1
       (.I0(itcm_full),
        .I1(program_ov_OBUF),
        .O(itcm_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    itcm_full_i_2
       (.I0(itcm_full_i_3_n_0),
        .I1(itcm_full_i_4_n_0),
        .I2(itcm_full_i_5_n_0),
        .I3(program_addr_reg__0[12]),
        .I4(program_addr_reg[0]),
        .I5(program_addr_reg__0[13]),
        .O(itcm_full));
  LUT4 #(
    .INIT(16'hDFFF)) 
    itcm_full_i_3
       (.I0(program_addr_reg[11]),
        .I1(program_addr_reg__0[14]),
        .I2(program_addr_reg[10]),
        .I3(program_addr_reg[6]),
        .O(itcm_full_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    itcm_full_i_4
       (.I0(program_addr_reg[7]),
        .I1(program_addr_reg[5]),
        .I2(program_addr_reg[9]),
        .I3(program_addr_reg[3]),
        .O(itcm_full_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    itcm_full_i_5
       (.I0(program_addr_reg[1]),
        .I1(program_addr_reg[4]),
        .I2(program_addr_reg[8]),
        .I3(program_addr_reg[2]),
        .O(itcm_full_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    itcm_full_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(itcm_full_i_1_n_0),
        .Q(program_ov_OBUF),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h1000)) 
    \program_addr[0]_i_1 
       (.I0(rx_program_data_cnt[0]),
        .I1(rx_program_data_cnt[1]),
        .I2(rx_program_data_cnt_r[1]),
        .I3(rx_program_data_cnt_r[0]),
        .O(rom_wr_en));
  LUT1 #(
    .INIT(2'h1)) 
    \program_addr[0]_i_3 
       (.I0(program_addr_reg[0]),
        .O(\program_addr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[0] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[0]_i_2_n_7 ),
        .Q(program_addr_reg[0]),
        .R(reset_IBUF));
  CARRY4 \program_addr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\program_addr_reg[0]_i_2_n_0 ,\program_addr_reg[0]_i_2_n_1 ,\program_addr_reg[0]_i_2_n_2 ,\program_addr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\program_addr_reg[0]_i_2_n_4 ,\program_addr_reg[0]_i_2_n_5 ,\program_addr_reg[0]_i_2_n_6 ,\program_addr_reg[0]_i_2_n_7 }),
        .S({program_addr_reg[3:1],\program_addr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[10] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[8]_i_1_n_5 ),
        .Q(program_addr_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[11] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[8]_i_1_n_4 ),
        .Q(program_addr_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[12] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[12]_i_1_n_7 ),
        .Q(program_addr_reg__0[12]),
        .R(reset_IBUF));
  CARRY4 \program_addr_reg[12]_i_1 
       (.CI(\program_addr_reg[8]_i_1_n_0 ),
        .CO({\NLW_program_addr_reg[12]_i_1_CO_UNCONNECTED [3:2],\program_addr_reg[12]_i_1_n_2 ,\program_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_program_addr_reg[12]_i_1_O_UNCONNECTED [3],\program_addr_reg[12]_i_1_n_5 ,\program_addr_reg[12]_i_1_n_6 ,\program_addr_reg[12]_i_1_n_7 }),
        .S({1'b0,program_addr_reg__0}));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[13] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[12]_i_1_n_6 ),
        .Q(program_addr_reg__0[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[14] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[12]_i_1_n_5 ),
        .Q(program_addr_reg__0[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[1] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[0]_i_2_n_6 ),
        .Q(program_addr_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[2] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[0]_i_2_n_5 ),
        .Q(program_addr_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[3] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[0]_i_2_n_4 ),
        .Q(program_addr_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[4] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[4]_i_1_n_7 ),
        .Q(program_addr_reg[4]),
        .R(reset_IBUF));
  CARRY4 \program_addr_reg[4]_i_1 
       (.CI(\program_addr_reg[0]_i_2_n_0 ),
        .CO({\program_addr_reg[4]_i_1_n_0 ,\program_addr_reg[4]_i_1_n_1 ,\program_addr_reg[4]_i_1_n_2 ,\program_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\program_addr_reg[4]_i_1_n_4 ,\program_addr_reg[4]_i_1_n_5 ,\program_addr_reg[4]_i_1_n_6 ,\program_addr_reg[4]_i_1_n_7 }),
        .S(program_addr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[5] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[4]_i_1_n_6 ),
        .Q(program_addr_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[6] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[4]_i_1_n_5 ),
        .Q(program_addr_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[7] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[4]_i_1_n_4 ),
        .Q(program_addr_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[8] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[8]_i_1_n_7 ),
        .Q(program_addr_reg[8]),
        .R(reset_IBUF));
  CARRY4 \program_addr_reg[8]_i_1 
       (.CI(\program_addr_reg[4]_i_1_n_0 ),
        .CO({\program_addr_reg[8]_i_1_n_0 ,\program_addr_reg[8]_i_1_n_1 ,\program_addr_reg[8]_i_1_n_2 ,\program_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\program_addr_reg[8]_i_1_n_4 ,\program_addr_reg[8]_i_1_n_5 ,\program_addr_reg[8]_i_1_n_6 ,\program_addr_reg[8]_i_1_n_7 }),
        .S(program_addr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \program_addr_reg[9] 
       (.C(clk_out1),
        .CE(rom_wr_en),
        .D(\program_addr_reg[8]_i_1_n_6 ),
        .Q(program_addr_reg[9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[0] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[0]),
        .Q(program_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[10] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[2]),
        .Q(program_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[11] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[3]),
        .Q(program_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[12] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[4]),
        .Q(program_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[13] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[5]),
        .Q(program_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[14] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[6]),
        .Q(program_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[15] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[7]),
        .Q(program_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[16] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[8]),
        .Q(program_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[17] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[9]),
        .Q(program_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[18] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[10]),
        .Q(program_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[19] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[11]),
        .Q(program_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[1] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[1]),
        .Q(program_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[20] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[12]),
        .Q(program_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[21] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[13]),
        .Q(program_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[22] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[14]),
        .Q(program_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[23] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[15]),
        .Q(program_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[24] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[16]),
        .Q(program_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[25] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[17]),
        .Q(program_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[26] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[18]),
        .Q(program_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[27] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[19]),
        .Q(program_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[28] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[20]),
        .Q(program_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[29] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[21]),
        .Q(program_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[2] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[2]),
        .Q(program_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[30] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[22]),
        .Q(program_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[31] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[23]),
        .Q(program_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[3] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[3]),
        .Q(program_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[4] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[4]),
        .Q(program_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[5] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[5]),
        .Q(program_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[6] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[6]),
        .Q(program_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[7] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(rx_program_data[7]),
        .Q(program_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[8] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[0]),
        .Q(program_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \program_data_reg[9] 
       (.C(clk_out1),
        .CE(program_receiving_OBUF),
        .D(program_data[1]),
        .Q(program_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    program_done_OBUF_inst_i_1
       (.I0(rx_program_en),
        .O(program_done_OBUF));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_0_reg
       (.ADDRARDADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_0_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_0_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_ram_0_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,u_core_n_72,u_core_n_73,u_core_n_74,u_core_n_75,u_core_n_76,u_core_n_77,u_core_n_78,u_core_n_79}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_0_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_0_reg_DOBDO_UNCONNECTED[31:8],p_0_in_0[7:0]}),
        .DOPADOP(NLW_ram_0_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_0_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_0_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_core_n_45),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_0_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_0_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_0_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_0_reg_SBITERR_UNCONNECTED),
        .WEA({u_core_n_44,u_core_n_44,u_core_n_44,u_core_n_44}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_1" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_1_reg
       (.ADDRARDADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_1_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_1_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_ram_1_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_3_in}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_1_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_1_reg_DOBDO_UNCONNECTED[31:8],p_0_in_0[15:8]}),
        .DOPADOP(NLW_ram_1_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_1_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_1_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_1_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_1_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_1_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_1_reg_SBITERR_UNCONNECTED),
        .WEA({u_core_n_44,u_core_n_44,u_core_n_44,u_core_n_44}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_2" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_2_reg
       (.ADDRARDADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_2_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_2_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_ram_2_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,u_core_n_56,u_core_n_57,u_core_n_58,u_core_n_59,u_core_n_60,u_core_n_61,u_core_n_62,u_core_n_63}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_2_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_2_reg_DOBDO_UNCONNECTED[31:8],p_0_in_0[23:16]}),
        .DOPADOP(NLW_ram_2_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_2_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_2_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_2_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_2_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_2_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_2_reg_SBITERR_UNCONNECTED),
        .WEA({u_core_n_44,u_core_n_44,u_core_n_44,u_core_n_44}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_3" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    ram_3_reg
       (.ADDRARDADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_3_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_3_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_ram_3_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,u_core_n_48,u_core_n_49,u_core_n_50,u_core_n_51,u_core_n_52,u_core_n_53,u_core_n_54,u_core_n_55}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_3_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_3_reg_DOBDO_UNCONNECTED[31:8],p_0_in_0[31:24]}),
        .DOPADOP(NLW_ram_3_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_3_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_3_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_3_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_3_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_3_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_3_reg_SBITERR_UNCONNECTED),
        .WEA({u_core_n_44,u_core_n_44,u_core_n_44,u_core_n_44}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_1_0
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_1_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_1_0_DOBDO_UNCONNECTED[31:8],drdata_r0[7:0]}),
        .DOPADOP(NLW_rom_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_1_0_DOPBDOP_UNCONNECTED[3:1],drdata_r0[8]}),
        .ECCPARITY(NLW_rom_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    rom_reg_1_0_i_1
       (.I0(rx_program_data_cnt[1]),
        .I1(rx_program_data_cnt[0]),
        .O(rom_wr_en00_in));
  LUT2 #(
    .INIT(4'h8)) 
    rom_reg_1_0_i_2
       (.I0(rx_program_data_cnt_r[0]),
        .I1(rx_program_data_cnt_r[1]),
        .O(rom_reg_1_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_1_1
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[16:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[17]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_1_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_1_1_DOBDO_UNCONNECTED[31:8],drdata_r0[16:9]}),
        .DOPADOP(NLW_rom_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_1_1_DOPBDOP_UNCONNECTED[3:1],drdata_r0[17]}),
        .ECCPARITY(NLW_rom_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "18" *) 
  (* bram_slice_end = "26" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_1_2
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[25:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[26]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_1_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_1_2_DOBDO_UNCONNECTED[31:8],drdata_r0[25:18]}),
        .DOPADOP(NLW_rom_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_1_2_DOPBDOP_UNCONNECTED[3:1],drdata_r0[26]}),
        .ECCPARITY(NLW_rom_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0,rom_reg_1_0_i_2_n_0,rom_reg_1_0_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    rom_reg_1_2_i_1
       (.I0(rx_program_data_cnt_r[0]),
        .I1(rx_program_data_cnt_r[1]),
        .O(rom_reg_1_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "27" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_1_3
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,daddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[31:27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_rom_reg_1_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_1_3_DOBDO_UNCONNECTED[31:5],drdata_r0[31:27]}),
        .DOPADOP(NLW_rom_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_rom_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_rom_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_2_0
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,iaddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_2_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_2_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_2_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_2_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_2_0_DOBDO_UNCONNECTED[31:8],rom_reg_2_0_n_60,rom_reg_2_0_n_61,rom_reg_2_0_n_62,rom_reg_2_0_n_63,rom_reg_2_0_n_64,rom_reg_2_0_n_65,rom_reg_2_0_n_66,rom_reg_2_0_n_67}),
        .DOPADOP(NLW_rom_reg_2_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_2_0_DOPBDOP_UNCONNECTED[3:1],rom_reg_2_0_n_75}),
        .ECCPARITY(NLW_rom_reg_2_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_2_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_2_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_2_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_2_0_SBITERR_UNCONNECTED),
        .WEA({rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0,rom_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_2_1
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,iaddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_2_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_2_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_2_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[16:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[17]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_2_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_2_1_DOBDO_UNCONNECTED[31:8],rom_reg_2_1_n_60,rom_reg_2_1_n_61,rom_reg_2_1_n_62,rom_reg_2_1_n_63,rom_reg_2_1_n_64,rom_reg_2_1_n_65,rom_reg_2_1_n_66,rom_reg_2_1_n_67}),
        .DOPADOP(NLW_rom_reg_2_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_2_1_DOPBDOP_UNCONNECTED[3:1],rom_reg_2_1_n_75}),
        .ECCPARITY(NLW_rom_reg_2_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_2_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_2_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_2_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_2_1_SBITERR_UNCONNECTED),
        .WEA({rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    rom_reg_2_1_i_1
       (.I0(rx_program_data_cnt_r[0]),
        .I1(rx_program_data_cnt_r[1]),
        .O(rom_reg_2_1_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "18" *) 
  (* bram_slice_end = "26" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_2_2
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,iaddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_2_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_2_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_2_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[25:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,program_data[26]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_rom_reg_2_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_2_2_DOBDO_UNCONNECTED[31:8],rom_reg_2_2_n_60,rom_reg_2_2_n_61,rom_reg_2_2_n_62,rom_reg_2_2_n_63,rom_reg_2_2_n_64,rom_reg_2_2_n_65,rom_reg_2_2_n_66,rom_reg_2_2_n_67}),
        .DOPADOP(NLW_rom_reg_2_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_rom_reg_2_2_DOPBDOP_UNCONNECTED[3:1],rom_reg_2_2_n_75}),
        .ECCPARITY(NLW_rom_reg_2_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_2_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_2_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_2_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_2_2_SBITERR_UNCONNECTED),
        .WEA({rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "rom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "27" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    rom_reg_2_3
       (.ADDRARDADDR({1'b1,program_addr_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,iaddr[13:2],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_rom_reg_2_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_rom_reg_2_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DBITERR(NLW_rom_reg_2_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,program_data[31:27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_rom_reg_2_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_rom_reg_2_3_DOBDO_UNCONNECTED[31:5],rom_reg_2_3_n_63,rom_reg_2_3_n_64,rom_reg_2_3_n_65,rom_reg_2_3_n_66,rom_reg_2_3_n_67}),
        .DOPADOP(NLW_rom_reg_2_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_rom_reg_2_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_rom_reg_2_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(rom_wr_en00_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_rom_reg_2_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_rom_reg_2_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_rom_reg_2_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_rom_reg_2_3_SBITERR_UNCONNECTED),
        .WEA({rom_reg_2_3_i_1_n_0,rom_reg_2_3_i_1_n_0,rom_reg_2_1_i_1_n_0,rom_reg_2_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    rom_reg_2_3_i_1
       (.I0(rx_program_data_cnt_r[0]),
        .I1(rx_program_data_cnt_r[1]),
        .O(rom_reg_2_3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_program_data_cnt[0]_i_1 
       (.I0(program_receiving_OBUF),
        .I1(rx_program_data_cnt[0]),
        .O(\rx_program_data_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rx_program_data_cnt[1]_i_1 
       (.I0(rx_program_data_cnt[0]),
        .I1(program_receiving_OBUF),
        .I2(rx_program_data_cnt[1]),
        .O(\rx_program_data_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_program_data_cnt_r_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rx_program_data_cnt[0]),
        .Q(rx_program_data_cnt_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_program_data_cnt_r_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rx_program_data_cnt[1]),
        .Q(rx_program_data_cnt_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_program_data_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\rx_program_data_cnt[0]_i_1_n_0 ),
        .Q(rx_program_data_cnt[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \rx_program_data_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\rx_program_data_cnt[1]_i_1_n_0 ),
        .Q(rx_program_data_cnt[1]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h00000000AAAAAA8A)) 
    rx_program_en_i_1
       (.I0(rx_program_en),
        .I1(rx_program_en_i_2_n_0),
        .I2(rx_program_en_i_3_n_0),
        .I3(rx_program_en_i_4_n_0),
        .I4(rx_program_en_i_5_n_0),
        .I5(itcm_full),
        .O(rx_program_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_program_en_i_2
       (.I0(program_data[17]),
        .I1(program_data[31]),
        .I2(program_data[15]),
        .I3(program_data[16]),
        .I4(rx_program_en_i_6_n_0),
        .O(rx_program_en_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    rx_program_en_i_3
       (.I0(program_data[6]),
        .I1(program_data[19]),
        .I2(program_data[13]),
        .I3(program_data[24]),
        .I4(rx_program_en_i_7_n_0),
        .O(rx_program_en_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_program_en_i_4
       (.I0(program_data[8]),
        .I1(program_data[26]),
        .I2(program_data[27]),
        .I3(program_data[10]),
        .I4(rx_program_en_i_8_n_0),
        .O(rx_program_en_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    rx_program_en_i_5
       (.I0(program_data[22]),
        .I1(program_data[1]),
        .I2(program_data[5]),
        .I3(program_data[18]),
        .I4(rx_program_en_i_9_n_0),
        .O(rx_program_en_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_program_en_i_6
       (.I0(program_data[29]),
        .I1(program_data[20]),
        .I2(program_data[4]),
        .I3(program_data[14]),
        .O(rx_program_en_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    rx_program_en_i_7
       (.I0(program_data[0]),
        .I1(program_data[25]),
        .I2(program_data[30]),
        .I3(program_data[23]),
        .O(rx_program_en_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    rx_program_en_i_8
       (.I0(program_data[21]),
        .I1(program_data[2]),
        .I2(program_data[3]),
        .I3(program_data[28]),
        .O(rx_program_en_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_program_en_i_9
       (.I0(program_data[7]),
        .I1(program_data[11]),
        .I2(program_data[12]),
        .I3(program_data[9]),
        .O(rx_program_en_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    rx_program_en_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(rx_program_en_i_1_n_0),
        .Q(rx_program_en),
        .S(reset_IBUF));
  UART_rx_fsm u_UART_rx_fsm
       (.D(D),
        .E(program_receiving_OBUF),
        .Q(rx_program_data),
        .clk_out1(clk_out1),
        .\cs_reg[0]_0 (u_uart_n_48),
        .reset_IBUF(reset_IBUF));
  fwrisc u_core
       (.E(\u_UART_Registers/u_if_fifo/rx_dready ),
        .\FSM_sequential_state_reg[2]_0 (u_core_n_46),
        .Q({iaddr[31:28],iaddr[15:2]}),
        .WEA(u_core_n_44),
        .clk_out1(clk_out1),
        .\daddr_reg[13]_0 (u_core_n_45),
        .\daddr_reg[2]_0 (u_core_n_39),
        .\daddr_reg[31]_0 ({daddr[31:28],daddr[15:2]}),
        .\daddr_reg[3]_0 (u_core_n_40),
        .\daddr_reg[4]_0 (u_core_n_42),
        .drdata_r0(drdata_r0),
        .dready_fifo(\u_UART_Registers/dready_fifo ),
        .dready_o(dready_o),
        .dready_r(dready_r),
        .dready_r_0(\u_UART_Registers/u_if_fifo/dready_r ),
        .dvalid(dvalid),
        .dvalid_reg_0(u_core_n_43),
        .\dwdata_reg[0]_0 (u_core_n_47),
        .\dwdata_reg[0]_1 (u_core_n_80),
        .\dwdata_reg[31]_0 ({u_core_n_48,u_core_n_49,u_core_n_50,u_core_n_51,u_core_n_52,u_core_n_53,u_core_n_54,u_core_n_55,u_core_n_56,u_core_n_57,u_core_n_58,u_core_n_59,u_core_n_60,u_core_n_61,u_core_n_62,u_core_n_63,p_3_in,u_core_n_72,u_core_n_73,u_core_n_74,u_core_n_75,u_core_n_76,u_core_n_77,u_core_n_78,u_core_n_79}),
        .idata0({rom_reg_2_3_n_63,rom_reg_2_3_n_64,rom_reg_2_3_n_65,rom_reg_2_3_n_66,rom_reg_2_3_n_67,rom_reg_2_2_n_75,rom_reg_2_2_n_60,rom_reg_2_2_n_61,rom_reg_2_2_n_62,rom_reg_2_2_n_63,rom_reg_2_2_n_64,rom_reg_2_2_n_65,rom_reg_2_2_n_66,rom_reg_2_2_n_67,rom_reg_2_1_n_75,rom_reg_2_1_n_60,rom_reg_2_1_n_61,rom_reg_2_1_n_62,rom_reg_2_1_n_63,rom_reg_2_1_n_64,rom_reg_2_1_n_65,rom_reg_2_1_n_66,rom_reg_2_1_n_67,rom_reg_2_0_n_75,rom_reg_2_0_n_60,rom_reg_2_0_n_61,rom_reg_2_0_n_62,rom_reg_2_0_n_63,rom_reg_2_0_n_64,rom_reg_2_0_n_65,rom_reg_2_0_n_66,rom_reg_2_0_n_67}),
        .\instr_reg[31]_0 ({addr_i[31:28],addr_i[15:12]}),
        .iready_r(iready_r),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .regs_reg_1_i_151({UART_Baudrate_Div[31:7],UART_Baudrate_Div[5:0]}),
        .regs_reg_1_i_325(u_uart_n_39),
        .regs_reg_1_i_336({addr_d[31:28],addr_d[15:12]}),
        .regs_reg_1_i_339({u_uart_n_49,u_uart_n_50,u_uart_n_51,u_uart_n_52,u_uart_n_53,u_uart_n_54,u_uart_n_55,u_uart_n_56}),
        .regs_reg_1_i_339_0({UART_Tx_Buffer[31],UART_Tx_Buffer[7],UART_Tx_Buffer[5:0]}),
        .reset_IBUF(reset_IBUF),
        .rx_dready_r(\u_UART_Registers/u_if_fifo/rx_dready_r ),
        .rx_en(rx_en),
        .rx_fifo_empty(\u_UART_Registers/rx_fifo_empty ),
        .rx_program_en(rx_program_en),
        .tx_en(tx_en),
        .tx_fifo_full(\u_UART_Registers/tx_fifo_full ));
  uart u_uart
       (.D(D),
        .E(\u_UART_Registers/u_if_fifo/rx_dready ),
        .Q({UART_Baudrate_Div[31:7],UART_Baudrate_Div[5:0]}),
        .\UART_Baudrate_Div_reg[0] (u_core_n_43),
        .\UART_Baudrate_Div_reg[31] ({u_core_n_48,u_core_n_49,u_core_n_50,u_core_n_51,u_core_n_52,u_core_n_53,u_core_n_54,u_core_n_55,u_core_n_56,u_core_n_57,u_core_n_58,u_core_n_59,u_core_n_60,u_core_n_61,u_core_n_62,u_core_n_63,p_3_in,u_core_n_72,u_core_n_73,u_core_n_74,u_core_n_75,u_core_n_76,u_core_n_77,u_core_n_78,u_core_n_79}),
        .\UART_Baudrate_Div_reg[6] (u_uart_n_39),
        .\UART_Rx_Buffer_reg[31] ({u_uart_n_49,u_uart_n_50,u_uart_n_51,u_uart_n_52,u_uart_n_53,u_uart_n_54,u_uart_n_55,u_uart_n_56}),
        .\UART_Rx_Ctrl_reg[0] (u_core_n_80),
        .\UART_Tx_Buffer_reg[31] ({UART_Tx_Buffer[31],UART_Tx_Buffer[7],UART_Tx_Buffer[5:0]}),
        .\UART_Tx_Ctrl_reg[0] (u_core_n_47),
        .clk_out1(clk_out1),
        .dready_fifo(\u_UART_Registers/dready_fifo ),
        .dready_o(dready_o),
        .dready_o_reg(u_core_n_39),
        .dready_r(\u_UART_Registers/u_if_fifo/dready_r ),
        .empty_reg(u_core_n_42),
        .empty_reg_0(u_core_n_40),
        .p_0_in(p_0_in),
        .program_ov_OBUF(program_ov_OBUF),
        .regs_reg_1_i_364(daddr[4:2]),
        .reset_IBUF(reset_IBUF),
        .rx_dready_r(\u_UART_Registers/u_if_fifo/rx_dready_r ),
        .rx_en(rx_en),
        .rx_fifo_empty(\u_UART_Registers/rx_fifo_empty ),
        .rx_program_en(rx_program_en),
        .rx_reg2_reg(u_uart_n_48),
        .tx(tx),
        .tx_en(tx_en),
        .tx_fifo_full(\u_UART_Registers/tx_fifo_full ));
endmodule

module fwrisc_regfile
   (\instr_reg[3] ,
    alu_op_a,
    \FSM_sequential_state_reg[3] ,
    \instr_reg[13] ,
    \instr_reg[1] ,
    \instr_reg[5] ,
    \instr_reg[4] ,
    D,
    regs_reg_2_0,
    \daddr_reg[6] ,
    S,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[0]_2 ,
    \FSM_sequential_state_reg[0]_3 ,
    \FSM_sequential_state_reg[0]_4 ,
    \FSM_sequential_state_reg[0]_5 ,
    \FSM_sequential_state_reg[0]_6 ,
    alu_out,
    E,
    \FSM_sequential_state_reg[1]_0 ,
    \instr_reg[13]_0 ,
    \FSM_sequential_state_reg[0]_7 ,
    dstrb_w,
    \instr_reg[0] ,
    \instr_reg[0]_0 ,
    \instr_reg[3]_0 ,
    regs_reg_2_1,
    \instr_reg[5]_0 ,
    DI,
    regs_reg_2_2,
    \instr_reg[31] ,
    regs_reg_1_0,
    regs_reg_1_1,
    \instr_reg[31]_0 ,
    \instr_reg[31]_1 ,
    \instr_reg[31]_2 ,
    \instr_reg[31]_3 ,
    regs_reg_2_3,
    \instr_reg[31]_4 ,
    regs_reg_2_4,
    \daddr_reg[18] ,
    \daddr_reg[7] ,
    \daddr_reg[12] ,
    regs_reg_2_5,
    \instr_reg[31]_5 ,
    regs_reg_2_6,
    \instr_reg[31]_6 ,
    Q,
    \FSM_sequential_state_reg[3]_0 ,
    \daddr_reg[30] ,
    \daddr[4]_i_2_0 ,
    regs_reg_1_2,
    \pc[31]_i_4_0 ,
    \pc[31]_i_4_1 ,
    \shift_amt_reg[4] ,
    \shift_amt_reg[4]_0 ,
    regs_reg_1_i_151_0,
    regs_reg_1_i_333_0,
    regs_reg_1_i_339_0,
    rx_en,
    pc_plus4,
    data0,
    \pc_reg[2] ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    \FSM_sequential_state_reg[0]_8 ,
    \daddr[17]_i_3_0 ,
    out1_carry__0_i_9_0,
    \daddr[7]_i_2_0 ,
    \daddr[4]_i_2_1 ,
    \dstrb[0]_i_7_0 ,
    out1_carry__0_i_18_0,
    \FSM_sequential_state_reg[0]_9 ,
    \FSM_sequential_state_reg[0]_10 ,
    regs_reg_1_i_147_0,
    CO,
    regs_reg_1_i_147_1,
    dready_o,
    dready_r,
    p_0_in_0,
    drdata_r0,
    regs_reg_1_i_339_1,
    tx_en,
    regs_reg_1_i_325_0,
    regs_reg_1_i_336_0,
    clk_out1);
  output \instr_reg[3] ;
  output [30:0]alu_op_a;
  output \FSM_sequential_state_reg[3] ;
  output \instr_reg[13] ;
  output \instr_reg[1] ;
  output \instr_reg[5] ;
  output \instr_reg[4] ;
  output [4:0]D;
  output regs_reg_2_0;
  output \daddr_reg[6] ;
  output [3:0]S;
  output [29:0]\FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  output [3:0]\FSM_sequential_state_reg[0]_0 ;
  output [3:0]\FSM_sequential_state_reg[0]_1 ;
  output [3:0]\FSM_sequential_state_reg[0]_2 ;
  output [3:0]\FSM_sequential_state_reg[0]_3 ;
  output [3:0]\FSM_sequential_state_reg[0]_4 ;
  output [3:0]\FSM_sequential_state_reg[0]_5 ;
  output [3:0]\FSM_sequential_state_reg[0]_6 ;
  output [29:0]alu_out;
  output [0:0]E;
  output [3:0]\FSM_sequential_state_reg[1]_0 ;
  output \instr_reg[13]_0 ;
  output [0:0]\FSM_sequential_state_reg[0]_7 ;
  output dstrb_w;
  output \instr_reg[0] ;
  output \instr_reg[0]_0 ;
  output \instr_reg[3]_0 ;
  output [30:0]regs_reg_2_1;
  output \instr_reg[5]_0 ;
  output [3:0]DI;
  output [3:0]regs_reg_2_2;
  output [3:0]\instr_reg[31] ;
  output [0:0]regs_reg_1_0;
  output [3:0]regs_reg_1_1;
  output [2:0]\instr_reg[31]_0 ;
  output [3:0]\instr_reg[31]_1 ;
  output [3:0]\instr_reg[31]_2 ;
  output [3:0]\instr_reg[31]_3 ;
  output [3:0]regs_reg_2_3;
  output [3:0]\instr_reg[31]_4 ;
  output [3:0]regs_reg_2_4;
  output \daddr_reg[18] ;
  output \daddr_reg[7] ;
  output \daddr_reg[12] ;
  output [3:0]regs_reg_2_5;
  output [3:0]\instr_reg[31]_5 ;
  output [3:0]regs_reg_2_6;
  output [3:0]\instr_reg[31]_6 ;
  input [3:0]Q;
  input [7:0]\FSM_sequential_state_reg[3]_0 ;
  input [31:0]\daddr_reg[30] ;
  input \daddr[4]_i_2_0 ;
  input [29:0]regs_reg_1_2;
  input \pc[31]_i_4_0 ;
  input \pc[31]_i_4_1 ;
  input \shift_amt_reg[4] ;
  input [4:0]\shift_amt_reg[4]_0 ;
  input [30:0]regs_reg_1_i_151_0;
  input [25:0]regs_reg_1_i_333_0;
  input [7:0]regs_reg_1_i_339_0;
  input rx_en;
  input [28:0]pc_plus4;
  input [31:0]data0;
  input \pc_reg[2] ;
  input \FSM_sequential_state_reg[1]_1 ;
  input \FSM_sequential_state_reg[1]_2 ;
  input \FSM_sequential_state_reg[0]_8 ;
  input \daddr[17]_i_3_0 ;
  input [7:0]out1_carry__0_i_9_0;
  input \daddr[7]_i_2_0 ;
  input \daddr[4]_i_2_1 ;
  input \dstrb[0]_i_7_0 ;
  input out1_carry__0_i_18_0;
  input \FSM_sequential_state_reg[0]_9 ;
  input \FSM_sequential_state_reg[0]_10 ;
  input [0:0]regs_reg_1_i_147_0;
  input [0:0]CO;
  input [0:0]regs_reg_1_i_147_1;
  input dready_o;
  input dready_r;
  input [31:0]p_0_in_0;
  input [31:0]drdata_r0;
  input [7:0]regs_reg_1_i_339_1;
  input tx_en;
  input regs_reg_1_i_325_0;
  input [7:0]regs_reg_1_i_336_0;
  input clk_out1;

  wire [0:0]CO;
  wire [4:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire [3:0]\FSM_sequential_state_reg[0]_0 ;
  wire [3:0]\FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[0]_10 ;
  wire [3:0]\FSM_sequential_state_reg[0]_2 ;
  wire [3:0]\FSM_sequential_state_reg[0]_3 ;
  wire [3:0]\FSM_sequential_state_reg[0]_4 ;
  wire [3:0]\FSM_sequential_state_reg[0]_5 ;
  wire [3:0]\FSM_sequential_state_reg[0]_6 ;
  wire [0:0]\FSM_sequential_state_reg[0]_7 ;
  wire \FSM_sequential_state_reg[0]_8 ;
  wire \FSM_sequential_state_reg[0]_9 ;
  wire [29:0]\FSM_sequential_state_reg[1] ;
  wire [3:0]\FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire \FSM_sequential_state_reg[3] ;
  wire [7:0]\FSM_sequential_state_reg[3]_0 ;
  wire [3:0]Q;
  wire [3:0]S;
  wire [30:0]alu_op_a;
  wire [29:0]alu_out;
  wire clk_out1;
  wire \daddr[11]_i_2_n_0 ;
  wire \daddr[11]_i_3_n_0 ;
  wire \daddr[11]_i_4_n_0 ;
  wire \daddr[11]_i_5_n_0 ;
  wire \daddr[12]_i_2_n_0 ;
  wire \daddr[12]_i_3_n_0 ;
  wire \daddr[12]_i_4_n_0 ;
  wire \daddr[12]_i_5_n_0 ;
  wire \daddr[17]_i_2_n_0 ;
  wire \daddr[17]_i_3_0 ;
  wire \daddr[17]_i_3_n_0 ;
  wire \daddr[17]_i_5_n_0 ;
  wire \daddr[17]_i_6_n_0 ;
  wire \daddr[17]_i_7_n_0 ;
  wire \daddr[21]_i_2_n_0 ;
  wire \daddr[21]_i_3_n_0 ;
  wire \daddr[21]_i_4_n_0 ;
  wire \daddr[23]_i_2_n_0 ;
  wire \daddr[24]_i_2_n_0 ;
  wire \daddr[25]_i_2_n_0 ;
  wire \daddr[26]_i_2_n_0 ;
  wire \daddr[26]_i_3_n_0 ;
  wire \daddr[26]_i_4_n_0 ;
  wire \daddr[2]_i_2_n_0 ;
  wire \daddr[2]_i_3_n_0 ;
  wire \daddr[2]_i_4_n_0 ;
  wire \daddr[2]_i_5_n_0 ;
  wire \daddr[30]_i_4_n_0 ;
  wire \daddr[30]_i_5_n_0 ;
  wire \daddr[30]_i_6_n_0 ;
  wire \daddr[30]_i_7_n_0 ;
  wire \daddr[30]_i_8_n_0 ;
  wire \daddr[30]_i_9_n_0 ;
  wire \daddr[3]_i_2_n_0 ;
  wire \daddr[3]_i_3_n_0 ;
  wire \daddr[3]_i_4_n_0 ;
  wire \daddr[3]_i_5_n_0 ;
  wire \daddr[3]_i_6_n_0 ;
  wire \daddr[4]_i_2_0 ;
  wire \daddr[4]_i_2_1 ;
  wire \daddr[4]_i_2_n_0 ;
  wire \daddr[5]_i_2_n_0 ;
  wire \daddr[7]_i_2_0 ;
  wire \daddr[7]_i_2_n_0 ;
  wire \daddr[7]_i_3_n_0 ;
  wire \daddr[7]_i_4_n_0 ;
  wire \daddr_reg[12] ;
  wire \daddr_reg[18] ;
  wire [31:0]\daddr_reg[30] ;
  wire \daddr_reg[6] ;
  wire \daddr_reg[7] ;
  wire [31:0]data0;
  wire [31:0]drdata_r0;
  wire dready_o;
  wire dready_r;
  wire \dstrb[0]_i_10_n_0 ;
  wire \dstrb[0]_i_11_n_0 ;
  wire \dstrb[0]_i_12_n_0 ;
  wire \dstrb[0]_i_2_n_0 ;
  wire \dstrb[0]_i_3_n_0 ;
  wire \dstrb[0]_i_4_n_0 ;
  wire \dstrb[0]_i_5_n_0 ;
  wire \dstrb[0]_i_6_n_0 ;
  wire \dstrb[0]_i_7_0 ;
  wire \dstrb[0]_i_7_n_0 ;
  wire \dstrb[0]_i_8_n_0 ;
  wire \dstrb[0]_i_9_n_0 ;
  wire dstrb_w;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire \instr_reg[0] ;
  wire \instr_reg[0]_0 ;
  wire \instr_reg[13] ;
  wire \instr_reg[13]_0 ;
  wire \instr_reg[1] ;
  wire [3:0]\instr_reg[31] ;
  wire [2:0]\instr_reg[31]_0 ;
  wire [3:0]\instr_reg[31]_1 ;
  wire [3:0]\instr_reg[31]_2 ;
  wire [3:0]\instr_reg[31]_3 ;
  wire [3:0]\instr_reg[31]_4 ;
  wire [3:0]\instr_reg[31]_5 ;
  wire [3:0]\instr_reg[31]_6 ;
  wire \instr_reg[3] ;
  wire \instr_reg[3]_0 ;
  wire \instr_reg[4] ;
  wire \instr_reg[5] ;
  wire \instr_reg[5]_0 ;
  wire out0_carry__0_i_10_n_0;
  wire out0_carry__0_i_11_n_0;
  wire out0_carry__0_i_12_n_0;
  wire out0_carry__0_i_13_n_0;
  wire out0_carry__0_i_14_n_0;
  wire out0_carry__0_i_15_n_0;
  wire out0_carry__0_i_16_n_0;
  wire out0_carry__0_i_17_n_0;
  wire out0_carry__0_i_18_n_0;
  wire out0_carry__0_i_19_n_0;
  wire out0_carry__0_i_20_n_0;
  wire out0_carry__0_i_9_n_0;
  wire out0_carry__1_i_10_n_0;
  wire out0_carry__1_i_11_n_0;
  wire out0_carry__1_i_12_n_0;
  wire out0_carry__1_i_13_n_0;
  wire out0_carry__1_i_14_n_0;
  wire out0_carry__1_i_15_n_0;
  wire out0_carry__1_i_16_n_0;
  wire out0_carry__1_i_17_n_0;
  wire out0_carry__1_i_18_n_0;
  wire out0_carry__1_i_19_n_0;
  wire out0_carry__1_i_20_n_0;
  wire out0_carry__1_i_9_n_0;
  wire out0_carry__2_i_10_n_0;
  wire out0_carry__2_i_11_n_0;
  wire out0_carry__2_i_12_n_0;
  wire out0_carry__2_i_13_n_0;
  wire out0_carry__2_i_14_n_0;
  wire out0_carry__2_i_15_n_0;
  wire out0_carry__2_i_16_n_0;
  wire out0_carry__2_i_17_n_0;
  wire out0_carry__2_i_18_n_0;
  wire out0_carry__2_i_19_n_0;
  wire out0_carry__2_i_20_n_0;
  wire out0_carry__2_i_9_n_0;
  wire out0_carry_i_10_n_0;
  wire out0_carry_i_11_n_0;
  wire out0_carry_i_12_n_0;
  wire out0_carry_i_13_n_0;
  wire out0_carry_i_14_n_0;
  wire out0_carry_i_15_n_0;
  wire out0_carry_i_16_n_0;
  wire out0_carry_i_17_n_0;
  wire out0_carry_i_18_n_0;
  wire out0_carry_i_19_n_0;
  wire out1_carry__0_i_11_n_0;
  wire out1_carry__0_i_12_n_0;
  wire out1_carry__0_i_13_n_0;
  wire out1_carry__0_i_14_n_0;
  wire out1_carry__0_i_15_n_0;
  wire out1_carry__0_i_16_n_0;
  wire out1_carry__0_i_17_n_0;
  wire out1_carry__0_i_18_0;
  wire out1_carry__0_i_18_n_0;
  wire out1_carry__0_i_19_n_0;
  wire out1_carry__0_i_20_n_0;
  wire out1_carry__0_i_23_n_0;
  wire [7:0]out1_carry__0_i_9_0;
  wire out1_carry__0_i_9_n_0;
  wire out1_carry__1_i_10_n_0;
  wire out1_carry__1_i_11_n_0;
  wire out1_carry__1_i_12_n_0;
  wire out1_carry__1_i_13_n_0;
  wire out1_carry__1_i_14_n_0;
  wire out1_carry__1_i_15_n_0;
  wire out1_carry__1_i_16_n_0;
  wire out1_carry__1_i_17_n_0;
  wire out1_carry__1_i_18_n_0;
  wire out1_carry__1_i_19_n_0;
  wire out1_carry__1_i_9_n_0;
  wire out1_carry__2_i_10_n_0;
  wire out1_carry__2_i_11_n_0;
  wire out1_carry__2_i_12_n_0;
  wire out1_carry__2_i_13_n_0;
  wire out1_carry__2_i_14_n_0;
  wire out1_carry__2_i_15_n_0;
  wire out1_carry__2_i_16_n_0;
  wire out1_carry__2_i_18_n_0;
  wire out1_carry__2_i_9_n_0;
  wire out1_carry__3_i_10_n_0;
  wire out1_carry__3_i_11_n_0;
  wire out1_carry__3_i_12_n_0;
  wire out1_carry__3_i_13_n_0;
  wire out1_carry__3_i_14_n_0;
  wire out1_carry__3_i_15_n_0;
  wire out1_carry__3_i_16_n_0;
  wire out1_carry__3_i_17_n_0;
  wire out1_carry__3_i_9_n_0;
  wire out1_carry__4_i_10_n_0;
  wire out1_carry__4_i_11_n_0;
  wire out1_carry__4_i_12_n_0;
  wire out1_carry__4_i_13_n_0;
  wire out1_carry__4_i_14_n_0;
  wire out1_carry__4_i_15_n_0;
  wire out1_carry__4_i_16_n_0;
  wire out1_carry__4_i_9_n_0;
  wire out1_carry__5_i_10_n_0;
  wire out1_carry__5_i_11_n_0;
  wire out1_carry__5_i_12_n_0;
  wire out1_carry__5_i_13_n_0;
  wire out1_carry__5_i_14_n_0;
  wire out1_carry__5_i_15_n_0;
  wire out1_carry__5_i_9_n_0;
  wire out1_carry__6_i_10_n_0;
  wire out1_carry__6_i_11_n_0;
  wire out1_carry__6_i_12_n_0;
  wire out1_carry__6_i_13_n_0;
  wire out1_carry__6_i_14_n_0;
  wire out1_carry__6_i_15_n_0;
  wire out1_carry__6_i_16_n_0;
  wire out1_carry__6_i_17_n_0;
  wire out1_carry__6_i_8_n_0;
  wire out1_carry__6_i_9_n_0;
  wire out1_carry_i_10_n_0;
  wire out1_carry_i_11_n_0;
  wire out1_carry_i_12_n_0;
  wire out1_carry_i_13_n_0;
  wire out1_carry_i_15_n_0;
  wire out1_carry_i_16_n_0;
  wire out1_carry_i_17_n_0;
  wire out1_carry_i_18_n_0;
  wire out1_carry_i_20_n_0;
  wire out1_carry_i_21_n_0;
  wire out1_carry_i_22_n_0;
  wire out1_carry_i_23_n_0;
  wire out1_carry_i_24_n_0;
  wire out1_carry_i_25_n_0;
  wire out1_carry_i_26_n_0;
  wire out1_carry_i_27_n_0;
  wire out1_carry_i_28_n_0;
  wire out1_carry_i_29_n_0;
  wire out1_carry_i_30_n_0;
  wire out1_carry_i_31_n_0;
  wire out1_carry_i_34_n_0;
  wire out1_carry_i_36_n_0;
  wire out1_carry_i_37_n_0;
  wire out1_carry_i_38_n_0;
  wire out1_carry_i_39_n_0;
  wire out1_carry_i_40_n_0;
  wire [31:0]p_0_in_0;
  wire \pc[10]_i_2_n_0 ;
  wire \pc[10]_i_3_n_0 ;
  wire \pc[10]_i_4_n_0 ;
  wire \pc[11]_i_2_n_0 ;
  wire \pc[12]_i_2_n_0 ;
  wire \pc[16]_i_2_n_0 ;
  wire \pc[16]_i_3_n_0 ;
  wire \pc[16]_i_4_n_0 ;
  wire \pc[17]_i_2_n_0 ;
  wire \pc[18]_i_2_n_0 ;
  wire \pc[18]_i_3_n_0 ;
  wire \pc[18]_i_4_n_0 ;
  wire \pc[20]_i_2_n_0 ;
  wire \pc[20]_i_3_n_0 ;
  wire \pc[20]_i_4_n_0 ;
  wire \pc[21]_i_2_n_0 ;
  wire \pc[22]_i_2_n_0 ;
  wire \pc[22]_i_3_n_0 ;
  wire \pc[22]_i_4_n_0 ;
  wire \pc[23]_i_2_n_0 ;
  wire \pc[24]_i_2_n_0 ;
  wire \pc[25]_i_2_n_0 ;
  wire \pc[26]_i_2_n_0 ;
  wire \pc[27]_i_2_n_0 ;
  wire \pc[27]_i_3_n_0 ;
  wire \pc[27]_i_4_n_0 ;
  wire \pc[28]_i_2_n_0 ;
  wire \pc[28]_i_3_n_0 ;
  wire \pc[28]_i_4_n_0 ;
  wire \pc[2]_i_2_n_0 ;
  wire \pc[31]_i_10_n_0 ;
  wire \pc[31]_i_3_n_0 ;
  wire \pc[31]_i_4_0 ;
  wire \pc[31]_i_4_1 ;
  wire \pc[31]_i_4_n_0 ;
  wire \pc[31]_i_5_n_0 ;
  wire \pc[31]_i_6_n_0 ;
  wire \pc[31]_i_7_n_0 ;
  wire \pc[31]_i_8_n_0 ;
  wire \pc[31]_i_9_n_0 ;
  wire \pc[4]_i_2_n_0 ;
  wire [28:0]pc_plus4;
  wire \pc_reg[2] ;
  wire [5:0]ra_raddr;
  wire [5:0]ra_raddr_r;
  wire [31:0]ra_rdata0;
  wire ram_0_reg_i_5_n_0;
  wire ram_0_reg_i_6_n_0;
  wire ram_0_reg_i_7_n_0;
  wire [5:0]rb_raddr;
  wire [5:0]rb_raddr_r;
  wire [31:0]rb_rdata0;
  wire [5:0]rd_waddr;
  wire [31:0]rd_wdata;
  wire rd_wen;
  wire [0:0]regs_reg_1_0;
  wire [3:0]regs_reg_1_1;
  wire [29:0]regs_reg_1_2;
  wire regs_reg_1_i_100_n_0;
  wire regs_reg_1_i_101_n_0;
  wire regs_reg_1_i_102_n_0;
  wire regs_reg_1_i_103_n_0;
  wire regs_reg_1_i_104_n_0;
  wire regs_reg_1_i_105_n_0;
  wire regs_reg_1_i_106_n_0;
  wire regs_reg_1_i_107_n_0;
  wire regs_reg_1_i_108_n_0;
  wire regs_reg_1_i_109_n_0;
  wire regs_reg_1_i_110_n_0;
  wire regs_reg_1_i_111_n_0;
  wire regs_reg_1_i_112_n_0;
  wire regs_reg_1_i_113_n_0;
  wire regs_reg_1_i_114_n_0;
  wire regs_reg_1_i_115_n_0;
  wire regs_reg_1_i_116_n_0;
  wire regs_reg_1_i_117_n_0;
  wire regs_reg_1_i_118_n_0;
  wire regs_reg_1_i_119_n_0;
  wire regs_reg_1_i_120_n_0;
  wire regs_reg_1_i_121_n_0;
  wire regs_reg_1_i_122_n_0;
  wire regs_reg_1_i_123_n_0;
  wire regs_reg_1_i_124_n_0;
  wire regs_reg_1_i_125_n_0;
  wire regs_reg_1_i_126_n_0;
  wire regs_reg_1_i_127_n_0;
  wire regs_reg_1_i_128_n_0;
  wire regs_reg_1_i_129_n_0;
  wire regs_reg_1_i_130_n_0;
  wire regs_reg_1_i_131_n_0;
  wire regs_reg_1_i_132_n_0;
  wire regs_reg_1_i_133_n_0;
  wire regs_reg_1_i_134_n_0;
  wire regs_reg_1_i_135_n_0;
  wire regs_reg_1_i_136_n_0;
  wire regs_reg_1_i_137_n_0;
  wire regs_reg_1_i_138_n_0;
  wire regs_reg_1_i_139_n_0;
  wire regs_reg_1_i_140_n_0;
  wire regs_reg_1_i_141_n_0;
  wire regs_reg_1_i_142_n_0;
  wire regs_reg_1_i_143_n_0;
  wire regs_reg_1_i_144_n_0;
  wire regs_reg_1_i_145_n_0;
  wire regs_reg_1_i_146_n_0;
  wire [0:0]regs_reg_1_i_147_0;
  wire [0:0]regs_reg_1_i_147_1;
  wire regs_reg_1_i_147_n_0;
  wire regs_reg_1_i_148_n_0;
  wire regs_reg_1_i_149_n_0;
  wire regs_reg_1_i_150_n_0;
  wire [30:0]regs_reg_1_i_151_0;
  wire regs_reg_1_i_151_n_0;
  wire regs_reg_1_i_152_n_0;
  wire regs_reg_1_i_153_n_0;
  wire regs_reg_1_i_154_n_0;
  wire regs_reg_1_i_155_n_0;
  wire regs_reg_1_i_156_n_0;
  wire regs_reg_1_i_157_n_0;
  wire regs_reg_1_i_158_n_0;
  wire regs_reg_1_i_159_n_0;
  wire regs_reg_1_i_160_n_0;
  wire regs_reg_1_i_161_n_0;
  wire regs_reg_1_i_162_n_0;
  wire regs_reg_1_i_163_n_0;
  wire regs_reg_1_i_164_n_0;
  wire regs_reg_1_i_165_n_0;
  wire regs_reg_1_i_166_n_0;
  wire regs_reg_1_i_167_n_0;
  wire regs_reg_1_i_168_n_0;
  wire regs_reg_1_i_169_n_0;
  wire regs_reg_1_i_170_n_0;
  wire regs_reg_1_i_171_n_0;
  wire regs_reg_1_i_172_n_0;
  wire regs_reg_1_i_173_n_0;
  wire regs_reg_1_i_174_n_0;
  wire regs_reg_1_i_175_n_0;
  wire regs_reg_1_i_176_n_0;
  wire regs_reg_1_i_177_n_0;
  wire regs_reg_1_i_178_n_0;
  wire regs_reg_1_i_179_n_0;
  wire regs_reg_1_i_180_n_0;
  wire regs_reg_1_i_181_n_0;
  wire regs_reg_1_i_182_n_0;
  wire regs_reg_1_i_183_n_0;
  wire regs_reg_1_i_184_n_0;
  wire regs_reg_1_i_185_n_0;
  wire regs_reg_1_i_186_n_0;
  wire regs_reg_1_i_187_n_0;
  wire regs_reg_1_i_188_n_0;
  wire regs_reg_1_i_189_n_0;
  wire regs_reg_1_i_190_n_0;
  wire regs_reg_1_i_191_n_0;
  wire regs_reg_1_i_192_n_0;
  wire regs_reg_1_i_193_n_0;
  wire regs_reg_1_i_194_n_0;
  wire regs_reg_1_i_195_n_0;
  wire regs_reg_1_i_196_n_0;
  wire regs_reg_1_i_197_n_0;
  wire regs_reg_1_i_198_n_0;
  wire regs_reg_1_i_199_n_0;
  wire regs_reg_1_i_200_n_0;
  wire regs_reg_1_i_201_n_0;
  wire regs_reg_1_i_202_n_0;
  wire regs_reg_1_i_203_n_0;
  wire regs_reg_1_i_204_n_0;
  wire regs_reg_1_i_205_n_0;
  wire regs_reg_1_i_206_n_0;
  wire regs_reg_1_i_207_n_0;
  wire regs_reg_1_i_208_n_0;
  wire regs_reg_1_i_209_n_0;
  wire regs_reg_1_i_210_n_0;
  wire regs_reg_1_i_211_n_0;
  wire regs_reg_1_i_212_n_0;
  wire regs_reg_1_i_213_n_0;
  wire regs_reg_1_i_214_n_0;
  wire regs_reg_1_i_215_n_0;
  wire regs_reg_1_i_216_n_0;
  wire regs_reg_1_i_217_n_0;
  wire regs_reg_1_i_218_n_0;
  wire regs_reg_1_i_219_n_0;
  wire regs_reg_1_i_220_n_0;
  wire regs_reg_1_i_221_n_0;
  wire regs_reg_1_i_222_n_0;
  wire regs_reg_1_i_223_n_0;
  wire regs_reg_1_i_224_n_0;
  wire regs_reg_1_i_225_n_0;
  wire regs_reg_1_i_226_n_0;
  wire regs_reg_1_i_227_n_0;
  wire regs_reg_1_i_228_n_0;
  wire regs_reg_1_i_229_n_0;
  wire regs_reg_1_i_230_n_0;
  wire regs_reg_1_i_231_n_0;
  wire regs_reg_1_i_232_n_0;
  wire regs_reg_1_i_233_n_0;
  wire regs_reg_1_i_234_n_0;
  wire regs_reg_1_i_235_n_0;
  wire regs_reg_1_i_236_n_0;
  wire regs_reg_1_i_237_n_0;
  wire regs_reg_1_i_238_n_0;
  wire regs_reg_1_i_239_n_0;
  wire regs_reg_1_i_240_n_0;
  wire regs_reg_1_i_241_n_0;
  wire regs_reg_1_i_242_n_0;
  wire regs_reg_1_i_243_n_0;
  wire regs_reg_1_i_244_n_0;
  wire regs_reg_1_i_245_n_0;
  wire regs_reg_1_i_246_n_0;
  wire regs_reg_1_i_247_n_0;
  wire regs_reg_1_i_248_n_0;
  wire regs_reg_1_i_249_n_0;
  wire regs_reg_1_i_250_n_0;
  wire regs_reg_1_i_251_n_0;
  wire regs_reg_1_i_252_n_0;
  wire regs_reg_1_i_253_n_0;
  wire regs_reg_1_i_254_n_0;
  wire regs_reg_1_i_255_n_0;
  wire regs_reg_1_i_256_n_0;
  wire regs_reg_1_i_257_n_0;
  wire regs_reg_1_i_258_n_0;
  wire regs_reg_1_i_259_n_0;
  wire regs_reg_1_i_260_n_0;
  wire regs_reg_1_i_261_n_0;
  wire regs_reg_1_i_262_n_0;
  wire regs_reg_1_i_263_n_0;
  wire regs_reg_1_i_264_n_0;
  wire regs_reg_1_i_265_n_0;
  wire regs_reg_1_i_266_n_0;
  wire regs_reg_1_i_267_n_0;
  wire regs_reg_1_i_268_n_0;
  wire regs_reg_1_i_269_n_0;
  wire regs_reg_1_i_270_n_0;
  wire regs_reg_1_i_271_n_0;
  wire regs_reg_1_i_272_n_0;
  wire regs_reg_1_i_273_n_0;
  wire regs_reg_1_i_274_n_0;
  wire regs_reg_1_i_275_n_0;
  wire regs_reg_1_i_276_n_0;
  wire regs_reg_1_i_277_n_0;
  wire regs_reg_1_i_278_n_0;
  wire regs_reg_1_i_279_n_0;
  wire regs_reg_1_i_280_n_0;
  wire regs_reg_1_i_281_n_0;
  wire regs_reg_1_i_282_n_0;
  wire regs_reg_1_i_283_n_0;
  wire regs_reg_1_i_284_n_0;
  wire regs_reg_1_i_285_n_0;
  wire regs_reg_1_i_286_n_0;
  wire regs_reg_1_i_287_n_0;
  wire regs_reg_1_i_288_n_0;
  wire regs_reg_1_i_289_n_0;
  wire regs_reg_1_i_290_n_0;
  wire regs_reg_1_i_291_n_0;
  wire regs_reg_1_i_292_n_0;
  wire regs_reg_1_i_293_n_0;
  wire regs_reg_1_i_294_n_0;
  wire regs_reg_1_i_295_n_0;
  wire regs_reg_1_i_296_n_0;
  wire regs_reg_1_i_297_n_0;
  wire regs_reg_1_i_298_n_0;
  wire regs_reg_1_i_299_n_0;
  wire regs_reg_1_i_300_n_0;
  wire regs_reg_1_i_301_n_0;
  wire regs_reg_1_i_302_n_0;
  wire regs_reg_1_i_303_n_0;
  wire regs_reg_1_i_304_n_0;
  wire regs_reg_1_i_305_n_0;
  wire regs_reg_1_i_306_n_0;
  wire regs_reg_1_i_307_n_0;
  wire regs_reg_1_i_308_n_0;
  wire regs_reg_1_i_309_n_0;
  wire regs_reg_1_i_310_n_0;
  wire regs_reg_1_i_311_n_0;
  wire regs_reg_1_i_312_n_0;
  wire regs_reg_1_i_313_n_0;
  wire regs_reg_1_i_314_n_0;
  wire regs_reg_1_i_315_n_0;
  wire regs_reg_1_i_316_n_0;
  wire regs_reg_1_i_317_n_0;
  wire regs_reg_1_i_318_n_0;
  wire regs_reg_1_i_319_n_0;
  wire regs_reg_1_i_320_n_0;
  wire regs_reg_1_i_321_n_0;
  wire regs_reg_1_i_322_n_0;
  wire regs_reg_1_i_323_n_0;
  wire regs_reg_1_i_324_n_0;
  wire regs_reg_1_i_325_0;
  wire regs_reg_1_i_325_n_0;
  wire regs_reg_1_i_326_n_0;
  wire regs_reg_1_i_327_n_0;
  wire regs_reg_1_i_328_n_0;
  wire regs_reg_1_i_329_n_0;
  wire regs_reg_1_i_330_n_0;
  wire regs_reg_1_i_331_n_0;
  wire regs_reg_1_i_332_n_0;
  wire [25:0]regs_reg_1_i_333_0;
  wire regs_reg_1_i_333_n_0;
  wire regs_reg_1_i_334_n_0;
  wire regs_reg_1_i_335_n_0;
  wire [7:0]regs_reg_1_i_336_0;
  wire regs_reg_1_i_336_n_0;
  wire regs_reg_1_i_337_n_0;
  wire regs_reg_1_i_338_n_0;
  wire [7:0]regs_reg_1_i_339_0;
  wire [7:0]regs_reg_1_i_339_1;
  wire regs_reg_1_i_339_n_0;
  wire regs_reg_1_i_340_n_0;
  wire regs_reg_1_i_341_n_0;
  wire regs_reg_1_i_342_n_0;
  wire regs_reg_1_i_343_n_0;
  wire regs_reg_1_i_344_n_0;
  wire regs_reg_1_i_345_n_0;
  wire regs_reg_1_i_346_n_0;
  wire regs_reg_1_i_347_n_0;
  wire regs_reg_1_i_348_n_0;
  wire regs_reg_1_i_349_n_0;
  wire regs_reg_1_i_350_n_0;
  wire regs_reg_1_i_351_n_0;
  wire regs_reg_1_i_352_n_0;
  wire regs_reg_1_i_353_n_0;
  wire regs_reg_1_i_354_n_0;
  wire regs_reg_1_i_355_n_0;
  wire regs_reg_1_i_356_n_0;
  wire regs_reg_1_i_357_n_0;
  wire regs_reg_1_i_358_n_0;
  wire regs_reg_1_i_359_n_0;
  wire regs_reg_1_i_360_n_0;
  wire regs_reg_1_i_361_n_0;
  wire regs_reg_1_i_362_n_0;
  wire regs_reg_1_i_363_n_0;
  wire regs_reg_1_i_364_n_0;
  wire regs_reg_1_i_365_n_0;
  wire regs_reg_1_i_366_n_0;
  wire regs_reg_1_i_367_n_0;
  wire regs_reg_1_i_368_n_0;
  wire regs_reg_1_i_369_n_0;
  wire regs_reg_1_i_370_n_0;
  wire regs_reg_1_i_371_n_0;
  wire regs_reg_1_i_372_n_0;
  wire regs_reg_1_i_373_n_0;
  wire regs_reg_1_i_374_n_0;
  wire regs_reg_1_i_375_n_0;
  wire regs_reg_1_i_376_n_0;
  wire regs_reg_1_i_377_n_0;
  wire regs_reg_1_i_378_n_0;
  wire regs_reg_1_i_379_n_0;
  wire regs_reg_1_i_380_n_0;
  wire regs_reg_1_i_381_n_0;
  wire regs_reg_1_i_383_n_0;
  wire regs_reg_1_i_46_n_0;
  wire regs_reg_1_i_47_n_0;
  wire regs_reg_1_i_49_n_0;
  wire regs_reg_1_i_50_n_0;
  wire regs_reg_1_i_51_n_0;
  wire regs_reg_1_i_52_n_0;
  wire regs_reg_1_i_53_n_0;
  wire regs_reg_1_i_54_n_0;
  wire regs_reg_1_i_55_n_0;
  wire regs_reg_1_i_56_n_0;
  wire regs_reg_1_i_57_n_0;
  wire regs_reg_1_i_58_n_0;
  wire regs_reg_1_i_59_n_0;
  wire regs_reg_1_i_60_n_0;
  wire regs_reg_1_i_61_n_0;
  wire regs_reg_1_i_62_n_0;
  wire regs_reg_1_i_63_n_0;
  wire regs_reg_1_i_64_n_0;
  wire regs_reg_1_i_65_n_0;
  wire regs_reg_1_i_66_n_0;
  wire regs_reg_1_i_67_n_0;
  wire regs_reg_1_i_68_n_0;
  wire regs_reg_1_i_69_n_0;
  wire regs_reg_1_i_70_n_0;
  wire regs_reg_1_i_71_n_0;
  wire regs_reg_1_i_72_n_0;
  wire regs_reg_1_i_73_n_0;
  wire regs_reg_1_i_74_n_0;
  wire regs_reg_1_i_75_n_0;
  wire regs_reg_1_i_76_n_0;
  wire regs_reg_1_i_77_n_0;
  wire regs_reg_1_i_78_n_0;
  wire regs_reg_1_i_79_n_0;
  wire regs_reg_1_i_80_n_0;
  wire regs_reg_1_i_81_n_0;
  wire regs_reg_1_i_82_n_0;
  wire regs_reg_1_i_83_n_0;
  wire regs_reg_1_i_84_n_0;
  wire regs_reg_1_i_85_n_0;
  wire regs_reg_1_i_86_n_0;
  wire regs_reg_1_i_87_n_0;
  wire regs_reg_1_i_88_n_0;
  wire regs_reg_1_i_89_n_0;
  wire regs_reg_1_i_90_n_0;
  wire regs_reg_1_i_91_n_0;
  wire regs_reg_1_i_92_n_0;
  wire regs_reg_1_i_93_n_0;
  wire regs_reg_1_i_94_n_0;
  wire regs_reg_1_i_95_n_0;
  wire regs_reg_1_i_96_n_0;
  wire regs_reg_1_i_97_n_0;
  wire regs_reg_1_i_98_n_0;
  wire regs_reg_1_i_99_n_0;
  wire regs_reg_2_0;
  wire [30:0]regs_reg_2_1;
  wire [3:0]regs_reg_2_2;
  wire [3:0]regs_reg_2_3;
  wire [3:0]regs_reg_2_4;
  wire [3:0]regs_reg_2_5;
  wire [3:0]regs_reg_2_6;
  wire regs_reg_2_i_11_n_0;
  wire regs_reg_2_i_12_n_0;
  wire regs_reg_2_i_13_n_0;
  wire regs_reg_2_i_14_n_0;
  wire regs_reg_2_i_15_n_0;
  wire regs_reg_2_i_17_n_0;
  wire regs_reg_2_i_18_n_0;
  wire regs_reg_2_i_19_n_0;
  wire regs_reg_2_i_20_n_0;
  wire regs_reg_2_i_21_n_0;
  wire regs_reg_2_i_22_n_0;
  wire regs_reg_2_i_23_n_0;
  wire regs_reg_2_i_7_n_0;
  wire regs_reg_2_i_8_n_0;
  wire regs_reg_2_i_9_n_0;
  wire rx_en;
  wire \shift_amt[0]_i_2_n_0 ;
  wire \shift_amt[1]_i_2_n_0 ;
  wire \shift_amt[2]_i_2_n_0 ;
  wire \shift_amt[3]_i_2_n_0 ;
  wire \shift_amt[4]_i_4_n_0 ;
  wire \shift_amt_reg[4] ;
  wire [4:0]\shift_amt_reg[4]_0 ;
  wire tx_en;
  wire [1:0]NLW_regs_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_regs_reg_1_DOPBDOP_UNCONNECTED;
  wire [1:0]NLW_regs_reg_2_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_regs_reg_2_DOPBDOP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAA222A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_sequential_state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hF7F75755F7F75757)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state_reg[0]_8 ),
        .I4(Q[3]),
        .I5(regs_reg_1_i_52_n_0),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500105555)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(regs_reg_1_i_60_n_0),
        .I1(regs_reg_2_1[3]),
        .I2(\shift_amt_reg[4] ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[0]_9 ),
        .I5(\FSM_sequential_state_reg[0]_10 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(rb_rdata0[2]),
        .I1(rb_rdata0[3]),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(rb_rdata0[0]),
        .I4(rb_rdata0[1]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF7070F0FF7077)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\instr_reg[3] ),
        .I2(\FSM_sequential_state_reg[1]_1 ),
        .I3(\FSM_sequential_state_reg[1]_2 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\daddr_reg[30] [3]),
        .I1(\daddr_reg[30] [2]),
        .I2(\daddr_reg[30] [0]),
        .I3(\daddr_reg[30] [1]),
        .I4(\daddr_reg[30] [4]),
        .I5(\daddr_reg[30] [6]),
        .O(\instr_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(Q[0]),
        .I1(regs_reg_1_i_52_n_0),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2A2028202A202020)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\instr_reg[13]_0 ),
        .O(\FSM_sequential_state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h77077777FFFFFFFF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(regs_reg_1_i_52_n_0),
        .I3(Q[0]),
        .I4(\instr_reg[3] ),
        .I5(\FSM_sequential_state_reg[3]_0 [7]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00D0FFFF)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(Q[0]),
        .I1(\instr_reg[13]_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0000200000)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(regs_reg_1_i_52_n_0),
        .I1(Q[0]),
        .I2(\instr_reg[3] ),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[3]_0 [7]),
        .I5(Q[2]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  MUXF7 \FSM_sequential_state_reg[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_5_n_0 ),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[1]_0 [3]),
        .S(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[10]_i_1 
       (.I0(\pc[10]_i_2_n_0 ),
        .O(alu_out[8]));
  LUT5 #(
    .INIT(32'hFC5F0C50)) 
    \daddr[11]_i_1 
       (.I0(\daddr[11]_i_2_n_0 ),
        .I1(data0[11]),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\daddr[11]_i_3_n_0 ),
        .O(alu_out[9]));
  LUT6 #(
    .INIT(64'hFCFCA8FCFCFC88FC)) 
    \daddr[11]_i_2 
       (.I0(out1_carry_i_10_n_0),
        .I1(\daddr[11]_i_4_n_0 ),
        .I2(\daddr[11]_i_5_n_0 ),
        .I3(ra_rdata0[12]),
        .I4(out0_carry_i_13_n_0),
        .I5(regs_reg_1_i_304_n_0),
        .O(\daddr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66110F77)) 
    \daddr[11]_i_3 
       (.I0(out1_carry__1_i_12_n_0),
        .I1(out1_carry__1_i_9_n_0),
        .I2(out1_carry__1_i_10_n_0),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\instr_reg[13] ),
        .O(\daddr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    \daddr[11]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [12]),
        .I5(\instr_reg[0] ),
        .O(\daddr[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h1113)) 
    \daddr[11]_i_5 
       (.I0(\instr_reg[3]_0 ),
        .I1(\instr_reg[0]_0 ),
        .I2(out1_carry_i_15_n_0),
        .I3(\daddr_reg[30] [31]),
        .O(\daddr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000DF9B)) 
    \daddr[12]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[12]_i_2_n_0 ),
        .I3(data0[12]),
        .I4(\daddr[12]_i_3_n_0 ),
        .O(alu_out[10]));
  LUT6 #(
    .INIT(64'h0000EF00EFEFEFEF)) 
    \daddr[12]_i_2 
       (.I0(out1_carry_i_10_n_0),
        .I1(out0_carry_i_13_n_0),
        .I2(ra_rdata0[13]),
        .I3(\instr_reg[0] ),
        .I4(\daddr_reg[30] [13]),
        .I5(\daddr[12]_i_4_n_0 ),
        .O(\daddr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4141545455004040)) 
    \daddr[12]_i_3 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__2_i_14_n_0),
        .I2(\daddr[11]_i_2_n_0 ),
        .I3(out1_carry__1_i_9_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDCDDDDD0DD0)) 
    \daddr[12]_i_4 
       (.I0(\daddr[11]_i_5_n_0 ),
        .I1(\daddr[12]_i_5_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\daddr[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \daddr[12]_i_5 
       (.I0(regs_reg_1_i_304_n_0),
        .I1(ra_rdata0[13]),
        .I2(out0_carry_i_13_n_0),
        .O(\daddr[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[13]_i_1 
       (.I0(regs_reg_1_i_96_n_0),
        .O(alu_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[14]_i_1 
       (.I0(regs_reg_1_i_92_n_0),
        .O(alu_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[15]_i_1 
       (.I0(regs_reg_1_i_86_n_0),
        .O(alu_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[16]_i_1 
       (.I0(\pc[16]_i_2_n_0 ),
        .O(alu_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h4602FFFF)) 
    \daddr[17]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[17]_i_2_n_0 ),
        .I3(data0[17]),
        .I4(\daddr[17]_i_3_n_0 ),
        .O(alu_out[15]));
  LUT6 #(
    .INIT(64'h0000FB00FBFBFBFB)) 
    \daddr[17]_i_2 
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[18]),
        .I2(out0_carry_i_13_n_0),
        .I3(\instr_reg[0] ),
        .I4(\daddr_reg[30] [18]),
        .I5(\daddr[17]_i_5_n_0 ),
        .O(\daddr[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEBEBFEFEFFAAEAEA)) 
    \daddr[17]_i_3 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__3_i_14_n_0),
        .I2(out1_carry__3_i_10_n_0),
        .I3(out1_carry__3_i_11_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \daddr[17]_i_4 
       (.I0(\instr_reg[0]_0 ),
        .I1(out1_carry_i_15_n_0),
        .O(\instr_reg[0] ));
  LUT6 #(
    .INIT(64'h04CC04040FFF0F0F)) 
    \daddr[17]_i_5 
       (.I0(\daddr[17]_i_6_n_0 ),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(\daddr[11]_i_5_n_0 ),
        .I3(regs_reg_1_i_304_n_0),
        .I4(\pc[18]_i_3_n_0 ),
        .I5(\daddr[17]_i_7_n_0 ),
        .O(\daddr[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[17]_i_6 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\daddr[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h222B)) 
    \daddr[17]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\daddr[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[18]_i_1 
       (.I0(\pc[18]_i_2_n_0 ),
        .O(alu_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[19]_i_1 
       (.I0(regs_reg_1_i_195_n_0),
        .O(alu_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[20]_i_1 
       (.I0(\pc[20]_i_2_n_0 ),
        .O(alu_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h4602FFFF)) 
    \daddr[21]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[21]_i_2_n_0 ),
        .I3(data0[21]),
        .I4(\daddr[21]_i_3_n_0 ),
        .O(alu_out[19]));
  LUT6 #(
    .INIT(64'hCFCFCFCF8A88CFCF)) 
    \daddr[21]_i_2 
       (.I0(out1_carry_i_10_n_0),
        .I1(\daddr[21]_i_4_n_0 ),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[22]),
        .I5(out0_carry_i_13_n_0),
        .O(\daddr[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEEFEFAAFFAEAE)) 
    \daddr[21]_i_3 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__4_i_15_n_0),
        .I2(alu_op_a[21]),
        .I3(alu_op_a[20]),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    \daddr[21]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [22]),
        .I5(\instr_reg[0]_0 ),
        .O(\daddr[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[22]_i_1 
       (.I0(\pc[22]_i_2_n_0 ),
        .O(alu_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6240FFFF)) 
    \daddr[23]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(data0[23]),
        .I3(alu_op_a[24]),
        .I4(\daddr[23]_i_2_n_0 ),
        .O(alu_out[21]));
  LUT6 #(
    .INIT(64'hEBEBBFBFFFAAABAB)) 
    \daddr[23]_i_2 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(alu_op_a[23]),
        .I2(out1_carry__4_i_13_n_0),
        .I3(\daddr[21]_i_2_n_0 ),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6420FFFF)) 
    \daddr[24]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(alu_op_a[25]),
        .I3(data0[24]),
        .I4(\daddr[24]_i_2_n_0 ),
        .O(alu_out[22]));
  LUT6 #(
    .INIT(64'hFAAFAFFFBBBBAAAF)) 
    \daddr[24]_i_2 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(alu_op_a[23]),
        .I2(out1_carry__5_i_15_n_0),
        .I3(alu_op_a[24]),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6240FFFF)) 
    \daddr[25]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(data0[25]),
        .I3(alu_op_a[26]),
        .I4(\daddr[25]_i_2_n_0 ),
        .O(alu_out[23]));
  LUT6 #(
    .INIT(64'hEBBFEBBFAAABFFAB)) 
    \daddr[25]_i_2 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(alu_op_a[25]),
        .I2(out1_carry__5_i_14_n_0),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(alu_op_a[24]),
        .I5(\instr_reg[13] ),
        .O(\daddr[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h4602FFFF)) 
    \daddr[26]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[26]_i_2_n_0 ),
        .I3(data0[26]),
        .I4(\daddr[26]_i_3_n_0 ),
        .O(alu_out[24]));
  LUT6 #(
    .INIT(64'hCFCFCFCF8A88CFCF)) 
    \daddr[26]_i_2 
       (.I0(out1_carry_i_10_n_0),
        .I1(\daddr[26]_i_4_n_0 ),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[27]),
        .I5(out0_carry_i_13_n_0),
        .O(\daddr[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAAFAFFFBBBBAAAF)) 
    \daddr[26]_i_3 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(alu_op_a[25]),
        .I2(out1_carry__5_i_13_n_0),
        .I3(alu_op_a[26]),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\daddr[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    \daddr[26]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [27]),
        .I5(\instr_reg[0]_0 ),
        .O(\daddr[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[27]_i_1 
       (.I0(\pc[27]_i_2_n_0 ),
        .O(alu_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[28]_i_1 
       (.I0(\pc[28]_i_2_n_0 ),
        .O(alu_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[29]_i_1 
       (.I0(regs_reg_1_i_155_n_0),
        .O(alu_out[27]));
  LUT5 #(
    .INIT(32'h0D0F090B)) 
    \daddr[2]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[2]_i_2_n_0 ),
        .I3(\daddr[2]_i_3_n_0 ),
        .I4(data0[2]),
        .O(alu_out[0]));
  LUT6 #(
    .INIT(64'h000000006FD460D4)) 
    \daddr[2]_i_2 
       (.I0(alu_op_a[2]),
        .I1(out1_carry_i_21_n_0),
        .I2(\instr_reg[13] ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(out1_carry_i_18_n_0),
        .I5(\daddr[30]_i_9_n_0 ),
        .O(\daddr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \daddr[2]_i_3 
       (.I0(\daddr[2]_i_4_n_0 ),
        .I1(\daddr[3]_i_5_n_0 ),
        .I2(out1_carry__0_i_9_0[3]),
        .I3(\daddr[2]_i_5_n_0 ),
        .I4(regs_reg_1_i_134_n_0),
        .I5(out1_carry_i_10_n_0),
        .O(\daddr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFD800D8)) 
    \daddr[2]_i_4 
       (.I0(regs_reg_1_i_304_n_0),
        .I1(\daddr_reg[30] [10]),
        .I2(regs_reg_1_i_134_n_0),
        .I3(out1_carry_i_15_n_0),
        .I4(\daddr_reg[30] [23]),
        .I5(out1_carry__1_i_17_n_0),
        .O(\daddr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \daddr[2]_i_5 
       (.I0(\daddr_reg[30] [18]),
        .I1(\daddr_reg[30] [14]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\daddr[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0D0F090B)) 
    \daddr[30]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[30]_i_4_n_0 ),
        .I3(\daddr[30]_i_5_n_0 ),
        .I4(data0[30]),
        .O(alu_out[28]));
  LUT6 #(
    .INIT(64'h0000E00E00000000)) 
    \daddr[30]_i_2 
       (.I0(\daddr[30]_i_6_n_0 ),
        .I1(\daddr[30]_i_7_n_0 ),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h33333DFD00000000)) 
    \daddr[30]_i_3 
       (.I0(\daddr[30]_i_8_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\daddr_reg[30] [14]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'h5545054005405040)) 
    \daddr[30]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__6_i_9_n_0),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\instr_reg[13] ),
        .I4(out1_carry__6_i_8_n_0),
        .I5(out1_carry__6_i_12_n_0),
        .O(\daddr[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FDFDFDDDFDDD)) 
    \daddr[30]_i_5 
       (.I0(ra_rdata0[31]),
        .I1(out0_carry_i_13_n_0),
        .I2(out1_carry_i_10_n_0),
        .I3(out1_carry_i_11_n_0),
        .I4(\daddr_reg[30] [31]),
        .I5(out1_carry_i_12_n_0),
        .O(\daddr[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \daddr[30]_i_6 
       (.I0(Q[0]),
        .I1(\daddr_reg[30] [14]),
        .I2(\daddr_reg[30] [12]),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_215_n_0),
        .O(\daddr[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \daddr[30]_i_7 
       (.I0(\daddr_reg[30] [12]),
        .I1(\daddr_reg[30] [13]),
        .I2(\instr_reg[1] ),
        .I3(\daddr_reg[30] [4]),
        .I4(\daddr_reg[30] [6]),
        .I5(\daddr_reg[30] [5]),
        .O(\daddr[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h07000E0000000E00)) 
    \daddr[30]_i_8 
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [12]),
        .I2(\instr_reg[1] ),
        .I3(\daddr_reg[30] [4]),
        .I4(\daddr_reg[30] [6]),
        .I5(\daddr_reg[30] [5]),
        .O(\daddr[30]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \daddr[30]_i_9 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .O(\daddr[30]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[31]_i_1 
       (.I0(\pc[31]_i_4_n_0 ),
        .O(alu_out[29]));
  LUT5 #(
    .INIT(32'hFC5F0C50)) 
    \daddr[3]_i_1 
       (.I0(\daddr[3]_i_2_n_0 ),
        .I1(data0[3]),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\daddr[3]_i_3_n_0 ),
        .O(alu_out[1]));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \daddr[3]_i_2 
       (.I0(\daddr[3]_i_4_n_0 ),
        .I1(\daddr[3]_i_5_n_0 ),
        .I2(out1_carry__0_i_9_0[4]),
        .I3(\daddr[3]_i_6_n_0 ),
        .I4(\pc[4]_i_2_n_0 ),
        .I5(out1_carry_i_10_n_0),
        .O(\daddr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40D9D973)) 
    \daddr[3]_i_3 
       (.I0(\instr_reg[13] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(alu_op_a[2]),
        .I3(\daddr[2]_i_3_n_0 ),
        .I4(out1_carry_i_20_n_0),
        .O(\daddr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \daddr[3]_i_4 
       (.I0(\daddr_reg[30] [11]),
        .I1(regs_reg_1_i_304_n_0),
        .I2(\pc[4]_i_2_n_0 ),
        .I3(out1_carry_i_15_n_0),
        .I4(\daddr_reg[30] [24]),
        .I5(out1_carry__1_i_17_n_0),
        .O(\daddr[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \daddr[3]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\daddr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \daddr[3]_i_6 
       (.I0(\daddr_reg[30] [19]),
        .I1(\daddr_reg[30] [14]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\daddr[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \daddr[4]_i_1 
       (.I0(alu_op_a[5]),
        .I1(data0[4]),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\daddr[4]_i_2_n_0 ),
        .O(alu_out[2]));
  LUT5 #(
    .INIT(32'h049D9D37)) 
    \daddr[4]_i_2 
       (.I0(\instr_reg[13] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[2]_i_3_n_0 ),
        .I3(\daddr[3]_i_2_n_0 ),
        .I4(out1_carry__0_i_18_n_0),
        .O(\daddr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \daddr[5]_i_1 
       (.I0(alu_op_a[6]),
        .I1(data0[5]),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\daddr[5]_i_2_n_0 ),
        .O(alu_out[3]));
  LUT5 #(
    .INIT(32'h940D94FD)) 
    \daddr[5]_i_2 
       (.I0(out1_carry__0_i_17_n_0),
        .I1(alu_op_a[5]),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\instr_reg[13] ),
        .I4(\daddr[3]_i_2_n_0 ),
        .O(\daddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[6]_i_1 
       (.I0(regs_reg_1_i_123_n_0),
        .O(alu_out[4]));
  LUT5 #(
    .INIT(32'hD090F0B0)) 
    \daddr[7]_i_1 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[7]_i_2_n_0 ),
        .I3(data0[7]),
        .I4(\daddr[7]_i_3_n_0 ),
        .O(alu_out[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6161F707)) 
    \daddr[7]_i_2 
       (.I0(out1_carry__0_i_9_n_0),
        .I1(out1_carry__0_i_15_n_0),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(alu_op_a[6]),
        .I4(\instr_reg[13] ),
        .I5(\daddr[30]_i_9_n_0 ),
        .O(\daddr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB00BBB0BBBBBBBB)) 
    \daddr[7]_i_3 
       (.I0(out1_carry_i_10_n_0),
        .I1(regs_reg_1_i_117_n_0),
        .I2(\instr_reg[3]_0 ),
        .I3(\instr_reg[0]_0 ),
        .I4(\daddr_reg[30] [28]),
        .I5(\daddr[7]_i_4_n_0 ),
        .O(\daddr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEECEEEEE0EE0)) 
    \daddr[7]_i_4 
       (.I0(\instr_reg[3]_0 ),
        .I1(regs_reg_1_i_117_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\daddr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[8]_i_1 
       (.I0(regs_reg_1_i_116_n_0),
        .O(alu_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \daddr[9]_i_1 
       (.I0(regs_reg_1_i_112_n_0),
        .O(alu_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \dstrb[0]_i_1 
       (.I0(\dstrb[0]_i_2_n_0 ),
        .I1(\daddr_reg[30] [13]),
        .I2(\dstrb[0]_i_3_n_0 ),
        .O(dstrb_w));
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    \dstrb[0]_i_10 
       (.I0(\instr_reg[0]_0 ),
        .I1(\instr_reg[3]_0 ),
        .I2(\daddr[4]_i_2_1 ),
        .I3(\dstrb[0]_i_7_0 ),
        .I4(\daddr_reg[30] [21]),
        .O(\dstrb[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBFFFFFFFFF)) 
    \dstrb[0]_i_11 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(rb_rdata0[1]),
        .O(\dstrb[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \dstrb[0]_i_12 
       (.I0(out1_carry_i_11_n_0),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [22]),
        .I3(\instr_reg[5]_0 ),
        .I4(\daddr_reg[30] [3]),
        .I5(out1_carry_i_24_n_0),
        .O(\dstrb[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \dstrb[0]_i_2 
       (.I0(\dstrb[0]_i_4_n_0 ),
        .I1(\daddr[30]_i_9_n_0 ),
        .I2(\dstrb[0]_i_5_n_0 ),
        .I3(\instr_reg[13] ),
        .I4(\dstrb[0]_i_6_n_0 ),
        .I5(\dstrb[0]_i_7_n_0 ),
        .O(\dstrb[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \dstrb[0]_i_3 
       (.I0(\daddr_reg[30] [12]),
        .I1(\daddr_reg[30] [13]),
        .I2(regs_reg_1_i_145_n_0),
        .O(\dstrb[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD0D0D0DD)) 
    \dstrb[0]_i_4 
       (.I0(data0[1]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\dstrb[0]_i_8_n_0 ),
        .I4(out1_carry_i_17_n_0),
        .O(\dstrb[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h59AAF75559AA59AA)) 
    \dstrb[0]_i_5 
       (.I0(\FSM_sequential_state_reg[3] ),
        .I1(\dstrb[0]_i_9_n_0 ),
        .I2(\dstrb[0]_i_10_n_0 ),
        .I3(\dstrb[0]_i_11_n_0 ),
        .I4(out1_carry_i_28_n_0),
        .I5(regs_reg_1_i_335_n_0),
        .O(\dstrb[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dstrb[0]_i_6 
       (.I0(\FSM_sequential_state_reg[3] ),
        .I1(alu_op_a[0]),
        .O(\dstrb[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFFFDFFFFFFFF)) 
    \dstrb[0]_i_7 
       (.I0(regs_reg_1_i_335_n_0),
        .I1(out1_carry_i_28_n_0),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\dstrb[0]_i_9_n_0 ),
        .I4(\dstrb[0]_i_10_n_0 ),
        .I5(\dstrb[0]_i_11_n_0 ),
        .O(\dstrb[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAEFEA)) 
    \dstrb[0]_i_8 
       (.I0(out1_carry_i_15_n_0),
        .I1(\daddr_reg[30] [9]),
        .I2(regs_reg_1_i_304_n_0),
        .I3(ra_rdata0[2]),
        .I4(out0_carry_i_13_n_0),
        .I5(\dstrb[0]_i_12_n_0 ),
        .O(\dstrb[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF404FFFF)) 
    \dstrb[0]_i_9 
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[1]),
        .I2(\FSM_sequential_state_reg[0]_8 ),
        .I3(\daddr_reg[30] [8]),
        .I4(\dstrb[0]_i_7_0 ),
        .O(\dstrb[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[0]_i_1 
       (.I0(rb_rdata0[0]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[10]_i_1 
       (.I0(rb_rdata0[2]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[10]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[11]_i_1 
       (.I0(rb_rdata0[3]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[11]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[12]_i_1 
       (.I0(rb_rdata0[4]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[12]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[13]_i_1 
       (.I0(rb_rdata0[5]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[13]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[14]_i_1 
       (.I0(rb_rdata0[6]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[14]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[15]_i_1 
       (.I0(rb_rdata0[7]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[15]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[16]_i_1 
       (.I0(rb_rdata0[16]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[0]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[17]_i_1 
       (.I0(rb_rdata0[17]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[1]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[18]_i_1 
       (.I0(rb_rdata0[18]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[2]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[19]_i_1 
       (.I0(rb_rdata0[19]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[3]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[1]_i_1 
       (.I0(rb_rdata0[1]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[20]_i_1 
       (.I0(rb_rdata0[20]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[4]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[21]_i_1 
       (.I0(rb_rdata0[21]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[5]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[22]_i_1 
       (.I0(rb_rdata0[22]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[6]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \dwdata[23]_i_1 
       (.I0(rb_rdata0[23]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[7]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[22]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[24]_i_1 
       (.I0(rb_rdata0[24]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[8]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[0]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[23]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[25]_i_1 
       (.I0(rb_rdata0[25]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[9]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[1]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[24]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[26]_i_1 
       (.I0(rb_rdata0[26]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[10]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[2]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[25]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[27]_i_1 
       (.I0(rb_rdata0[27]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[11]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[3]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[26]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[28]_i_1 
       (.I0(rb_rdata0[28]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[12]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[4]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[27]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[29]_i_1 
       (.I0(rb_rdata0[29]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[13]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[5]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[28]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[2]_i_1 
       (.I0(rb_rdata0[2]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[1]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[30]_i_1 
       (.I0(rb_rdata0[30]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[14]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[6]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[29]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \dwdata[31]_i_1 
       (.I0(rb_rdata0[31]),
        .I1(\daddr_reg[30] [13]),
        .I2(rb_rdata0[15]),
        .I3(\daddr_reg[30] [12]),
        .I4(rb_rdata0[7]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[30]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[3]_i_1 
       (.I0(rb_rdata0[3]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[4]_i_1 
       (.I0(rb_rdata0[4]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[5]_i_1 
       (.I0(rb_rdata0[5]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[6]_i_1 
       (.I0(rb_rdata0[6]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dwdata[7]_i_1 
       (.I0(rb_rdata0[7]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[8]_i_1 
       (.I0(rb_rdata0[0]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[8]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \dwdata[9]_i_1 
       (.I0(rb_rdata0[1]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(rb_rdata0[9]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_1[8]));
  LUT6 #(
    .INIT(64'h5959A95900000000)) 
    i__carry__0_i_1
       (.I0(\pc[21]_i_2_n_0 ),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[21]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(i__carry__0_i_5_n_0),
        .O(\instr_reg[31]_3 [3]));
  LUT6 #(
    .INIT(64'h8828882822288828)) 
    i__carry__0_i_1__0
       (.I0(out0_carry__0_i_17_n_0),
        .I1(regs_reg_1_i_93_n_0),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[14]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31]_4 [3]));
  LUT6 #(
    .INIT(64'h2282228288822282)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_6_n_0),
        .I1(\pc[20]_i_3_n_0 ),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[20]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31]_3 [2]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__0_i_2__0
       (.I0(out0_carry__0_i_18_n_0),
        .I1(\pc[12]_i_2_n_0 ),
        .I2(rb_rdata0[12]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31]_4 [2]));
  LUT6 #(
    .INIT(64'h5959A95900000000)) 
    i__carry__0_i_3
       (.I0(regs_reg_1_i_87_n_0),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[15]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(i__carry__0_i_7_n_0),
        .O(\instr_reg[31]_3 [1]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry__0_i_3__0
       (.I0(out0_carry__0_i_19_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[10]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [30]),
        .I5(\pc[10]_i_3_n_0 ),
        .O(\instr_reg[31]_4 [1]));
  LUT6 #(
    .INIT(64'h8828882822288828)) 
    i__carry__0_i_4
       (.I0(i__carry__0_i_8_n_0),
        .I1(regs_reg_1_i_93_n_0),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[14]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31]_3 [0]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry__0_i_4__0
       (.I0(out0_carry__0_i_20_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[8]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [28]),
        .I5(regs_reg_1_i_117_n_0),
        .O(\instr_reg[31]_4 [0]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__0_i_5
       (.I0(out0_carry__1_i_17_n_0),
        .I1(\pc[22]_i_3_n_0 ),
        .I2(rb_rdata0[22]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__0_i_6
       (.I0(out0_carry__1_i_19_n_0),
        .I1(\pc[18]_i_3_n_0 ),
        .I2(rb_rdata0[18]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__0_i_7
       (.I0(out0_carry__1_i_20_n_0),
        .I1(\pc[16]_i_3_n_0 ),
        .I2(rb_rdata0[16]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__0_i_8
       (.I0(out0_carry__0_i_18_n_0),
        .I1(\pc[12]_i_2_n_0 ),
        .I2(rb_rdata0[12]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0808A808A2A202A2)) 
    i__carry__1_i_1
       (.I0(out0_carry__2_i_17_n_0),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[30]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(regs_reg_1_i_152_n_0),
        .O(\instr_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__1_i_1__0
       (.I0(out0_carry__1_i_17_n_0),
        .I1(\pc[22]_i_3_n_0 ),
        .I2(rb_rdata0[22]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_3[3]));
  LUT6 #(
    .INIT(64'h5959A95900000000)) 
    i__carry__1_i_2
       (.I0(\pc[27]_i_3_n_0 ),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[27]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(i__carry__1_i_4_n_0),
        .O(\instr_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h2282228288822282)) 
    i__carry__1_i_2__0
       (.I0(out0_carry__1_i_18_n_0),
        .I1(\pc[20]_i_3_n_0 ),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[20]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_3[2]));
  LUT6 #(
    .INIT(64'h5959A95900000000)) 
    i__carry__1_i_3
       (.I0(\pc[26]_i_2_n_0 ),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[26]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(i__carry__1_i_5_n_0),
        .O(\instr_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__1_i_3__0
       (.I0(out0_carry__1_i_19_n_0),
        .I1(\pc[18]_i_3_n_0 ),
        .I2(rb_rdata0[18]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_3[1]));
  LUT6 #(
    .INIT(64'h1141444411411111)) 
    i__carry__1_i_4
       (.I0(out0_carry__2_i_18_n_0),
        .I1(\pc[28]_i_3_n_0 ),
        .I2(rb_rdata0[28]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__1_i_4__0
       (.I0(out0_carry__1_i_20_n_0),
        .I1(\pc[16]_i_3_n_0 ),
        .I2(rb_rdata0[16]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_3[0]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__1_i_5
       (.I0(out0_carry__2_i_20_n_0),
        .I1(\pc[24]_i_2_n_0 ),
        .I2(rb_rdata0[24]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(i__carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h0AAB0BFF)) 
    i__carry__2_i_1
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[30]),
        .I2(out0_carry__2_i_9_n_0),
        .I3(out0_carry__2_i_10_n_0),
        .I4(ra_rdata0[31]),
        .O(regs_reg_1_0));
  LUT6 #(
    .INIT(64'h0808A808A2A202A2)) 
    i__carry__2_i_2
       (.I0(out0_carry__2_i_17_n_0),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[30]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(regs_reg_1_i_152_n_0),
        .O(\instr_reg[31] [3]));
  LUT6 #(
    .INIT(64'h1141444411411111)) 
    i__carry__2_i_3
       (.I0(out0_carry__2_i_18_n_0),
        .I1(\pc[28]_i_3_n_0 ),
        .I2(rb_rdata0[28]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31] [2]));
  LUT6 #(
    .INIT(64'h2282228288822282)) 
    i__carry__2_i_4
       (.I0(out0_carry__2_i_19_n_0),
        .I1(\pc[26]_i_2_n_0 ),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[26]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31] [1]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    i__carry__2_i_5
       (.I0(out0_carry__2_i_20_n_0),
        .I1(\pc[24]_i_2_n_0 ),
        .I2(rb_rdata0[24]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31] [0]));
  LUT6 #(
    .INIT(64'h4F40B0BF00000000)) 
    i__carry_i_1
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[9]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [29]),
        .I4(regs_reg_1_i_113_n_0),
        .I5(i__carry_i_5_n_0),
        .O(regs_reg_2_2[3]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry_i_1__0
       (.I0(out0_carry_i_16_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[6]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [26]),
        .I5(regs_reg_1_i_124_n_0),
        .O(regs_reg_2_4[3]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry_i_2
       (.I0(i__carry_i_6_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[8]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [28]),
        .I5(regs_reg_1_i_117_n_0),
        .O(regs_reg_2_2[2]));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    i__carry_i_2__0
       (.I0(out0_carry_i_17_n_0),
        .I1(regs_reg_2_1[3]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [24]),
        .I4(ra_rdata0[4]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_4[2]));
  LUT6 #(
    .INIT(64'h1D1DE21D00000000)) 
    i__carry_i_3
       (.I0(\daddr_reg[30] [23]),
        .I1(\instr_reg[4] ),
        .I2(regs_reg_2_1[2]),
        .I3(ra_rdata0[3]),
        .I4(out0_carry_i_13_n_0),
        .I5(i__carry_i_7_n_0),
        .O(regs_reg_2_2[1]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    i__carry_i_3__0
       (.I0(out0_carry_i_18_n_0),
        .I1(\daddr_reg[30] [22]),
        .I2(\instr_reg[4] ),
        .I3(regs_reg_2_1[1]),
        .I4(ra_rdata0[2]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_4[1]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    i__carry_i_4
       (.I0(i__carry_i_8_n_0),
        .I1(\daddr_reg[30] [22]),
        .I2(\instr_reg[4] ),
        .I3(regs_reg_2_1[1]),
        .I4(ra_rdata0[2]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_2[0]));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    i__carry_i_4__0
       (.I0(out0_carry_i_19_n_0),
        .I1(regs_reg_2_1[0]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [20]),
        .I4(ra_rdata0[0]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_4[0]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry_i_5
       (.I0(out0_carry__0_i_19_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[10]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [30]),
        .I5(\pc[10]_i_3_n_0 ),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    i__carry_i_6
       (.I0(out0_carry_i_16_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[6]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [26]),
        .I5(regs_reg_1_i_124_n_0),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    i__carry_i_7
       (.I0(out0_carry_i_17_n_0),
        .I1(regs_reg_2_1[3]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [24]),
        .I4(ra_rdata0[4]),
        .I5(out0_carry_i_13_n_0),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    i__carry_i_8
       (.I0(out0_carry_i_19_n_0),
        .I1(regs_reg_2_1[0]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [20]),
        .I4(ra_rdata0[0]),
        .I5(out0_carry_i_13_n_0),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \instr_counter[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\FSM_sequential_state_reg[0]_7 ));
  LUT6 #(
    .INIT(64'hB8003000FCFCB830)) 
    out0_carry__0_i_1
       (.I0(out0_carry__0_i_9_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(regs_reg_1_i_93_n_0),
        .I4(out0_carry__0_i_10_n_0),
        .I5(regs_reg_1_i_87_n_0),
        .O(\instr_reg[31]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_10
       (.I0(rb_rdata0[15]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_11
       (.I0(rb_rdata0[13]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_12
       (.I0(rb_rdata0[12]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hDD1D)) 
    out0_carry__0_i_13
       (.I0(\daddr_reg[30] [31]),
        .I1(\instr_reg[4] ),
        .I2(rb_rdata0[11]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_14
       (.I0(rb_rdata0[10]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_15
       (.I0(rb_rdata0[8]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hB0BF)) 
    out0_carry__0_i_16
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[9]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [29]),
        .O(out0_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__0_i_17
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[15]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[15]),
        .O(out0_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'hB0BFB0BF4F40B0BF)) 
    out0_carry__0_i_18
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[13]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(ra_rdata0[13]),
        .I5(out0_carry_i_13_n_0),
        .O(out0_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__0_i_19
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[11]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[11]),
        .O(out0_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hB800B800FCB8B830)) 
    out0_carry__0_i_2
       (.I0(out0_carry__0_i_11_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(regs_reg_1_i_97_n_0),
        .I4(out0_carry__0_i_12_n_0),
        .I5(\pc[12]_i_2_n_0 ),
        .O(\instr_reg[31]_1 [2]));
  LUT6 #(
    .INIT(64'hBB4BBB4B444BBB4B)) 
    out0_carry__0_i_20
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[9]),
        .I2(\daddr_reg[30] [29]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[9]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_20_n_0));
  LUT6 #(
    .INIT(64'h1717171111111711)) 
    out0_carry__0_i_3
       (.I0(out0_carry__0_i_13_n_0),
        .I1(\pc[11]_i_2_n_0 ),
        .I2(\pc[10]_i_3_n_0 ),
        .I3(\daddr_reg[30] [30]),
        .I4(\instr_reg[4] ),
        .I5(out0_carry__0_i_14_n_0),
        .O(\instr_reg[31]_1 [1]));
  LUT6 #(
    .INIT(64'h000054045404FFFF)) 
    out0_carry__0_i_4
       (.I0(regs_reg_1_i_117_n_0),
        .I1(\daddr_reg[30] [28]),
        .I2(\instr_reg[4] ),
        .I3(out0_carry__0_i_15_n_0),
        .I4(regs_reg_1_i_113_n_0),
        .I5(out0_carry__0_i_16_n_0),
        .O(\instr_reg[31]_1 [0]));
  LUT6 #(
    .INIT(64'h8828882822288828)) 
    out0_carry__0_i_5
       (.I0(out0_carry__0_i_17_n_0),
        .I1(regs_reg_1_i_93_n_0),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[14]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31]_5 [3]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    out0_carry__0_i_6
       (.I0(out0_carry__0_i_18_n_0),
        .I1(\pc[12]_i_2_n_0 ),
        .I2(rb_rdata0[12]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31]_5 [2]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    out0_carry__0_i_7
       (.I0(out0_carry__0_i_19_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[10]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [30]),
        .I5(\pc[10]_i_3_n_0 ),
        .O(\instr_reg[31]_5 [1]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    out0_carry__0_i_8
       (.I0(out0_carry__0_i_20_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[8]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [28]),
        .I5(regs_reg_1_i_117_n_0),
        .O(\instr_reg[31]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__0_i_9
       (.I0(rb_rdata0[14]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h00B800B8B8FC30B8)) 
    out0_carry__1_i_1
       (.I0(out0_carry__1_i_9_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(\pc[23]_i_2_n_0 ),
        .I4(out0_carry__1_i_10_n_0),
        .I5(\pc[22]_i_3_n_0 ),
        .O(\instr_reg[31]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_10
       (.I0(rb_rdata0[22]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_11
       (.I0(rb_rdata0[20]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_12
       (.I0(rb_rdata0[21]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_13
       (.I0(rb_rdata0[19]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_14
       (.I0(rb_rdata0[18]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_15
       (.I0(rb_rdata0[17]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_16
       (.I0(rb_rdata0[16]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__1_i_17
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[23]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[23]),
        .O(out0_carry__1_i_17_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__1_i_18
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[21]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[21]),
        .O(out0_carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__1_i_19
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[19]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[19]),
        .O(out0_carry__1_i_19_n_0));
  LUT6 #(
    .INIT(64'h00B80030FCFC30B8)) 
    out0_carry__1_i_2
       (.I0(out0_carry__1_i_11_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(\pc[20]_i_3_n_0 ),
        .I4(out0_carry__1_i_12_n_0),
        .I5(\pc[21]_i_2_n_0 ),
        .O(\instr_reg[31]_2 [2]));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__1_i_20
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[17]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[17]),
        .O(out0_carry__1_i_20_n_0));
  LUT6 #(
    .INIT(64'h00B800B8B8FC30B8)) 
    out0_carry__1_i_3
       (.I0(out0_carry__1_i_13_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(regs_reg_1_i_196_n_0),
        .I4(out0_carry__1_i_14_n_0),
        .I5(\pc[18]_i_3_n_0 ),
        .O(\instr_reg[31]_2 [1]));
  LUT6 #(
    .INIT(64'h00B800B8B8FC30B8)) 
    out0_carry__1_i_4
       (.I0(out0_carry__1_i_15_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(\pc[17]_i_2_n_0 ),
        .I4(out0_carry__1_i_16_n_0),
        .I5(\pc[16]_i_3_n_0 ),
        .O(\instr_reg[31]_2 [0]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    out0_carry__1_i_5
       (.I0(out0_carry__1_i_17_n_0),
        .I1(\pc[22]_i_3_n_0 ),
        .I2(rb_rdata0[22]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_6[3]));
  LUT6 #(
    .INIT(64'h2282228288822282)) 
    out0_carry__1_i_6
       (.I0(out0_carry__1_i_18_n_0),
        .I1(\pc[20]_i_3_n_0 ),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[20]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(regs_reg_2_6[2]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    out0_carry__1_i_7
       (.I0(out0_carry__1_i_19_n_0),
        .I1(\pc[18]_i_3_n_0 ),
        .I2(rb_rdata0[18]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_6[1]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    out0_carry__1_i_8
       (.I0(out0_carry__1_i_20_n_0),
        .I1(\pc[16]_i_3_n_0 ),
        .I2(rb_rdata0[16]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(regs_reg_2_6[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__1_i_9
       (.I0(rb_rdata0[23]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__1_i_9_n_0));
  LUT5 #(
    .INIT(32'h5F010B00)) 
    out0_carry__2_i_1
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[30]),
        .I2(out0_carry__2_i_9_n_0),
        .I3(out0_carry__2_i_10_n_0),
        .I4(ra_rdata0[31]),
        .O(regs_reg_1_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hDD1D)) 
    out0_carry__2_i_10
       (.I0(\daddr_reg[30] [31]),
        .I1(\instr_reg[4] ),
        .I2(rb_rdata0[31]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_11
       (.I0(rb_rdata0[29]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_12
       (.I0(rb_rdata0[28]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_13
       (.I0(rb_rdata0[26]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_14
       (.I0(rb_rdata0[27]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_15
       (.I0(rb_rdata0[25]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out0_carry__2_i_16
       (.I0(rb_rdata0[24]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_16_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__2_i_17
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[31]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[31]),
        .O(out0_carry__2_i_17_n_0));
  LUT6 #(
    .INIT(64'h4F40B0BF4F404F40)) 
    out0_carry__2_i_18
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[29]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[29]),
        .O(out0_carry__2_i_18_n_0));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__2_i_19
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[27]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[27]),
        .O(out0_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'h00B800B8B8FC30B8)) 
    out0_carry__2_i_2
       (.I0(out0_carry__2_i_11_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(regs_reg_1_i_156_n_0),
        .I4(out0_carry__2_i_12_n_0),
        .I5(\pc[28]_i_3_n_0 ),
        .O(regs_reg_1_1[2]));
  LUT6 #(
    .INIT(64'hB0BF4F40B0BFB0BF)) 
    out0_carry__2_i_20
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[25]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [31]),
        .I4(out0_carry_i_13_n_0),
        .I5(ra_rdata0[25]),
        .O(out0_carry__2_i_20_n_0));
  LUT6 #(
    .INIT(64'h00B80030FCFC30B8)) 
    out0_carry__2_i_3
       (.I0(out0_carry__2_i_13_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(\pc[26]_i_2_n_0 ),
        .I4(out0_carry__2_i_14_n_0),
        .I5(\pc[27]_i_3_n_0 ),
        .O(regs_reg_1_1[1]));
  LUT6 #(
    .INIT(64'h00B800B8B8FC30B8)) 
    out0_carry__2_i_4
       (.I0(out0_carry__2_i_15_n_0),
        .I1(\instr_reg[4] ),
        .I2(\daddr_reg[30] [31]),
        .I3(\pc[25]_i_2_n_0 ),
        .I4(out0_carry__2_i_16_n_0),
        .I5(\pc[24]_i_2_n_0 ),
        .O(regs_reg_1_1[0]));
  LUT6 #(
    .INIT(64'h0808A808A2A202A2)) 
    out0_carry__2_i_5
       (.I0(out0_carry__2_i_17_n_0),
        .I1(\daddr_reg[30] [31]),
        .I2(\instr_reg[4] ),
        .I3(rb_rdata0[30]),
        .I4(\shift_amt[0]_i_2_n_0 ),
        .I5(regs_reg_1_i_152_n_0),
        .O(\instr_reg[31]_6 [3]));
  LUT6 #(
    .INIT(64'h1141444411411111)) 
    out0_carry__2_i_6
       (.I0(out0_carry__2_i_18_n_0),
        .I1(\pc[28]_i_3_n_0 ),
        .I2(rb_rdata0[28]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31]_6 [2]));
  LUT6 #(
    .INIT(64'h2282228288822282)) 
    out0_carry__2_i_7
       (.I0(out0_carry__2_i_19_n_0),
        .I1(\pc[26]_i_2_n_0 ),
        .I2(\daddr_reg[30] [31]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[26]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(\instr_reg[31]_6 [1]));
  LUT6 #(
    .INIT(64'h2282888822822222)) 
    out0_carry__2_i_8
       (.I0(out0_carry__2_i_20_n_0),
        .I1(\pc[24]_i_2_n_0 ),
        .I2(rb_rdata0[24]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [31]),
        .O(\instr_reg[31]_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hDD1D)) 
    out0_carry__2_i_9
       (.I0(\daddr_reg[30] [31]),
        .I1(\instr_reg[4] ),
        .I2(rb_rdata0[30]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h000054045404FFFF)) 
    out0_carry_i_1
       (.I0(regs_reg_1_i_124_n_0),
        .I1(\daddr_reg[30] [26]),
        .I2(\instr_reg[4] ),
        .I3(regs_reg_2_1[5]),
        .I4(regs_reg_1_i_120_n_0),
        .I5(out0_carry_i_10_n_0),
        .O(DI[3]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hDD1D)) 
    out0_carry_i_10
       (.I0(\daddr_reg[30] [27]),
        .I1(\instr_reg[4] ),
        .I2(rb_rdata0[7]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hB0BF)) 
    out0_carry_i_11
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[5]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [25]),
        .O(out0_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hDD1D)) 
    out0_carry_i_12
       (.I0(\daddr_reg[30] [23]),
        .I1(\instr_reg[4] ),
        .I2(rb_rdata0[3]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    out0_carry_i_13
       (.I0(ra_raddr_r[4]),
        .I1(ra_raddr_r[0]),
        .I2(ra_raddr_r[5]),
        .I3(ra_raddr_r[3]),
        .I4(ra_raddr_r[1]),
        .I5(ra_raddr_r[2]),
        .O(out0_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    out0_carry_i_14
       (.I0(rb_rdata0[0]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [20]),
        .O(out0_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    out0_carry_i_15
       (.I0(rb_rdata0[1]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [21]),
        .O(out0_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hB4BB4444B4BBBBBB)) 
    out0_carry_i_16
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[7]),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(rb_rdata0[7]),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [27]),
        .O(out0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hBB4BBB4B444BBB4B)) 
    out0_carry_i_17
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[5]),
        .I2(\daddr_reg[30] [25]),
        .I3(\instr_reg[4] ),
        .I4(rb_rdata0[5]),
        .I5(\shift_amt[0]_i_2_n_0 ),
        .O(out0_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hB4BB4444B4BBBBBB)) 
    out0_carry_i_18
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[3]),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(rb_rdata0[3]),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [23]),
        .O(out0_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hDD2D2222DD2DDDDD)) 
    out0_carry_i_19
       (.I0(ra_rdata0[1]),
        .I1(out0_carry_i_13_n_0),
        .I2(rb_rdata0[1]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\instr_reg[4] ),
        .I5(\daddr_reg[30] [21]),
        .O(out0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h000054045404FFFF)) 
    out0_carry_i_2
       (.I0(\pc[4]_i_2_n_0 ),
        .I1(\daddr_reg[30] [24]),
        .I2(\instr_reg[4] ),
        .I3(regs_reg_2_1[3]),
        .I4(regs_reg_1_i_127_n_0),
        .I5(out0_carry_i_11_n_0),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h000045404540FFFF)) 
    out0_carry_i_3
       (.I0(\pc[2]_i_2_n_0 ),
        .I1(regs_reg_2_1[1]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [22]),
        .I4(regs_reg_1_i_134_n_0),
        .I5(out0_carry_i_12_n_0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hBAFFA0B0)) 
    out0_carry_i_4
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[0]),
        .I2(out0_carry_i_14_n_0),
        .I3(ra_rdata0[1]),
        .I4(out0_carry_i_15_n_0),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h20AA20008A008AAA)) 
    out0_carry_i_5
       (.I0(out0_carry_i_16_n_0),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[6]),
        .I3(\instr_reg[4] ),
        .I4(\daddr_reg[30] [26]),
        .I5(regs_reg_1_i_124_n_0),
        .O(regs_reg_2_5[3]));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    out0_carry_i_6
       (.I0(out0_carry_i_17_n_0),
        .I1(regs_reg_2_1[3]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [24]),
        .I4(ra_rdata0[4]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_5[2]));
  LUT6 #(
    .INIT(64'h02A202A2A80802A2)) 
    out0_carry_i_7
       (.I0(out0_carry_i_18_n_0),
        .I1(\daddr_reg[30] [22]),
        .I2(\instr_reg[4] ),
        .I3(regs_reg_2_1[1]),
        .I4(ra_rdata0[2]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_5[1]));
  LUT6 #(
    .INIT(64'h202A202A8A80202A)) 
    out0_carry_i_8
       (.I0(out0_carry_i_19_n_0),
        .I1(regs_reg_2_1[0]),
        .I2(\instr_reg[4] ),
        .I3(\daddr_reg[30] [20]),
        .I4(ra_rdata0[0]),
        .I5(out0_carry_i_13_n_0),
        .O(regs_reg_2_5[0]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    out0_carry_i_9
       (.I0(\instr_reg[1] ),
        .I1(\daddr_reg[30] [4]),
        .I2(\daddr_reg[30] [6]),
        .I3(\daddr_reg[30] [5]),
        .O(\instr_reg[4] ));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__0_i_1
       (.I0(out1_carry__0_i_9_n_0),
        .O(alu_op_a[7]));
  LUT6 #(
    .INIT(64'h0000000040001000)) 
    out1_carry__0_i_10
       (.I0(out1_carry_i_24_n_0),
        .I1(\daddr_reg[30] [3]),
        .I2(\daddr_reg[30] [5]),
        .I3(\daddr_reg[30] [6]),
        .I4(\daddr_reg[30] [2]),
        .I5(\daddr_reg[30] [4]),
        .O(\instr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hEEEEEECEEEEE0EE0)) 
    out1_carry__0_i_11
       (.I0(\instr_reg[3]_0 ),
        .I1(regs_reg_1_i_124_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h04FF0404)) 
    out1_carry__0_i_12
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[6]),
        .I2(out0_carry_i_13_n_0),
        .I3(\daddr[3]_i_5_n_0 ),
        .I4(out1_carry__0_i_9_0[6]),
        .O(out1_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hEEEEEECEEEEE0EE0)) 
    out1_carry__0_i_13
       (.I0(\instr_reg[3]_0 ),
        .I1(regs_reg_1_i_127_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h04FF0404)) 
    out1_carry__0_i_14
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[5]),
        .I2(out0_carry_i_13_n_0),
        .I3(\daddr[3]_i_5_n_0 ),
        .I4(out1_carry__0_i_9_0[5]),
        .O(out1_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    out1_carry__0_i_15
       (.I0(\pc[31]_i_4_0 ),
        .I1(regs_reg_2_1[6]),
        .I2(\daddr_reg[30] [27]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[5]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__0_i_16
       (.I0(regs_reg_2_1[5]),
        .I1(\pc[31]_i_4_0 ),
        .I2(\daddr_reg[30] [26]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[4]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__0_i_17
       (.I0(regs_reg_2_1[4]),
        .I1(\pc[31]_i_4_0 ),
        .I2(\daddr_reg[30] [25]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[3]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'hA200A2A2A2A2A2A2)) 
    out1_carry__0_i_18
       (.I0(out1_carry__0_i_23_n_0),
        .I1(regs_reg_1_2[2]),
        .I2(\daddr[4]_i_2_0 ),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(rb_rdata0[4]),
        .I5(\daddr[4]_i_2_1 ),
        .O(out1_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h111111311111F11F)) 
    out1_carry__0_i_19
       (.I0(\instr_reg[3]_0 ),
        .I1(regs_reg_1_i_120_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFFF3100)) 
    out1_carry__0_i_2
       (.I0(\instr_reg[3]_0 ),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [26]),
        .I3(out1_carry__0_i_11_n_0),
        .I4(out1_carry__0_i_12_n_0),
        .O(alu_op_a[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h04FF0404)) 
    out1_carry__0_i_20
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[7]),
        .I2(out0_carry_i_13_n_0),
        .I3(\daddr[3]_i_5_n_0 ),
        .I4(out1_carry__0_i_9_0[7]),
        .O(out1_carry__0_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF111DDD1D)) 
    out1_carry__0_i_23
       (.I0(\daddr_reg[30] [24]),
        .I1(\dstrb[0]_i_7_0 ),
        .I2(regs_reg_2_1[3]),
        .I3(\FSM_sequential_state_reg[0]_8 ),
        .I4(\daddr_reg[30] [11]),
        .I5(out1_carry__0_i_18_0),
        .O(out1_carry__0_i_23_n_0));
  LUT5 #(
    .INIT(32'hFFFF3100)) 
    out1_carry__0_i_3
       (.I0(\instr_reg[3]_0 ),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [25]),
        .I3(out1_carry__0_i_13_n_0),
        .I4(out1_carry__0_i_14_n_0),
        .O(alu_op_a[5]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__0_i_4
       (.I0(\daddr[3]_i_2_n_0 ),
        .O(alu_op_a[4]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__0_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__0_i_15_n_0),
        .I4(out1_carry__0_i_9_n_0),
        .O(\FSM_sequential_state_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry__0_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__0_i_16_n_0),
        .I4(alu_op_a[6]),
        .O(\FSM_sequential_state_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry__0_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__0_i_17_n_0),
        .I4(alu_op_a[5]),
        .O(\FSM_sequential_state_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__0_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__0_i_18_n_0),
        .I4(\daddr[3]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'h0000FFCE)) 
    out1_carry__0_i_9
       (.I0(\instr_reg[3]_0 ),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [27]),
        .I3(out1_carry__0_i_19_n_0),
        .I4(out1_carry__0_i_20_n_0),
        .O(out1_carry__0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__1_i_1
       (.I0(out1_carry__1_i_9_n_0),
        .O(alu_op_a[11]));
  LUT6 #(
    .INIT(64'hBFBFBFBFBA00BFBF)) 
    out1_carry__1_i_10
       (.I0(out1_carry__1_i_17_n_0),
        .I1(\daddr_reg[30] [30]),
        .I2(\instr_reg[3]_0 ),
        .I3(out1_carry_i_10_n_0),
        .I4(ra_rdata0[10]),
        .I5(out0_carry_i_13_n_0),
        .O(out1_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hEEEEEECEEEEE0EE0)) 
    out1_carry__1_i_11
       (.I0(\instr_reg[3]_0 ),
        .I1(regs_reg_1_i_113_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__1_i_12
       (.I0(out1_carry__1_i_18_n_0),
        .I1(\pc[31]_i_4_0 ),
        .I2(regs_reg_1_2[9]),
        .I3(\daddr[4]_i_2_0 ),
        .I4(\daddr_reg[30] [31]),
        .I5(\daddr[7]_i_2_0 ),
        .O(out1_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__1_i_13
       (.I0(out0_carry__0_i_14_n_0),
        .I1(\pc[31]_i_4_0 ),
        .I2(\daddr_reg[30] [30]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[8]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__1_i_14
       (.I0(out1_carry__1_i_19_n_0),
        .I1(\pc[31]_i_4_0 ),
        .I2(\daddr_reg[30] [29]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[7]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    out1_carry__1_i_15
       (.I0(out0_carry__0_i_15_n_0),
        .I1(\pc[31]_i_4_0 ),
        .I2(\daddr_reg[30] [28]),
        .I3(\daddr[7]_i_2_0 ),
        .I4(regs_reg_1_2[6]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000000ACAFACA0)) 
    out1_carry__1_i_16
       (.I0(\daddr_reg[30] [20]),
        .I1(\daddr_reg[30] [7]),
        .I2(out1_carry_i_15_n_0),
        .I3(regs_reg_1_i_304_n_0),
        .I4(\pc[11]_i_2_n_0 ),
        .I5(out1_carry__1_i_17_n_0),
        .O(out1_carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hAABAAAEB)) 
    out1_carry__1_i_17
       (.I0(\instr_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(out1_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out1_carry__1_i_18
       (.I0(rb_rdata0[11]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out1_carry__1_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out1_carry__1_i_19
       (.I0(rb_rdata0[9]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(out1_carry__1_i_19_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__1_i_2
       (.I0(out1_carry__1_i_10_n_0),
        .O(alu_op_a[10]));
  LUT6 #(
    .INIT(64'h44FF444F44444444)) 
    out1_carry__1_i_3
       (.I0(out1_carry_i_10_n_0),
        .I1(regs_reg_1_i_113_n_0),
        .I2(\instr_reg[3]_0 ),
        .I3(\instr_reg[0]_0 ),
        .I4(\daddr_reg[30] [29]),
        .I5(out1_carry__1_i_11_n_0),
        .O(alu_op_a[9]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__1_i_4
       (.I0(\daddr[7]_i_3_n_0 ),
        .O(alu_op_a[8]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__1_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__1_i_12_n_0),
        .I4(out1_carry__1_i_9_n_0),
        .O(\FSM_sequential_state_reg[0]_1 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__1_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__1_i_13_n_0),
        .I4(out1_carry__1_i_10_n_0),
        .O(\FSM_sequential_state_reg[0]_1 [2]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry__1_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__1_i_14_n_0),
        .I4(alu_op_a[9]),
        .O(\FSM_sequential_state_reg[0]_1 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__1_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__1_i_15_n_0),
        .I4(\daddr[7]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    out1_carry__1_i_9
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[11]),
        .I2(out0_carry_i_13_n_0),
        .I3(out1_carry__1_i_16_n_0),
        .O(out1_carry__1_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__2_i_1
       (.I0(out1_carry__2_i_9_n_0),
        .O(alu_op_a[15]));
  LUT6 #(
    .INIT(64'h0000EF00EFEFEFEF)) 
    out1_carry__2_i_10
       (.I0(out1_carry_i_10_n_0),
        .I1(out0_carry_i_13_n_0),
        .I2(ra_rdata0[14]),
        .I3(\instr_reg[0] ),
        .I4(\daddr_reg[30] [14]),
        .I5(out1_carry__2_i_16_n_0),
        .O(out1_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__2_i_11
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[15]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[13]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__2_i_12
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[14]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[12]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__2_i_13
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[13]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[11]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__2_i_14
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[12]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[10]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__2_i_15
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [15]),
        .I5(\instr_reg[0] ),
        .O(out1_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDCDDDDD0DD0)) 
    out1_carry__2_i_16
       (.I0(\daddr[11]_i_5_n_0 ),
        .I1(out1_carry__2_i_18_n_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h04)) 
    out1_carry__2_i_18
       (.I0(regs_reg_1_i_304_n_0),
        .I1(ra_rdata0[14]),
        .I2(out0_carry_i_13_n_0),
        .O(out1_carry__2_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__2_i_2
       (.I0(out1_carry__2_i_10_n_0),
        .O(alu_op_a[14]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__2_i_3
       (.I0(\daddr[12]_i_2_n_0 ),
        .O(alu_op_a[13]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__2_i_4
       (.I0(\daddr[11]_i_2_n_0 ),
        .O(alu_op_a[12]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__2_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__2_i_11_n_0),
        .I4(out1_carry__2_i_9_n_0),
        .O(\FSM_sequential_state_reg[0]_6 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__2_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__2_i_12_n_0),
        .I4(out1_carry__2_i_10_n_0),
        .O(\FSM_sequential_state_reg[0]_6 [2]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__2_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__2_i_13_n_0),
        .I4(\daddr[12]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_6 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__2_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__2_i_14_n_0),
        .I4(\daddr[11]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_6 [0]));
  LUT6 #(
    .INIT(64'hFCFCA8FCFCFC88FC)) 
    out1_carry__2_i_9
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__2_i_15_n_0),
        .I2(\daddr[11]_i_5_n_0 ),
        .I3(ra_rdata0[15]),
        .I4(out0_carry_i_13_n_0),
        .I5(regs_reg_1_i_304_n_0),
        .O(out1_carry__2_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__3_i_1
       (.I0(out1_carry__3_i_9_n_0),
        .O(alu_op_a[19]));
  LUT6 #(
    .INIT(64'hFCFCA8FCFCFC88FC)) 
    out1_carry__3_i_10
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__3_i_17_n_0),
        .I2(\daddr[11]_i_5_n_0 ),
        .I3(ra_rdata0[17]),
        .I4(out0_carry_i_13_n_0),
        .I5(regs_reg_1_i_304_n_0),
        .O(out1_carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCFCA8FCFCFC88FC)) 
    out1_carry__3_i_11
       (.I0(out1_carry_i_10_n_0),
        .I1(\daddr[17]_i_3_0 ),
        .I2(\daddr[11]_i_5_n_0 ),
        .I3(ra_rdata0[16]),
        .I4(out0_carry_i_13_n_0),
        .I5(regs_reg_1_i_304_n_0),
        .O(out1_carry__3_i_11_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__3_i_12
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[19]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[17]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__3_i_13
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[18]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[16]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__3_i_13_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__3_i_14
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[17]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[15]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__3_i_14_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__3_i_15
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[16]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[14]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__3_i_15_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__3_i_16
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [19]),
        .I5(\instr_reg[0] ),
        .O(out1_carry__3_i_16_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__3_i_17
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [17]),
        .I5(\instr_reg[0] ),
        .O(out1_carry__3_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__3_i_2
       (.I0(\daddr[17]_i_2_n_0 ),
        .O(alu_op_a[18]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__3_i_3
       (.I0(out1_carry__3_i_10_n_0),
        .O(alu_op_a[17]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__3_i_4
       (.I0(out1_carry__3_i_11_n_0),
        .O(alu_op_a[16]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__3_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__3_i_12_n_0),
        .I4(out1_carry__3_i_9_n_0),
        .O(\FSM_sequential_state_reg[0]_5 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__3_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__3_i_13_n_0),
        .I4(\daddr[17]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_5 [2]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__3_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__3_i_14_n_0),
        .I4(out1_carry__3_i_10_n_0),
        .O(\FSM_sequential_state_reg[0]_5 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__3_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__3_i_15_n_0),
        .I4(out1_carry__3_i_11_n_0),
        .O(\FSM_sequential_state_reg[0]_5 [0]));
  LUT6 #(
    .INIT(64'hFFAFFF8FCC8CCC8C)) 
    out1_carry__3_i_9
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__3_i_16_n_0),
        .I2(ra_rdata0[19]),
        .I3(out0_carry_i_13_n_0),
        .I4(regs_reg_1_i_304_n_0),
        .I5(\daddr[11]_i_5_n_0 ),
        .O(out1_carry__3_i_9_n_0));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__4_i_1
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__4_i_9_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[23]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[23]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    out1_carry__4_i_10
       (.I0(\instr_reg[3]_0 ),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [31]),
        .O(out1_carry__4_i_10_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__4_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [21]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__4_i_11_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__4_i_12
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [20]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__4_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    out1_carry__4_i_13
       (.I0(\pc[31]_i_4_0 ),
        .I1(rb_rdata0[23]),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(regs_reg_1_2[21]),
        .I4(\daddr[4]_i_2_0 ),
        .I5(\pc[31]_i_4_1 ),
        .O(out1_carry__4_i_13_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__4_i_14
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[22]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[20]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__4_i_14_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__4_i_15
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[21]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[19]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__4_i_15_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__4_i_16
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[20]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[18]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__4_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__4_i_2
       (.I0(\daddr[21]_i_2_n_0 ),
        .O(alu_op_a[22]));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__4_i_3
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__4_i_11_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[21]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[21]));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__4_i_4
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__4_i_12_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[20]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[20]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__4_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__4_i_13_n_0),
        .I4(alu_op_a[23]),
        .O(\FSM_sequential_state_reg[0]_2 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__4_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__4_i_14_n_0),
        .I4(\daddr[21]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_2 [2]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry__4_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__4_i_15_n_0),
        .I4(alu_op_a[21]),
        .O(\FSM_sequential_state_reg[0]_2 [1]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry__4_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__4_i_16_n_0),
        .I4(alu_op_a[20]),
        .O(\FSM_sequential_state_reg[0]_2 [0]));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__4_i_9
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [23]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__4_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__5_i_1
       (.I0(\daddr[26]_i_2_n_0 ),
        .O(alu_op_a[27]));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__5_i_10
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [25]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__5_i_10_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__5_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [24]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__5_i_11_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__5_i_12
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[27]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[25]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__5_i_12_n_0));
  LUT6 #(
    .INIT(64'hAABAAABAFFFFAABA)) 
    out1_carry__5_i_13
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[26]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[24]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__5_i_13_n_0));
  LUT6 #(
    .INIT(64'hAABAAABAFFFFAABA)) 
    out1_carry__5_i_14
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[25]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[23]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__5_i_14_n_0));
  LUT6 #(
    .INIT(64'hAABAAABAFFFFAABA)) 
    out1_carry__5_i_15
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[24]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[22]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__5_i_15_n_0));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__5_i_2
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__5_i_9_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[26]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[26]));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__5_i_3
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__5_i_10_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[25]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[25]));
  LUT6 #(
    .INIT(64'h3030303075773030)) 
    out1_carry__5_i_4
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__5_i_11_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[24]),
        .I5(out0_carry_i_13_n_0),
        .O(alu_op_a[24]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__5_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__5_i_12_n_0),
        .I4(\daddr[26]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_3 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__5_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__5_i_13_n_0),
        .I4(alu_op_a[26]),
        .O(\FSM_sequential_state_reg[0]_3 [2]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__5_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__5_i_14_n_0),
        .I4(alu_op_a[25]),
        .O(\FSM_sequential_state_reg[0]_3 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__5_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__5_i_15_n_0),
        .I4(alu_op_a[24]),
        .O(\FSM_sequential_state_reg[0]_3 [0]));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__5_i_9
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [26]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__5_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__6_i_1
       (.I0(out1_carry__6_i_8_n_0),
        .O(alu_op_a[30]));
  LUT6 #(
    .INIT(64'hCFCFCFCF8A88CFCF)) 
    out1_carry__6_i_10
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__6_i_17_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[28]),
        .I5(out0_carry_i_13_n_0),
        .O(out1_carry__6_i_10_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__6_i_11
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[31]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[29]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__6_i_11_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__6_i_12
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[30]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[28]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__6_i_12_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__6_i_13
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[29]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[27]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__6_i_13_n_0));
  LUT6 #(
    .INIT(64'h5545554500005545)) 
    out1_carry__6_i_14
       (.I0(\pc[31]_i_4_1 ),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .I2(rb_rdata0[28]),
        .I3(\pc[31]_i_4_0 ),
        .I4(regs_reg_1_2[26]),
        .I5(\daddr[4]_i_2_0 ),
        .O(out1_carry__6_i_14_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__6_i_15
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [30]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__6_i_15_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__6_i_16
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [29]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__6_i_16_n_0));
  LUT6 #(
    .INIT(64'h0409FFFF04090409)) 
    out1_carry__6_i_17
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\daddr_reg[30] [28]),
        .I5(\instr_reg[0]_0 ),
        .O(out1_carry__6_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__6_i_2
       (.I0(out1_carry__6_i_9_n_0),
        .O(alu_op_a[29]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry__6_i_3
       (.I0(out1_carry__6_i_10_n_0),
        .O(alu_op_a[28]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__6_i_4
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(\daddr[30]_i_5_n_0 ),
        .I4(out1_carry__6_i_11_n_0),
        .O(\FSM_sequential_state_reg[0]_4 [3]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__6_i_5
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__6_i_12_n_0),
        .I4(out1_carry__6_i_8_n_0),
        .O(\FSM_sequential_state_reg[0]_4 [2]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__6_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__6_i_13_n_0),
        .I4(out1_carry__6_i_9_n_0),
        .O(\FSM_sequential_state_reg[0]_4 [1]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry__6_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__6_i_14_n_0),
        .I4(out1_carry__6_i_10_n_0),
        .O(\FSM_sequential_state_reg[0]_4 [0]));
  LUT6 #(
    .INIT(64'hCCCC88CCFFFFA8FF)) 
    out1_carry__6_i_8
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__6_i_15_n_0),
        .I2(\instr_reg[3]_0 ),
        .I3(ra_rdata0[30]),
        .I4(out0_carry_i_13_n_0),
        .I5(out1_carry__4_i_10_n_0),
        .O(out1_carry__6_i_8_n_0));
  LUT6 #(
    .INIT(64'hCFCFCFCF8A88CFCF)) 
    out1_carry__6_i_9
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry__6_i_16_n_0),
        .I2(out1_carry__4_i_10_n_0),
        .I3(\instr_reg[3]_0 ),
        .I4(ra_rdata0[29]),
        .I5(out0_carry_i_13_n_0),
        .O(out1_carry__6_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00005700)) 
    out1_carry_i_1
       (.I0(out1_carry_i_10_n_0),
        .I1(out1_carry_i_11_n_0),
        .I2(out1_carry_i_12_n_0),
        .I3(ra_rdata0[0]),
        .I4(out0_carry_i_13_n_0),
        .I5(out1_carry_i_13_n_0),
        .O(alu_op_a[0]));
  LUT5 #(
    .INIT(32'hFFCFFFFE)) 
    out1_carry_i_10
       (.I0(\daddr_reg[30] [14]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(out1_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1021)) 
    out1_carry_i_11
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(out1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000040001808)) 
    out1_carry_i_12
       (.I0(\daddr_reg[30] [4]),
        .I1(\daddr_reg[30] [2]),
        .I2(\daddr_reg[30] [6]),
        .I3(\daddr_reg[30] [5]),
        .I4(\daddr_reg[30] [3]),
        .I5(out1_carry_i_24_n_0),
        .O(out1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    out1_carry_i_13
       (.I0(\daddr[3]_i_5_n_0 ),
        .I1(out1_carry__0_i_9_0[0]),
        .I2(out1_carry_i_25_n_0),
        .I3(\daddr_reg[30] [15]),
        .O(out1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    out1_carry_i_14
       (.I0(\daddr_reg[30] [0]),
        .I1(\daddr_reg[30] [1]),
        .I2(\daddr_reg[30] [3]),
        .I3(\daddr_reg[30] [2]),
        .I4(\daddr_reg[30] [6]),
        .I5(\daddr_reg[30] [4]),
        .O(\instr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    out1_carry_i_15
       (.I0(\daddr_reg[30] [4]),
        .I1(\daddr_reg[30] [2]),
        .I2(\daddr_reg[30] [6]),
        .I3(\daddr_reg[30] [5]),
        .I4(\daddr_reg[30] [3]),
        .I5(out1_carry_i_24_n_0),
        .O(out1_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    out1_carry_i_16
       (.I0(\daddr_reg[30] [9]),
        .I1(regs_reg_1_i_304_n_0),
        .I2(ra_rdata0[2]),
        .I3(out0_carry_i_13_n_0),
        .O(out1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hFF04FF04FFFFFF04)) 
    out1_carry_i_17
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[2]),
        .I2(out0_carry_i_13_n_0),
        .I3(out1_carry_i_26_n_0),
        .I4(out1_carry__0_i_9_0[2]),
        .I5(\daddr[3]_i_5_n_0 ),
        .O(out1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000000EFEEEFFF)) 
    out1_carry_i_18
       (.I0(out1_carry_i_11_n_0),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [21]),
        .I3(out1_carry_i_15_n_0),
        .I4(out1_carry_i_27_n_0),
        .I5(out1_carry_i_28_n_0),
        .O(out1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0040)) 
    out1_carry_i_19
       (.I0(regs_reg_1_i_224_n_0),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [12]),
        .I3(out1_carry_i_29_n_0),
        .I4(Q[1]),
        .I5(out1_carry_i_30_n_0),
        .O(\instr_reg[13] ));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry_i_2
       (.I0(\daddr[2]_i_3_n_0 ),
        .O(alu_op_a[3]));
  LUT6 #(
    .INIT(64'hA200A2A2A2A2A2A2)) 
    out1_carry_i_20
       (.I0(out1_carry_i_31_n_0),
        .I1(regs_reg_1_2[1]),
        .I2(\daddr[4]_i_2_0 ),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(rb_rdata0[3]),
        .I5(\daddr[4]_i_2_1 ),
        .O(out1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h5100515151515151)) 
    out1_carry_i_21
       (.I0(out1_carry_i_34_n_0),
        .I1(regs_reg_1_2[0]),
        .I2(\daddr[4]_i_2_0 ),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(rb_rdata0[2]),
        .I5(\daddr[4]_i_2_1 ),
        .O(out1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h5C5C5C5F5F5C5F5F)) 
    out1_carry_i_22
       (.I0(regs_reg_2_0),
        .I1(out1_carry_i_12_n_0),
        .I2(\daddr[4]_i_2_1 ),
        .I3(\dstrb[0]_i_7_0 ),
        .I4(\daddr_reg[30] [21]),
        .I5(out1_carry_i_36_n_0),
        .O(out1_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFBFB0)) 
    out1_carry_i_23
       (.I0(\shift_amt[0]_i_2_n_0 ),
        .I1(rb_rdata0[0]),
        .I2(\daddr[4]_i_2_1 ),
        .I3(\instr_reg[3]_0 ),
        .I4(\instr_reg[0]_0 ),
        .I5(out1_carry_i_37_n_0),
        .O(out1_carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h7)) 
    out1_carry_i_24
       (.I0(\daddr_reg[30] [0]),
        .I1(\daddr_reg[30] [1]),
        .O(out1_carry_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    out1_carry_i_25
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\daddr_reg[30] [14]),
        .O(out1_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    out1_carry_i_26
       (.I0(\daddr_reg[30] [17]),
        .I1(\daddr_reg[30] [14]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(out1_carry_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    out1_carry_i_27
       (.I0(\daddr_reg[30] [8]),
        .I1(regs_reg_1_i_304_n_0),
        .I2(ra_rdata0[1]),
        .I3(out0_carry_i_13_n_0),
        .O(out1_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    out1_carry_i_28
       (.I0(out1_carry_i_10_n_0),
        .I1(ra_rdata0[1]),
        .I2(out0_carry_i_13_n_0),
        .I3(out1_carry__0_i_9_0[1]),
        .I4(\daddr[3]_i_5_n_0 ),
        .I5(out1_carry_i_38_n_0),
        .O(out1_carry_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    out1_carry_i_29
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(out1_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    out1_carry_i_3
       (.I0(out1_carry_i_11_n_0),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [22]),
        .I3(out1_carry_i_15_n_0),
        .I4(out1_carry_i_16_n_0),
        .I5(out1_carry_i_17_n_0),
        .O(alu_op_a[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF070000)) 
    out1_carry_i_30
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [12]),
        .I2(regs_reg_1_i_224_n_0),
        .I3(out1_carry_i_39_n_0),
        .I4(\FSM_sequential_state_reg[0]_7 ),
        .I5(out1_carry_i_40_n_0),
        .O(out1_carry_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF111DDD1D)) 
    out1_carry_i_31
       (.I0(\daddr_reg[30] [23]),
        .I1(\dstrb[0]_i_7_0 ),
        .I2(regs_reg_2_1[2]),
        .I3(\FSM_sequential_state_reg[0]_8 ),
        .I4(\daddr_reg[30] [10]),
        .I5(out1_carry__0_i_18_0),
        .O(out1_carry_i_31_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    out1_carry_i_34
       (.I0(\daddr_reg[30] [22]),
        .I1(\dstrb[0]_i_7_0 ),
        .I2(regs_reg_2_1[1]),
        .I3(\FSM_sequential_state_reg[0]_8 ),
        .I4(\daddr_reg[30] [9]),
        .I5(out1_carry__0_i_18_0),
        .O(out1_carry_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    out1_carry_i_36
       (.I0(\daddr_reg[30] [8]),
        .I1(\FSM_sequential_state_reg[0]_8 ),
        .I2(rb_rdata0[1]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .O(out1_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h747700007477FFFF)) 
    out1_carry_i_37
       (.I0(\daddr_reg[30] [7]),
        .I1(\FSM_sequential_state_reg[0]_8 ),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(rb_rdata0[0]),
        .I4(\dstrb[0]_i_7_0 ),
        .I5(\daddr_reg[30] [20]),
        .O(out1_carry_i_37_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    out1_carry_i_38
       (.I0(\daddr_reg[30] [16]),
        .I1(\daddr_reg[30] [14]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(out1_carry_i_38_n_0));
  LUT6 #(
    .INIT(64'h0F00F0F800000000)) 
    out1_carry_i_39
       (.I0(\daddr_reg[30] [5]),
        .I1(\daddr_reg[30] [30]),
        .I2(\daddr_reg[30] [12]),
        .I3(\daddr_reg[30] [14]),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_215_n_0),
        .O(out1_carry_i_39_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry_i_4
       (.I0(out1_carry_i_18_n_0),
        .O(alu_op_a[1]));
  LUT6 #(
    .INIT(64'hFFFFDF000F000F00)) 
    out1_carry_i_40
       (.I0(\daddr_reg[30] [14]),
        .I1(\daddr_reg[30] [30]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(out1_carry_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    out1_carry_i_45
       (.I0(\daddr_reg[30] [5]),
        .I1(\daddr_reg[30] [6]),
        .I2(\daddr_reg[30] [2]),
        .I3(\daddr_reg[30] [4]),
        .O(\instr_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry_i_6
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry_i_20_n_0),
        .I4(\daddr[2]_i_3_n_0 ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    out1_carry_i_7
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry_i_21_n_0),
        .I4(alu_op_a[2]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    out1_carry_i_8
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry_i_22_n_0),
        .I4(out1_carry_i_18_n_0),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    out1_carry_i_9
       (.I0(out1_carry_i_23_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[10]_i_1 
       (.I0(\pc[10]_i_2_n_0 ),
        .I1(pc_plus4[7]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[10]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [8]));
  LUT5 #(
    .INIT(32'h0B0F090D)) 
    \pc[10]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[10]_i_4_n_0 ),
        .I3(data0[10]),
        .I4(out1_carry__1_i_9_n_0),
        .O(\pc[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[10]_i_3 
       (.I0(ra_rdata0[10]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AA58DDD)) 
    \pc[10]_i_4 
       (.I0(\FSM_sequential_state_reg[3] ),
        .I1(alu_op_a[9]),
        .I2(out1_carry__1_i_10_n_0),
        .I3(out1_carry__1_i_13_n_0),
        .I4(\instr_reg[13] ),
        .I5(\daddr[30]_i_9_n_0 ),
        .O(\pc[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[11]_i_1 
       (.I0(pc_plus4[8]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[9]),
        .I4(Q[1]),
        .I5(\pc[11]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [9]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[11]_i_2 
       (.I0(ra_rdata0[11]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[12]_i_1 
       (.I0(pc_plus4[9]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[10]),
        .I4(Q[1]),
        .I5(\pc[12]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[12]_i_2 
       (.I0(ra_rdata0[12]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0550000CF55FFFF)) 
    \pc[13]_i_1 
       (.I0(regs_reg_1_i_96_n_0),
        .I1(pc_plus4[10]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_97_n_0),
        .O(\FSM_sequential_state_reg[1] [11]));
  LUT6 #(
    .INIT(64'hC0550000CF55FFFF)) 
    \pc[14]_i_1 
       (.I0(regs_reg_1_i_92_n_0),
        .I1(pc_plus4[11]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_93_n_0),
        .O(\FSM_sequential_state_reg[1] [12]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[15]_i_1 
       (.I0(regs_reg_1_i_86_n_0),
        .I1(pc_plus4[12]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_87_n_0),
        .O(\FSM_sequential_state_reg[1] [13]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[16]_i_1 
       (.I0(\pc[16]_i_2_n_0 ),
        .I1(pc_plus4[13]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[16]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    \pc[16]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[16]_i_4_n_0 ),
        .I3(data0[16]),
        .I4(out1_carry__3_i_10_n_0),
        .O(\pc[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[16]_i_3 
       (.I0(ra_rdata0[16]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBBFFEEAEAAEFEEA)) 
    \pc[16]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\instr_reg[13] ),
        .I2(out1_carry__3_i_11_n_0),
        .I3(out1_carry__3_i_15_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(out1_carry__2_i_9_n_0),
        .O(\pc[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[17]_i_1 
       (.I0(pc_plus4[14]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[15]),
        .I4(Q[1]),
        .I5(\pc[17]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[17]_i_2 
       (.I0(ra_rdata0[17]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[18]_i_1 
       (.I0(\pc[18]_i_2_n_0 ),
        .I1(pc_plus4[15]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[18]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [16]));
  LUT5 #(
    .INIT(32'hF2F6F0F4)) 
    \pc[18]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[18]_i_4_n_0 ),
        .I3(data0[18]),
        .I4(out1_carry__3_i_9_n_0),
        .O(\pc[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[18]_i_3 
       (.I0(ra_rdata0[18]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4141545455004040)) 
    \pc[18]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__3_i_13_n_0),
        .I2(\daddr[17]_i_2_n_0 ),
        .I3(out1_carry__3_i_10_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(\pc[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[19]_i_1 
       (.I0(regs_reg_1_i_195_n_0),
        .I1(pc_plus4[16]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_196_n_0),
        .O(\FSM_sequential_state_reg[1] [17]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[20]_i_1 
       (.I0(\pc[20]_i_2_n_0 ),
        .I1(pc_plus4[17]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[20]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [18]));
  LUT5 #(
    .INIT(32'h90B0D0F0)) 
    \pc[20]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[20]_i_4_n_0 ),
        .I3(alu_op_a[21]),
        .I4(data0[20]),
        .O(\pc[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[20]_i_3 
       (.I0(ra_rdata0[20]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEFFBEBAEAFBBA)) 
    \pc[20]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\instr_reg[13] ),
        .I3(out1_carry__4_i_16_n_0),
        .I4(alu_op_a[20]),
        .I5(out1_carry__3_i_9_n_0),
        .O(\pc[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[21]_i_1 
       (.I0(pc_plus4[18]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[19]),
        .I4(Q[1]),
        .I5(\pc[21]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [19]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[21]_i_2 
       (.I0(ra_rdata0[21]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[22]_i_1 
       (.I0(\pc[22]_i_2_n_0 ),
        .I1(pc_plus4[19]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[22]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [20]));
  LUT5 #(
    .INIT(32'h90D0B0F0)) 
    \pc[22]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[22]_i_4_n_0 ),
        .I3(data0[22]),
        .I4(alu_op_a[23]),
        .O(\pc[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[22]_i_3 
       (.I0(ra_rdata0[22]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBBBEEBFAEAEAE)) 
    \pc[22]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(alu_op_a[21]),
        .I3(\daddr[21]_i_2_n_0 ),
        .I4(out1_carry__4_i_14_n_0),
        .I5(\instr_reg[13] ),
        .O(\pc[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[23]_i_1 
       (.I0(pc_plus4[20]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[21]),
        .I4(Q[1]),
        .I5(\pc[23]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [21]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[23]_i_2 
       (.I0(ra_rdata0[23]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[24]_i_1 
       (.I0(pc_plus4[21]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[22]),
        .I4(Q[1]),
        .I5(\pc[24]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [22]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[24]_i_2 
       (.I0(ra_rdata0[24]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[25]_i_1 
       (.I0(pc_plus4[22]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[23]),
        .I4(Q[1]),
        .I5(\pc[25]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [23]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[25]_i_2 
       (.I0(ra_rdata0[25]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[26]_i_1 
       (.I0(pc_plus4[23]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[24]),
        .I4(Q[1]),
        .I5(\pc[26]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [24]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[26]_i_2 
       (.I0(ra_rdata0[26]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[27]_i_1 
       (.I0(\pc[27]_i_2_n_0 ),
        .I1(pc_plus4[24]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[27]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [25]));
  LUT5 #(
    .INIT(32'h0B0F090D)) 
    \pc[27]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[27]_i_4_n_0 ),
        .I3(data0[27]),
        .I4(out1_carry__6_i_10_n_0),
        .O(\pc[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[27]_i_3 
       (.I0(ra_rdata0[27]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0044441140515151)) 
    \pc[27]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(alu_op_a[26]),
        .I3(out1_carry__5_i_12_n_0),
        .I4(\daddr[26]_i_2_n_0 ),
        .I5(\instr_reg[13] ),
        .O(\pc[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[28]_i_1 
       (.I0(\pc[28]_i_2_n_0 ),
        .I1(pc_plus4[25]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[28]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1] [26]));
  LUT5 #(
    .INIT(32'hF2F6F0F4)) 
    \pc[28]_i_2 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\pc[28]_i_4_n_0 ),
        .I3(data0[28]),
        .I4(out1_carry__6_i_9_n_0),
        .O(\pc[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[28]_i_3 
       (.I0(ra_rdata0[28]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4154415455400040)) 
    \pc[28]_i_4 
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__6_i_10_n_0),
        .I2(out1_carry__6_i_14_n_0),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(\daddr[26]_i_2_n_0 ),
        .I5(\instr_reg[13] ),
        .O(\pc[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[29]_i_1 
       (.I0(regs_reg_1_i_155_n_0),
        .I1(pc_plus4[26]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_156_n_0),
        .O(\FSM_sequential_state_reg[1] [27]));
  LUT6 #(
    .INIT(64'h7F70FFFF4F400000)) 
    \pc[2]_i_1 
       (.I0(regs_reg_1_2[0]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[0]),
        .I4(Q[1]),
        .I5(\pc[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[2]_i_2 
       (.I0(ra_rdata0[2]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[30]_i_1 
       (.I0(pc_plus4[27]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[28]),
        .I4(Q[1]),
        .I5(regs_reg_1_i_152_n_0),
        .O(\FSM_sequential_state_reg[1] [28]));
  LUT6 #(
    .INIT(64'hCCCFA0000000A000)) 
    \pc[31]_i_1 
       (.I0(Q[0]),
        .I1(\pc_reg[2] ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\pc[31]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[31]_i_10 
       (.I0(rb_rdata0[31]),
        .I1(\shift_amt[0]_i_2_n_0 ),
        .O(\pc[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[31]_i_2 
       (.I0(\pc[31]_i_4_n_0 ),
        .I1(pc_plus4[28]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(\pc[31]_i_7_n_0 ),
        .O(\FSM_sequential_state_reg[1] [29]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \pc[31]_i_3 
       (.I0(Q[2]),
        .I1(\instr_reg[3] ),
        .I2(Q[0]),
        .I3(regs_reg_1_i_52_n_0),
        .O(\pc[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFEF8)) 
    \pc[31]_i_4 
       (.I0(\daddr[30]_i_5_n_0 ),
        .I1(\instr_reg[13] ),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(out1_carry__6_i_11_n_0),
        .I4(\FSM_sequential_state_reg[0] ),
        .I5(\pc[31]_i_8_n_0 ),
        .O(\pc[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc[31]_i_5 
       (.I0(regs_reg_1_i_52_n_0),
        .I1(regs_reg_1_i_214_n_0),
        .O(\pc[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1455)) 
    \pc[31]_i_6 
       (.I0(regs_reg_1_i_231_n_0),
        .I1(\daddr_reg[30] [12]),
        .I2(regs_reg_1_i_274_n_0),
        .I3(regs_reg_1_i_304_n_0),
        .O(\pc[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[31]_i_7 
       (.I0(ra_rdata0[31]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1D001D00FF000000)) 
    \pc[31]_i_8 
       (.I0(out1_carry__6_i_8_n_0),
        .I1(\instr_reg[13] ),
        .I2(\pc[31]_i_9_n_0 ),
        .I3(\FSM_sequential_state_reg[3] ),
        .I4(data0[31]),
        .I5(\FSM_sequential_state_reg[0] ),
        .O(\pc[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0BBFFFF4F44)) 
    \pc[31]_i_9 
       (.I0(\daddr[4]_i_2_0 ),
        .I1(regs_reg_1_2[29]),
        .I2(\pc[31]_i_4_0 ),
        .I3(\pc[31]_i_10_n_0 ),
        .I4(\pc[31]_i_4_1 ),
        .I5(\daddr[30]_i_5_n_0 ),
        .O(\pc[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[3]_i_1 
       (.I0(pc_plus4[0]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[1]),
        .I4(Q[1]),
        .I5(regs_reg_1_i_134_n_0),
        .O(\FSM_sequential_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[4]_i_1 
       (.I0(pc_plus4[1]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[2]),
        .I4(Q[1]),
        .I5(\pc[4]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[4]_i_2 
       (.I0(ra_rdata0[4]),
        .I1(out0_carry_i_13_n_0),
        .O(\pc[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[5]_i_1 
       (.I0(pc_plus4[2]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[3]),
        .I4(Q[1]),
        .I5(regs_reg_1_i_127_n_0),
        .O(\FSM_sequential_state_reg[1] [3]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[6]_i_1 
       (.I0(regs_reg_1_i_123_n_0),
        .I1(pc_plus4[3]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_124_n_0),
        .O(\FSM_sequential_state_reg[1] [4]));
  LUT6 #(
    .INIT(64'hBFB0FFFF8F800000)) 
    \pc[7]_i_1 
       (.I0(pc_plus4[4]),
        .I1(\pc[31]_i_5_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(alu_out[5]),
        .I4(Q[1]),
        .I5(regs_reg_1_i_120_n_0),
        .O(\FSM_sequential_state_reg[1] [5]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[8]_i_1 
       (.I0(regs_reg_1_i_116_n_0),
        .I1(pc_plus4[5]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_117_n_0),
        .O(\FSM_sequential_state_reg[1] [6]));
  LUT6 #(
    .INIT(64'hCF55FFFFC0550000)) 
    \pc[9]_i_1 
       (.I0(regs_reg_1_i_112_n_0),
        .I1(pc_plus4[6]),
        .I2(\pc[31]_i_5_n_0 ),
        .I3(\pc[31]_i_6_n_0 ),
        .I4(Q[1]),
        .I5(regs_reg_1_i_113_n_0),
        .O(\FSM_sequential_state_reg[1] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[0]),
        .Q(ra_raddr_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[1]),
        .Q(ra_raddr_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[2]),
        .Q(ra_raddr_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[3]),
        .Q(ra_raddr_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[4]),
        .Q(ra_raddr_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra_raddr_r_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(ra_raddr[5]),
        .Q(ra_raddr_r[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    ram_0_reg_i_3
       (.I0(regs_reg_1_i_333_0[6]),
        .I1(regs_reg_1_i_333_0[9]),
        .I2(regs_reg_1_i_333_0[22]),
        .I3(regs_reg_1_i_333_0[23]),
        .O(\daddr_reg[12] ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ram_0_reg_i_4
       (.I0(ram_0_reg_i_5_n_0),
        .I1(regs_reg_1_i_333_0[12]),
        .I2(regs_reg_1_i_333_0[8]),
        .I3(regs_reg_1_i_333_0[17]),
        .I4(regs_reg_1_i_333_0[19]),
        .I5(ram_0_reg_i_6_n_0),
        .O(\daddr_reg[18] ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    ram_0_reg_i_5
       (.I0(regs_reg_1_i_333_0[25]),
        .I1(regs_reg_1_i_333_0[24]),
        .I2(regs_reg_1_i_333_0[7]),
        .I3(regs_reg_1_i_333_0[11]),
        .O(ram_0_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    ram_0_reg_i_6
       (.I0(\daddr_reg[12] ),
        .I1(ram_0_reg_i_7_n_0),
        .I2(regs_reg_1_i_333_0[14]),
        .I3(regs_reg_1_i_333_0[21]),
        .I4(regs_reg_1_i_333_0[13]),
        .I5(regs_reg_1_i_333_0[20]),
        .O(ram_0_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ram_0_reg_i_7
       (.I0(regs_reg_1_i_333_0[15]),
        .I1(regs_reg_1_i_333_0[18]),
        .I2(regs_reg_1_i_333_0[10]),
        .I3(regs_reg_1_i_333_0[16]),
        .O(ram_0_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ram_reg_0_7_0_5_i_3
       (.I0(regs_reg_1_i_333_0[4]),
        .I1(regs_reg_1_i_333_0[3]),
        .I2(regs_reg_1_i_333_0[5]),
        .I3(regs_reg_1_i_333_0[2]),
        .O(\daddr_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[0]),
        .Q(rb_raddr_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[1]),
        .Q(rb_raddr_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[2]),
        .Q(rb_raddr_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[3]),
        .Q(rb_raddr_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[4]),
        .Q(rb_raddr_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rb_raddr_r_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(rb_raddr[5]),
        .Q(rb_raddr_r[5]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "regs" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    regs_reg_1
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ra_raddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,rd_waddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DIADI(rd_wdata[15:0]),
        .DIBDI(rd_wdata[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(ra_rdata0[15:0]),
        .DOBDO(ra_rdata0[31:16]),
        .DOPADOP(NLW_regs_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_regs_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({rd_wen,rd_wen,rd_wen,rd_wen}));
  LUT6 #(
    .INIT(64'hFEEEEEEEFEFEFEFE)) 
    regs_reg_1_i_1
       (.I0(regs_reg_1_i_46_n_0),
        .I1(regs_reg_1_i_47_n_0),
        .I2(Q[1]),
        .I3(\instr_reg[13]_0 ),
        .I4(regs_reg_1_i_49_n_0),
        .I5(regs_reg_1_i_50_n_0),
        .O(ra_raddr[5]));
  LUT4 #(
    .INIT(16'hFFF4)) 
    regs_reg_1_i_10
       (.I0(regs_reg_1_i_79_n_0),
        .I1(regs_reg_1_i_52_n_0),
        .I2(regs_reg_1_i_80_n_0),
        .I3(regs_reg_1_i_74_n_0),
        .O(rd_waddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_100
       (.I0(ra_rdata0[12]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[10]),
        .O(regs_reg_1_i_100_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_101
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_241_n_0),
        .I2(pc_plus4[9]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_101_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_102
       (.I0(regs_reg_1_2[10]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_102_n_0));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    regs_reg_1_i_103
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_238_n_0),
        .I2(regs_reg_1_i_242_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(\daddr_reg[30] [12]),
        .I5(regs_reg_1_i_243_n_0),
        .O(regs_reg_1_i_103_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_104
       (.I0(ra_rdata0[11]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[9]),
        .O(regs_reg_1_i_104_n_0));
  LUT5 #(
    .INIT(32'h0F775555)) 
    regs_reg_1_i_105
       (.I0(alu_out[9]),
        .I1(regs_reg_1_i_230_n_0),
        .I2(pc_plus4[8]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_105_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_106
       (.I0(regs_reg_1_2[9]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_106_n_0));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    regs_reg_1_i_107
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_238_n_0),
        .I2(regs_reg_1_i_244_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(\daddr_reg[30] [12]),
        .I5(regs_reg_1_i_245_n_0),
        .O(regs_reg_1_i_107_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_108
       (.I0(ra_rdata0[10]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[10]_i_2_n_0 ),
        .O(regs_reg_1_i_108_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_109
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[10]_i_2_n_0 ),
        .I2(pc_plus4[7]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_109_n_0));
  LUT6 #(
    .INIT(64'hAAEFAAAAAAEFEFEF)) 
    regs_reg_1_i_11
       (.I0(regs_reg_1_i_81_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(regs_reg_1_i_82_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_69_n_0),
        .O(rd_waddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_110
       (.I0(regs_reg_1_2[8]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_110_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    regs_reg_1_i_111
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_238_n_0),
        .I2(regs_reg_1_i_246_n_0),
        .O(regs_reg_1_i_111_n_0));
  LUT5 #(
    .INIT(32'h0B0F090D)) 
    regs_reg_1_i_112
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_247_n_0),
        .I3(data0[9]),
        .I4(out1_carry__1_i_10_n_0),
        .O(regs_reg_1_i_112_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_113
       (.I0(ra_rdata0[9]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_113_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_114
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_112_n_0),
        .I2(pc_plus4[6]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_114_n_0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    regs_reg_1_i_115
       (.I0(regs_reg_1_i_248_n_0),
        .I1(regs_reg_1_i_238_n_0),
        .I2(\daddr_reg[30] [14]),
        .I3(regs_reg_1_i_234_n_0),
        .I4(regs_reg_1_2[7]),
        .I5(regs_reg_1_i_235_n_0),
        .O(regs_reg_1_i_115_n_0));
  LUT5 #(
    .INIT(32'hF0F4F2F6)) 
    regs_reg_1_i_116
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_249_n_0),
        .I3(data0[8]),
        .I4(alu_op_a[9]),
        .O(regs_reg_1_i_116_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_117
       (.I0(ra_rdata0[8]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_117_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_118
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_116_n_0),
        .I2(pc_plus4[5]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_118_n_0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    regs_reg_1_i_119
       (.I0(regs_reg_1_i_250_n_0),
        .I1(regs_reg_1_i_238_n_0),
        .I2(\daddr_reg[30] [14]),
        .I3(regs_reg_1_i_234_n_0),
        .I4(regs_reg_1_2[6]),
        .I5(regs_reg_1_i_235_n_0),
        .O(regs_reg_1_i_119_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44000404)) 
    regs_reg_1_i_12
       (.I0(regs_reg_1_i_83_n_0),
        .I1(regs_reg_1_i_72_n_0),
        .I2(regs_reg_1_i_69_n_0),
        .I3(regs_reg_1_i_84_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_85_n_0),
        .O(rd_waddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_120
       (.I0(ra_rdata0[7]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_120_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF54545400)) 
    regs_reg_1_i_121
       (.I0(regs_reg_1_i_234_n_0),
        .I1(regs_reg_1_i_251_n_0),
        .I2(\FSM_sequential_state_reg[3]_0 [7]),
        .I3(regs_reg_1_i_238_n_0),
        .I4(regs_reg_1_i_252_n_0),
        .I5(regs_reg_1_i_253_n_0),
        .O(regs_reg_1_i_121_n_0));
  LUT5 #(
    .INIT(32'hB8FF8800)) 
    regs_reg_1_i_122
       (.I0(pc_plus4[4]),
        .I1(regs_reg_1_i_231_n_0),
        .I2(regs_reg_1_i_230_n_0),
        .I3(regs_reg_1_i_52_n_0),
        .I4(alu_out[5]),
        .O(regs_reg_1_i_122_n_0));
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_123
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_254_n_0),
        .I3(data0[6]),
        .I4(out1_carry__0_i_9_n_0),
        .O(regs_reg_1_i_123_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_124
       (.I0(ra_rdata0[6]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_124_n_0));
  LUT6 #(
    .INIT(64'h00FFE0E00000E0E0)) 
    regs_reg_1_i_125
       (.I0(regs_reg_1_i_251_n_0),
        .I1(\FSM_sequential_state_reg[3]_0 [6]),
        .I2(regs_reg_1_i_255_n_0),
        .I3(regs_reg_1_i_256_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .I5(regs_reg_1_2[4]),
        .O(regs_reg_1_i_125_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h8080BFB3)) 
    regs_reg_1_i_126
       (.I0(pc_plus4[3]),
        .I1(regs_reg_1_i_52_n_0),
        .I2(regs_reg_1_i_231_n_0),
        .I3(regs_reg_1_i_230_n_0),
        .I4(regs_reg_1_i_123_n_0),
        .O(regs_reg_1_i_126_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_127
       (.I0(ra_rdata0[5]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_127_n_0));
  LUT6 #(
    .INIT(64'h5510FFFF55105510)) 
    regs_reg_1_i_128
       (.I0(regs_reg_1_i_257_n_0),
        .I1(regs_reg_1_i_258_n_0),
        .I2(\dstrb[0]_i_3_n_0 ),
        .I3(regs_reg_1_i_259_n_0),
        .I4(regs_reg_1_i_260_n_0),
        .I5(regs_reg_1_2[3]),
        .O(regs_reg_1_i_128_n_0));
  LUT5 #(
    .INIT(32'hF088CCCC)) 
    regs_reg_1_i_129
       (.I0(regs_reg_1_i_230_n_0),
        .I1(alu_out[3]),
        .I2(pc_plus4[2]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_129_n_0));
  LUT6 #(
    .INIT(64'hCFCF5F5FC0C0505F)) 
    regs_reg_1_i_13
       (.I0(regs_reg_1_i_86_n_0),
        .I1(regs_reg_1_i_87_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_89_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_91_n_0),
        .O(rd_wdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_130
       (.I0(ra_rdata0[4]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[2]),
        .O(regs_reg_1_i_130_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h02000080)) 
    regs_reg_1_i_131
       (.I0(regs_reg_1_2[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_131_n_0));
  LUT6 #(
    .INIT(64'hF1FFF1FFF1F1F1FF)) 
    regs_reg_1_i_132
       (.I0(\FSM_sequential_state_reg[3]_0 [4]),
        .I1(regs_reg_1_i_251_n_0),
        .I2(regs_reg_1_i_234_n_0),
        .I3(regs_reg_1_i_261_n_0),
        .I4(\dstrb[0]_i_3_n_0 ),
        .I5(regs_reg_1_i_243_n_0),
        .O(regs_reg_1_i_132_n_0));
  LUT5 #(
    .INIT(32'hF088CCCC)) 
    regs_reg_1_i_133
       (.I0(regs_reg_1_i_230_n_0),
        .I1(alu_out[2]),
        .I2(pc_plus4[1]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_133_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_134
       (.I0(ra_rdata0[3]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_134_n_0));
  LUT6 #(
    .INIT(64'hFFFFEE0E0000EE0E)) 
    regs_reg_1_i_135
       (.I0(regs_reg_1_i_251_n_0),
        .I1(\FSM_sequential_state_reg[3]_0 [3]),
        .I2(regs_reg_1_i_262_n_0),
        .I3(regs_reg_1_i_263_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .I5(regs_reg_1_i_264_n_0),
        .O(regs_reg_1_i_135_n_0));
  LUT5 #(
    .INIT(32'hF088CCCC)) 
    regs_reg_1_i_136
       (.I0(regs_reg_1_i_230_n_0),
        .I1(alu_out[1]),
        .I2(pc_plus4[0]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_136_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_137
       (.I0(ra_rdata0[2]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[0]),
        .O(regs_reg_1_i_137_n_0));
  LUT5 #(
    .INIT(32'hFFFF5400)) 
    regs_reg_1_i_138
       (.I0(regs_reg_1_i_234_n_0),
        .I1(regs_reg_1_i_251_n_0),
        .I2(\FSM_sequential_state_reg[3]_0 [2]),
        .I3(regs_reg_1_i_265_n_0),
        .I4(regs_reg_1_i_266_n_0),
        .O(regs_reg_1_i_138_n_0));
  LUT4 #(
    .INIT(16'hBAAA)) 
    regs_reg_1_i_139
       (.I0(regs_reg_1_i_90_n_0),
        .I1(regs_reg_1_2[0]),
        .I2(regs_reg_1_i_231_n_0),
        .I3(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_139_n_0));
  LUT6 #(
    .INIT(64'h3F3F5F5F3030505F)) 
    regs_reg_1_i_14
       (.I0(regs_reg_1_i_92_n_0),
        .I1(regs_reg_1_i_93_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_94_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_95_n_0),
        .O(rd_wdata[14]));
  LUT5 #(
    .INIT(32'h88A88888)) 
    regs_reg_1_i_140
       (.I0(regs_reg_1_i_52_n_0),
        .I1(regs_reg_1_i_231_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(\daddr_reg[30] [14]),
        .I4(regs_reg_1_i_215_n_0),
        .O(regs_reg_1_i_140_n_0));
  LUT5 #(
    .INIT(32'hBE8EB282)) 
    regs_reg_1_i_141
       (.I0(regs_reg_1_i_267_n_0),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(data0[1]),
        .I4(alu_op_a[2]),
        .O(regs_reg_1_i_141_n_0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_142
       (.I0(ra_rdata0[1]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_142_n_0));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    regs_reg_1_i_143
       (.I0(regs_reg_1_i_268_n_0),
        .I1(regs_reg_1_i_234_n_0),
        .I2(regs_reg_1_i_251_n_0),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(regs_reg_1_i_269_n_0),
        .I5(regs_reg_1_i_270_n_0),
        .O(regs_reg_1_i_143_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_144
       (.I0(ra_rdata0[0]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_144_n_0));
  LUT6 #(
    .INIT(64'h424043427FFFFF7F)) 
    regs_reg_1_i_145
       (.I0(\instr_reg[13] ),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(out1_carry_i_23_n_0),
        .I4(alu_op_a[0]),
        .I5(regs_reg_1_i_271_n_0),
        .O(regs_reg_1_i_145_n_0));
  LUT6 #(
    .INIT(64'h3033BBBB30338888)) 
    regs_reg_1_i_146
       (.I0(regs_reg_1_i_69_n_0),
        .I1(regs_reg_1_i_234_n_0),
        .I2(regs_reg_1_i_272_n_0),
        .I3(regs_reg_1_i_273_n_0),
        .I4(regs_reg_1_i_251_n_0),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(regs_reg_1_i_146_n_0));
  LUT6 #(
    .INIT(64'h010001000DFF0D00)) 
    regs_reg_1_i_147
       (.I0(regs_reg_1_i_274_n_0),
        .I1(regs_reg_1_i_230_n_0),
        .I2(regs_reg_1_i_231_n_0),
        .I3(regs_reg_1_i_52_n_0),
        .I4(regs_reg_1_i_275_n_0),
        .I5(regs_reg_1_i_145_n_0),
        .O(regs_reg_1_i_147_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_148
       (.I0(ra_rdata0[31]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[31]_i_4_n_0 ),
        .O(regs_reg_1_i_148_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_149
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[31]_i_4_n_0 ),
        .I2(pc_plus4[28]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_149_n_0));
  LUT6 #(
    .INIT(64'h3F3F5F5F3030505F)) 
    regs_reg_1_i_15
       (.I0(regs_reg_1_i_96_n_0),
        .I1(regs_reg_1_i_97_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_98_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_99_n_0),
        .O(rd_wdata[13]));
  LUT5 #(
    .INIT(32'hFCDFFFFF)) 
    regs_reg_1_i_150
       (.I0(regs_reg_1_2[29]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(regs_reg_1_i_150_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_151
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_276_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_151_n_0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_152
       (.I0(ra_rdata0[30]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_152_n_0));
  LUT5 #(
    .INIT(32'h0F775555)) 
    regs_reg_1_i_153
       (.I0(alu_out[28]),
        .I1(regs_reg_1_i_230_n_0),
        .I2(pc_plus4[27]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_153_n_0));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    regs_reg_1_i_154
       (.I0(regs_reg_1_i_234_n_0),
        .I1(regs_reg_1_i_277_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_233_n_0),
        .I4(\daddr_reg[30] [14]),
        .I5(regs_reg_1_i_278_n_0),
        .O(regs_reg_1_i_154_n_0));
  LUT5 #(
    .INIT(32'h0B0F090D)) 
    regs_reg_1_i_155
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_279_n_0),
        .I3(data0[29]),
        .I4(out1_carry__6_i_8_n_0),
        .O(regs_reg_1_i_155_n_0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_156
       (.I0(ra_rdata0[29]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_156_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_157
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_155_n_0),
        .I2(pc_plus4[26]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_157_n_0));
  LUT6 #(
    .INIT(64'h00000000BABAFFBA)) 
    regs_reg_1_i_158
       (.I0(regs_reg_1_i_234_n_0),
        .I1(regs_reg_1_i_280_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_233_n_0),
        .I4(\daddr_reg[30] [14]),
        .I5(regs_reg_1_i_281_n_0),
        .O(regs_reg_1_i_158_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_159
       (.I0(ra_rdata0[28]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[28]_i_2_n_0 ),
        .O(regs_reg_1_i_159_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_16
       (.I0(regs_reg_1_i_100_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_101_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_102_n_0),
        .I5(regs_reg_1_i_103_n_0),
        .O(rd_wdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_160
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[28]_i_2_n_0 ),
        .I2(pc_plus4[25]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_160_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_161
       (.I0(regs_reg_1_2[26]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_161_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_162
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_282_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_163
       (.I0(ra_rdata0[27]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[27]_i_2_n_0 ),
        .O(regs_reg_1_i_163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_164
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[27]_i_2_n_0 ),
        .I2(pc_plus4[24]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_164_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_165
       (.I0(regs_reg_1_2[25]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_165_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_166
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_283_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_166_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_167
       (.I0(ra_rdata0[26]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[24]),
        .O(regs_reg_1_i_167_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_168
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_284_n_0),
        .I2(pc_plus4[23]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_168_n_0));
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_169
       (.I0(regs_reg_1_2[24]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_169_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_17
       (.I0(regs_reg_1_i_104_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_105_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_106_n_0),
        .I5(regs_reg_1_i_107_n_0),
        .O(rd_wdata[11]));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    regs_reg_1_i_170
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(regs_reg_1_i_285_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_170_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_171
       (.I0(ra_rdata0[25]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[23]),
        .O(regs_reg_1_i_171_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_172
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_286_n_0),
        .I2(pc_plus4[22]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_172_n_0));
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_173
       (.I0(regs_reg_1_2[23]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_173_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_174
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_287_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_174_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_175
       (.I0(ra_rdata0[24]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[22]),
        .O(regs_reg_1_i_175_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_176
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_288_n_0),
        .I2(pc_plus4[21]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_176_n_0));
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_177
       (.I0(regs_reg_1_2[22]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_177_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_178
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_289_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_178_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_179
       (.I0(ra_rdata0[23]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[21]),
        .O(regs_reg_1_i_179_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_18
       (.I0(regs_reg_1_i_108_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_109_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_110_n_0),
        .I5(regs_reg_1_i_111_n_0),
        .O(rd_wdata[10]));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_180
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_290_n_0),
        .I2(pc_plus4[20]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_180_n_0));
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_181
       (.I0(regs_reg_1_2[21]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_181_n_0));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    regs_reg_1_i_182
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(regs_reg_1_i_291_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_182_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_183
       (.I0(ra_rdata0[22]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[22]_i_2_n_0 ),
        .O(regs_reg_1_i_183_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_184
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[22]_i_2_n_0 ),
        .I2(pc_plus4[19]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_184_n_0));
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_185
       (.I0(regs_reg_1_2[20]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_185_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_186
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_292_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_186_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_187
       (.I0(ra_rdata0[21]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[19]),
        .O(regs_reg_1_i_187_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_188
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_293_n_0),
        .I2(pc_plus4[18]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_188_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_189
       (.I0(regs_reg_1_2[19]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_189_n_0));
  LUT6 #(
    .INIT(64'hCFCF5F5FC0C0505F)) 
    regs_reg_1_i_19
       (.I0(regs_reg_1_i_112_n_0),
        .I1(regs_reg_1_i_113_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_114_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_115_n_0),
        .O(rd_wdata[9]));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    regs_reg_1_i_190
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(regs_reg_1_i_294_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_190_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_191
       (.I0(ra_rdata0[20]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[20]_i_2_n_0 ),
        .O(regs_reg_1_i_191_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_192
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[20]_i_2_n_0 ),
        .I2(pc_plus4[17]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_192_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_193
       (.I0(regs_reg_1_2[18]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_193_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_194
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_295_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_194_n_0));
  LUT5 #(
    .INIT(32'h90D0B0F0)) 
    regs_reg_1_i_195
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_296_n_0),
        .I3(data0[19]),
        .I4(alu_op_a[20]),
        .O(regs_reg_1_i_195_n_0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_196
       (.I0(ra_rdata0[19]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_196_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_197
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_195_n_0),
        .I2(pc_plus4[16]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_197_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEA)) 
    regs_reg_1_i_198
       (.I0(regs_reg_1_i_234_n_0),
        .I1(\daddr_reg[30] [13]),
        .I2(regs_reg_1_i_297_n_0),
        .I3(regs_reg_1_i_233_n_0),
        .I4(\daddr_reg[30] [14]),
        .I5(regs_reg_1_i_298_n_0),
        .O(regs_reg_1_i_198_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_199
       (.I0(ra_rdata0[18]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[18]_i_2_n_0 ),
        .O(regs_reg_1_i_199_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAEEEA)) 
    regs_reg_1_i_2
       (.I0(regs_reg_1_i_51_n_0),
        .I1(regs_reg_1_i_52_n_0),
        .I2(\daddr_reg[30] [19]),
        .I3(\instr_reg[13]_0 ),
        .I4(regs_reg_1_i_53_n_0),
        .I5(regs_reg_1_i_54_n_0),
        .O(ra_raddr[4]));
  LUT6 #(
    .INIT(64'hCFCF5F5FC0C0505F)) 
    regs_reg_1_i_20
       (.I0(regs_reg_1_i_116_n_0),
        .I1(regs_reg_1_i_117_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_118_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_119_n_0),
        .O(rd_wdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_200
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[18]_i_2_n_0 ),
        .I2(pc_plus4[15]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_200_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_201
       (.I0(regs_reg_1_2[16]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_201_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_202
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_299_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_202_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    regs_reg_1_i_203
       (.I0(ra_rdata0[17]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(alu_out[15]),
        .O(regs_reg_1_i_203_n_0));
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_204
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_300_n_0),
        .I2(pc_plus4[14]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_204_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_205
       (.I0(regs_reg_1_2[15]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_205_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    regs_reg_1_i_206
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_301_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_206_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    regs_reg_1_i_207
       (.I0(ra_rdata0[16]),
        .I1(out0_carry_i_13_n_0),
        .I2(regs_reg_1_i_90_n_0),
        .I3(\pc[16]_i_2_n_0 ),
        .O(regs_reg_1_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_208
       (.I0(regs_reg_1_i_230_n_0),
        .I1(\pc[16]_i_2_n_0 ),
        .I2(pc_plus4[13]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_208_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_209
       (.I0(regs_reg_1_2[14]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_209_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    regs_reg_1_i_21
       (.I0(regs_reg_1_i_120_n_0),
        .I1(alu_out[5]),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_121_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_122_n_0),
        .O(rd_wdata[7]));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    regs_reg_1_i_210
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_233_n_0),
        .I2(regs_reg_1_i_302_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_210_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF55045555)) 
    regs_reg_1_i_211
       (.I0(regs_reg_1_i_303_n_0),
        .I1(\instr_reg[3] ),
        .I2(regs_reg_1_i_304_n_0),
        .I3(Q[2]),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_305_n_0),
        .O(regs_reg_1_i_211_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFAFFFFFFFA)) 
    regs_reg_1_i_212
       (.I0(regs_reg_1_i_75_n_0),
        .I1(regs_reg_1_i_73_n_0),
        .I2(regs_reg_1_i_74_n_0),
        .I3(regs_reg_1_i_80_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_79_n_0),
        .O(regs_reg_1_i_212_n_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_1_i_213
       (.I0(Q[0]),
        .I1(regs_reg_1_i_216_n_0),
        .O(regs_reg_1_i_213_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    regs_reg_1_i_214
       (.I0(\daddr_reg[30] [28]),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(\daddr_reg[30] [14]),
        .I4(regs_reg_1_i_224_n_0),
        .O(regs_reg_1_i_214_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    regs_reg_1_i_215
       (.I0(\daddr_reg[30] [4]),
        .I1(\daddr_reg[30] [6]),
        .I2(\daddr_reg[30] [3]),
        .I3(\daddr_reg[30] [2]),
        .I4(\daddr_reg[30] [0]),
        .I5(\daddr_reg[30] [1]),
        .O(regs_reg_1_i_215_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    regs_reg_1_i_216
       (.I0(regs_reg_1_i_306_n_0),
        .I1(regs_reg_1_i_93_n_0),
        .I2(\pc[27]_i_3_n_0 ),
        .I3(\pc[12]_i_2_n_0 ),
        .I4(regs_reg_1_i_196_n_0),
        .I5(regs_reg_1_i_307_n_0),
        .O(regs_reg_1_i_216_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFABAFAB)) 
    regs_reg_1_i_217
       (.I0(\instr_reg[3] ),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_145_n_0),
        .I4(\dstrb[0]_i_2_n_0 ),
        .O(regs_reg_1_i_217_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    regs_reg_1_i_218
       (.I0(\daddr_reg[30] [31]),
        .I1(\daddr_reg[30] [28]),
        .I2(\daddr_reg[30] [29]),
        .I3(\daddr_reg[30] [30]),
        .O(regs_reg_1_i_218_n_0));
  LUT5 #(
    .INIT(32'h05455050)) 
    regs_reg_1_i_219
       (.I0(Q[2]),
        .I1(\daddr_reg[30] [19]),
        .I2(Q[3]),
        .I3(regs_reg_1_i_214_n_0),
        .I4(Q[0]),
        .O(regs_reg_1_i_219_n_0));
  LUT6 #(
    .INIT(64'hCFC05F5FCFC05050)) 
    regs_reg_1_i_22
       (.I0(regs_reg_1_i_123_n_0),
        .I1(regs_reg_1_i_124_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_125_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_126_n_0),
        .O(rd_wdata[6]));
  LUT6 #(
    .INIT(64'h5555555503555555)) 
    regs_reg_1_i_220
       (.I0(\daddr_reg[30] [23]),
        .I1(regs_reg_1_i_308_n_0),
        .I2(\daddr_reg[30] [27]),
        .I3(\daddr_reg[30] [28]),
        .I4(\daddr_reg[30] [29]),
        .I5(\daddr_reg[30] [30]),
        .O(regs_reg_1_i_220_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_1_i_221
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(regs_reg_1_i_221_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFFBFFF)) 
    regs_reg_1_i_222
       (.I0(\daddr_reg[30] [27]),
        .I1(\daddr_reg[30] [31]),
        .I2(\daddr_reg[30] [28]),
        .I3(\daddr_reg[30] [29]),
        .I4(\daddr_reg[30] [30]),
        .I5(\daddr_reg[30] [22]),
        .O(regs_reg_1_i_222_n_0));
  LUT6 #(
    .INIT(64'h00004000FFFF7FFF)) 
    regs_reg_1_i_223
       (.I0(\daddr_reg[30] [21]),
        .I1(\daddr_reg[30] [31]),
        .I2(\daddr_reg[30] [28]),
        .I3(\daddr_reg[30] [29]),
        .I4(\daddr_reg[30] [30]),
        .I5(\daddr_reg[30] [20]),
        .O(regs_reg_1_i_223_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    regs_reg_1_i_224
       (.I0(\instr_reg[1] ),
        .I1(\daddr_reg[30] [4]),
        .I2(\daddr_reg[30] [6]),
        .I3(\daddr_reg[30] [5]),
        .O(regs_reg_1_i_224_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    regs_reg_1_i_225
       (.I0(\daddr_reg[30] [18]),
        .I1(\daddr_reg[30] [15]),
        .I2(\daddr_reg[30] [17]),
        .I3(\daddr_reg[30] [16]),
        .I4(\daddr_reg[30] [19]),
        .I5(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_225_n_0));
  LUT5 #(
    .INIT(32'h11111011)) 
    regs_reg_1_i_226
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\instr_reg[5] ),
        .I3(\daddr_reg[30] [10]),
        .I4(regs_reg_1_i_214_n_0),
        .O(regs_reg_1_i_226_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    regs_reg_1_i_227
       (.I0(regs_reg_1_i_214_n_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\instr_reg[5] ),
        .I5(\daddr_reg[30] [8]),
        .O(regs_reg_1_i_227_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h443D4439)) 
    regs_reg_1_i_228
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\daddr_reg[30] [7]),
        .O(regs_reg_1_i_228_n_0));
  LUT6 #(
    .INIT(64'hFBBFFEEAEAAEFEEA)) 
    regs_reg_1_i_229
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\instr_reg[13] ),
        .I2(out1_carry__2_i_9_n_0),
        .I3(out1_carry__2_i_11_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(out1_carry__2_i_10_n_0),
        .O(regs_reg_1_i_229_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    regs_reg_1_i_23
       (.I0(regs_reg_1_i_127_n_0),
        .I1(alu_out[3]),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_128_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_129_n_0),
        .O(rd_wdata[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    regs_reg_1_i_230
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [14]),
        .I2(regs_reg_1_i_215_n_0),
        .O(regs_reg_1_i_230_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    regs_reg_1_i_231
       (.I0(\daddr_reg[30] [1]),
        .I1(\daddr_reg[30] [0]),
        .I2(\daddr_reg[30] [4]),
        .I3(\daddr_reg[30] [2]),
        .I4(\daddr_reg[30] [6]),
        .I5(\daddr_reg[30] [5]),
        .O(regs_reg_1_i_231_n_0));
  LUT6 #(
    .INIT(64'h1015FFFF10151015)) 
    regs_reg_1_i_232
       (.I0(regs_reg_1_i_309_n_0),
        .I1(p_0_in_0[15]),
        .I2(regs_reg_1_i_310_n_0),
        .I3(drdata_r0[15]),
        .I4(regs_reg_1_i_311_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_232_n_0));
  LUT6 #(
    .INIT(64'h000000100000FF15)) 
    regs_reg_1_i_233
       (.I0(\daddr_reg[30] [14]),
        .I1(regs_reg_1_i_313_n_0),
        .I2(regs_reg_1_i_145_n_0),
        .I3(\daddr_reg[30] [12]),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_314_n_0),
        .O(regs_reg_1_i_233_n_0));
  LUT4 #(
    .INIT(16'h3208)) 
    regs_reg_1_i_234
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(regs_reg_1_i_234_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFD7)) 
    regs_reg_1_i_235
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(regs_reg_1_i_235_n_0));
  LUT6 #(
    .INIT(64'hFBBFFEEAEAAEFEEA)) 
    regs_reg_1_i_236
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\instr_reg[13] ),
        .I2(out1_carry__2_i_10_n_0),
        .I3(out1_carry__2_i_12_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\daddr[12]_i_2_n_0 ),
        .O(regs_reg_1_i_236_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF04F4)) 
    regs_reg_1_i_237
       (.I0(regs_reg_1_i_315_n_0),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_316_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_237_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h01000103)) 
    regs_reg_1_i_238
       (.I0(regs_reg_1_i_313_n_0),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_145_n_0),
        .I4(regs_reg_1_i_314_n_0),
        .O(regs_reg_1_i_238_n_0));
  LUT6 #(
    .INIT(64'hEBEBFEFEFFAAEAEA)) 
    regs_reg_1_i_239
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__2_i_13_n_0),
        .I2(\daddr[12]_i_2_n_0 ),
        .I3(\daddr[11]_i_2_n_0 ),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(regs_reg_1_i_239_n_0));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    regs_reg_1_i_24
       (.I0(regs_reg_1_i_130_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_131_n_0),
        .I3(regs_reg_1_i_132_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_133_n_0),
        .O(rd_wdata[4]));
  LUT5 #(
    .INIT(32'hFFFF04F4)) 
    regs_reg_1_i_240
       (.I0(regs_reg_1_i_258_n_0),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_317_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_240_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF2F6F0F4)) 
    regs_reg_1_i_241
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[12]_i_3_n_0 ),
        .I3(data0[12]),
        .I4(\daddr[12]_i_2_n_0 ),
        .O(regs_reg_1_i_241_n_0));
  LUT6 #(
    .INIT(64'h1A08FFFF1A081A08)) 
    regs_reg_1_i_242
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(regs_reg_1_i_318_n_0),
        .I5(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_242_n_0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_243
       (.I0(regs_reg_1_i_318_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_282_n_0),
        .O(regs_reg_1_i_243_n_0));
  LUT6 #(
    .INIT(64'h1A08FFFF1A081A08)) 
    regs_reg_1_i_244
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(regs_reg_1_i_319_n_0),
        .I5(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_244_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_245
       (.I0(regs_reg_1_i_319_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_283_n_0),
        .O(regs_reg_1_i_245_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00C840)) 
    regs_reg_1_i_246
       (.I0(\dstrb[0]_i_2_n_0 ),
        .I1(\daddr_reg[30] [12]),
        .I2(regs_reg_1_i_285_n_0),
        .I3(regs_reg_1_i_320_n_0),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_246_n_0));
  LUT6 #(
    .INIT(64'h4141101000555151)) 
    regs_reg_1_i_247
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__1_i_14_n_0),
        .I2(alu_op_a[9]),
        .I3(\daddr[7]_i_3_n_0 ),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(regs_reg_1_i_247_n_0));
  LUT5 #(
    .INIT(32'hFFFF04F4)) 
    regs_reg_1_i_248
       (.I0(regs_reg_1_i_321_n_0),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(regs_reg_1_i_322_n_0),
        .I4(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_248_n_0));
  LUT6 #(
    .INIT(64'h4141545455004040)) 
    regs_reg_1_i_249
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__1_i_15_n_0),
        .I2(\daddr[7]_i_3_n_0 ),
        .I3(out1_carry__0_i_9_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\instr_reg[13] ),
        .O(regs_reg_1_i_249_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    regs_reg_1_i_25
       (.I0(regs_reg_1_i_134_n_0),
        .I1(alu_out[1]),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_135_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_136_n_0),
        .O(rd_wdata[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554700)) 
    regs_reg_1_i_250
       (.I0(regs_reg_1_i_323_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_289_n_0),
        .I3(\daddr_reg[30] [12]),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_234_n_0),
        .O(regs_reg_1_i_250_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    regs_reg_1_i_251
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(regs_reg_1_i_251_n_0));
  LUT6 #(
    .INIT(64'hFFFF00FFE0FF40FF)) 
    regs_reg_1_i_252
       (.I0(\dstrb[0]_i_2_n_0 ),
        .I1(regs_reg_1_i_291_n_0),
        .I2(\daddr_reg[30] [12]),
        .I3(regs_reg_1_i_251_n_0),
        .I4(regs_reg_1_i_324_n_0),
        .I5(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_252_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h02000080)) 
    regs_reg_1_i_253
       (.I0(regs_reg_1_2[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_253_n_0));
  LUT6 #(
    .INIT(64'hBFEBABAABFEBEFEE)) 
    regs_reg_1_i_254
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(alu_op_a[6]),
        .I3(out1_carry__0_i_16_n_0),
        .I4(\instr_reg[13] ),
        .I5(alu_op_a[5]),
        .O(regs_reg_1_i_254_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00CC008D)) 
    regs_reg_1_i_255
       (.I0(regs_reg_1_i_145_n_0),
        .I1(regs_reg_1_i_325_n_0),
        .I2(regs_reg_1_i_315_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(\daddr_reg[30] [12]),
        .I5(regs_reg_1_i_326_n_0),
        .O(regs_reg_1_i_255_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_256
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(regs_reg_1_i_256_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h1A081B08)) 
    regs_reg_1_i_257
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[3]_0 [5]),
        .O(regs_reg_1_i_257_n_0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_258
       (.I0(regs_reg_1_i_317_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_280_n_0),
        .O(regs_reg_1_i_258_n_0));
  LUT6 #(
    .INIT(64'hFFFF20FFE0FF20FF)) 
    regs_reg_1_i_259
       (.I0(regs_reg_1_i_294_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_327_n_0),
        .I3(regs_reg_1_i_251_n_0),
        .I4(regs_reg_1_i_328_n_0),
        .I5(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_259_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B888B888)) 
    regs_reg_1_i_26
       (.I0(regs_reg_1_i_137_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_138_n_0),
        .I3(regs_reg_1_i_139_n_0),
        .I4(regs_reg_1_i_140_n_0),
        .I5(alu_out[0]),
        .O(rd_wdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEFF7)) 
    regs_reg_1_i_260
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(regs_reg_1_i_260_n_0));
  LUT6 #(
    .INIT(64'h10FF10FFFFFFB0FF)) 
    regs_reg_1_i_261
       (.I0(\dstrb[0]_i_2_n_0 ),
        .I1(regs_reg_1_i_295_n_0),
        .I2(regs_reg_1_i_327_n_0),
        .I3(regs_reg_1_i_251_n_0),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_329_n_0),
        .O(regs_reg_1_i_261_n_0));
  LUT4 #(
    .INIT(16'h1BFF)) 
    regs_reg_1_i_262
       (.I0(\dstrb[0]_i_2_n_0 ),
        .I1(regs_reg_1_i_297_n_0),
        .I2(regs_reg_1_i_330_n_0),
        .I3(regs_reg_1_i_327_n_0),
        .O(regs_reg_1_i_262_n_0));
  LUT5 #(
    .INIT(32'hFF4F4F4F)) 
    regs_reg_1_i_263
       (.I0(regs_reg_1_i_245_n_0),
        .I1(\dstrb[0]_i_3_n_0 ),
        .I2(regs_reg_1_i_251_n_0),
        .I3(regs_reg_1_i_330_n_0),
        .I4(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_263_n_0));
  LUT4 #(
    .INIT(16'h88B8)) 
    regs_reg_1_i_264
       (.I0(regs_reg_1_2[1]),
        .I1(regs_reg_1_i_251_n_0),
        .I2(regs_reg_1_i_69_n_0),
        .I3(\daddr_reg[30] [20]),
        .O(regs_reg_1_i_264_n_0));
  LUT6 #(
    .INIT(64'hAEFFAEAEFFFFFFFF)) 
    regs_reg_1_i_265
       (.I0(regs_reg_1_i_331_n_0),
        .I1(regs_reg_1_i_327_n_0),
        .I2(regs_reg_1_i_332_n_0),
        .I3(regs_reg_1_i_333_n_0),
        .I4(\daddr_reg[30] [13]),
        .I5(regs_reg_1_i_251_n_0),
        .O(regs_reg_1_i_265_n_0));
  LUT6 #(
    .INIT(64'hFC23FFF3FCEFFFF3)) 
    regs_reg_1_i_266
       (.I0(regs_reg_1_2[0]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\instr_reg[3] ),
        .O(regs_reg_1_i_266_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h71D72187)) 
    regs_reg_1_i_267
       (.I0(\instr_reg[13] ),
        .I1(out1_carry_i_18_n_0),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(out1_carry_i_22_n_0),
        .I4(alu_op_a[0]),
        .O(regs_reg_1_i_267_n_0));
  LUT5 #(
    .INIT(32'hF7F7F7FF)) 
    regs_reg_1_i_268
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(regs_reg_1_i_69_n_0),
        .I4(\FSM_sequential_state_reg[0]_8 ),
        .O(regs_reg_1_i_268_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    regs_reg_1_i_269
       (.I0(regs_reg_1_i_327_n_0),
        .I1(regs_reg_1_i_301_n_0),
        .I2(\dstrb[0]_i_2_n_0 ),
        .I3(regs_reg_1_i_334_n_0),
        .O(regs_reg_1_i_269_n_0));
  LUT6 #(
    .INIT(64'hF000A2A2FF0FA2A2)) 
    regs_reg_1_i_27
       (.I0(regs_reg_1_i_141_n_0),
        .I1(regs_reg_1_i_140_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_142_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_143_n_0),
        .O(rd_wdata[1]));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    regs_reg_1_i_270
       (.I0(regs_reg_1_i_321_n_0),
        .I1(\dstrb[0]_i_3_n_0 ),
        .I2(regs_reg_1_i_251_n_0),
        .I3(\daddr_reg[30] [13]),
        .I4(regs_reg_1_i_334_n_0),
        .O(regs_reg_1_i_270_n_0));
  LUT5 #(
    .INIT(32'h00F0DDFF)) 
    regs_reg_1_i_271
       (.I0(regs_reg_1_i_335_n_0),
        .I1(out1_carry_i_28_n_0),
        .I2(data0[0]),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(\FSM_sequential_state_reg[3] ),
        .O(regs_reg_1_i_271_n_0));
  LUT5 #(
    .INIT(32'h20FF20E0)) 
    regs_reg_1_i_272
       (.I0(regs_reg_1_i_302_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_327_n_0),
        .I3(regs_reg_1_i_336_n_0),
        .I4(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_272_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    regs_reg_1_i_273
       (.I0(regs_reg_1_i_323_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_289_n_0),
        .I3(\dstrb[0]_i_3_n_0 ),
        .O(regs_reg_1_i_273_n_0));
  LUT5 #(
    .INIT(32'h5555303F)) 
    regs_reg_1_i_274
       (.I0(regs_reg_1_i_147_0),
        .I1(CO),
        .I2(regs_reg_1_i_337_n_0),
        .I3(regs_reg_1_i_147_1),
        .I4(regs_reg_1_i_338_n_0),
        .O(regs_reg_1_i_274_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    regs_reg_1_i_275
       (.I0(\daddr_reg[30] [6]),
        .I1(\daddr_reg[30] [5]),
        .O(regs_reg_1_i_275_n_0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    regs_reg_1_i_276
       (.I0(regs_reg_1_i_339_n_0),
        .I1(regs_reg_1_i_340_n_0),
        .I2(regs_reg_1_i_151_0[30]),
        .O(regs_reg_1_i_276_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_277
       (.I0(p_0_in_0[30]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[30]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_341_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_277_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_278
       (.I0(regs_reg_1_2[28]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_278_n_0));
  LUT6 #(
    .INIT(64'h0010501550150515)) 
    regs_reg_1_i_279
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(out1_carry__6_i_10_n_0),
        .I2(\FSM_sequential_state_reg[3] ),
        .I3(\instr_reg[13] ),
        .I4(out1_carry__6_i_13_n_0),
        .I5(out1_carry__6_i_9_n_0),
        .O(regs_reg_1_i_279_n_0));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    regs_reg_1_i_28
       (.I0(regs_reg_1_i_144_n_0),
        .I1(regs_reg_1_i_145_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_146_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_147_n_0),
        .O(rd_wdata[0]));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_280
       (.I0(p_0_in_0[29]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[29]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[28]),
        .O(regs_reg_1_i_280_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_281
       (.I0(regs_reg_1_2[27]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_281_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_282
       (.I0(p_0_in_0[28]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[28]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_342_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_282_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_283
       (.I0(p_0_in_0[27]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[27]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_343_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_283_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_284
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[26]_i_3_n_0 ),
        .I3(data0[26]),
        .I4(\daddr[26]_i_2_n_0 ),
        .O(regs_reg_1_i_284_n_0));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_285
       (.I0(p_0_in_0[26]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[26]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_344_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_285_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h90B0D0F0)) 
    regs_reg_1_i_286
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[25]_i_2_n_0 ),
        .I3(alu_op_a[26]),
        .I4(data0[25]),
        .O(regs_reg_1_i_286_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_287
       (.I0(p_0_in_0[25]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[25]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_345_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_287_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h90D0B0F0)) 
    regs_reg_1_i_288
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[24]_i_2_n_0 ),
        .I3(data0[24]),
        .I4(alu_op_a[25]),
        .O(regs_reg_1_i_288_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_289
       (.I0(p_0_in_0[24]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[24]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[23]),
        .O(regs_reg_1_i_289_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_29
       (.I0(regs_reg_1_i_148_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_149_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_150_n_0),
        .I5(regs_reg_1_i_151_n_0),
        .O(rd_wdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h90B0D0F0)) 
    regs_reg_1_i_290
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[23]_i_2_n_0 ),
        .I3(alu_op_a[24]),
        .I4(data0[23]),
        .O(regs_reg_1_i_290_n_0));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_291
       (.I0(p_0_in_0[23]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[23]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_346_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_291_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_292
       (.I0(p_0_in_0[22]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[22]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[21]),
        .O(regs_reg_1_i_292_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_293
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[21]_i_3_n_0 ),
        .I3(data0[21]),
        .I4(\daddr[21]_i_2_n_0 ),
        .O(regs_reg_1_i_293_n_0));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_294
       (.I0(p_0_in_0[21]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[21]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_347_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_294_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_295
       (.I0(p_0_in_0[20]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[20]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[19]),
        .O(regs_reg_1_i_295_n_0));
  LUT6 #(
    .INIT(64'hFBBFFEEAEAAEFEEA)) 
    regs_reg_1_i_296
       (.I0(\daddr[30]_i_9_n_0 ),
        .I1(\instr_reg[13] ),
        .I2(out1_carry__3_i_12_n_0),
        .I3(out1_carry__3_i_9_n_0),
        .I4(\FSM_sequential_state_reg[3] ),
        .I5(\daddr[17]_i_2_n_0 ),
        .O(regs_reg_1_i_296_n_0));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_297
       (.I0(p_0_in_0[19]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[19]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_348_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_297_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFDCFFFFF)) 
    regs_reg_1_i_298
       (.I0(regs_reg_1_2[17]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(regs_reg_1_i_298_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_299
       (.I0(p_0_in_0[18]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[18]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_349_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_299_n_0));
  LUT5 #(
    .INIT(32'hF200F2F2)) 
    regs_reg_1_i_3
       (.I0(regs_reg_1_i_52_n_0),
        .I1(regs_reg_1_i_55_n_0),
        .I2(regs_reg_1_i_51_n_0),
        .I3(regs_reg_1_i_56_n_0),
        .I4(regs_reg_1_i_57_n_0),
        .O(ra_raddr[3]));
  LUT6 #(
    .INIT(64'hAFAFCFCFA0A0C0CF)) 
    regs_reg_1_i_30
       (.I0(regs_reg_1_i_152_n_0),
        .I1(alu_out[28]),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_153_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_154_n_0),
        .O(rd_wdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_300
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(\daddr[17]_i_3_n_0 ),
        .I3(data0[17]),
        .I4(\daddr[17]_i_2_n_0 ),
        .O(regs_reg_1_i_300_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_301
       (.I0(p_0_in_0[17]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[17]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[16]),
        .O(regs_reg_1_i_301_n_0));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_302
       (.I0(p_0_in_0[16]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[16]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_350_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_302_n_0));
  LUT6 #(
    .INIT(64'hBBFBBBBBBBFBFBFB)) 
    regs_reg_1_i_303
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(dready_o),
        .I4(\daddr_reg[18] ),
        .I5(dready_r),
        .O(regs_reg_1_i_303_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    regs_reg_1_i_304
       (.I0(\instr_reg[1] ),
        .I1(\daddr_reg[30] [6]),
        .I2(\daddr_reg[30] [5]),
        .I3(\daddr_reg[30] [4]),
        .O(regs_reg_1_i_304_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEF71)) 
    regs_reg_1_i_305
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(regs_reg_1_i_305_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    regs_reg_1_i_306
       (.I0(regs_reg_1_i_351_n_0),
        .I1(regs_reg_1_i_352_n_0),
        .I2(\pc[16]_i_3_n_0 ),
        .I3(regs_reg_1_i_113_n_0),
        .I4(Q[3]),
        .I5(\pc[18]_i_3_n_0 ),
        .O(regs_reg_1_i_306_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    regs_reg_1_i_307
       (.I0(ra_rdata0[31]),
        .I1(out0_carry_i_13_n_0),
        .I2(ra_rdata0[30]),
        .I3(ra_rdata0[21]),
        .I4(ra_rdata0[23]),
        .I5(regs_reg_1_i_353_n_0),
        .O(regs_reg_1_i_307_n_0));
  LUT6 #(
    .INIT(64'h00FDFDFD00000000)) 
    regs_reg_1_i_308
       (.I0(regs_reg_1_i_354_n_0),
        .I1(\daddr_reg[30] [25]),
        .I2(\daddr_reg[30] [26]),
        .I3(\daddr_reg[30] [31]),
        .I4(\daddr_reg[30] [28]),
        .I5(\daddr_reg[30] [29]),
        .O(regs_reg_1_i_308_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    regs_reg_1_i_309
       (.I0(regs_reg_1_i_333_0[7]),
        .I1(regs_reg_1_i_333_0[8]),
        .I2(regs_reg_1_i_333_0[24]),
        .I3(regs_reg_1_i_333_0[25]),
        .I4(regs_reg_1_i_355_n_0),
        .I5(regs_reg_1_i_356_n_0),
        .O(regs_reg_1_i_309_n_0));
  LUT6 #(
    .INIT(64'hCFCF5F5FC0C0505F)) 
    regs_reg_1_i_31
       (.I0(regs_reg_1_i_155_n_0),
        .I1(regs_reg_1_i_156_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_157_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_158_n_0),
        .O(rd_wdata[29]));
  LUT5 #(
    .INIT(32'h00000010)) 
    regs_reg_1_i_310
       (.I0(regs_reg_1_i_336_0[0]),
        .I1(regs_reg_1_i_336_0[4]),
        .I2(regs_reg_1_i_336_0[7]),
        .I3(regs_reg_1_i_336_0[3]),
        .I4(regs_reg_1_i_357_n_0),
        .O(regs_reg_1_i_310_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_311
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[14]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_311_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    regs_reg_1_i_312
       (.I0(\daddr_reg[18] ),
        .I1(regs_reg_1_i_333_0[4]),
        .I2(regs_reg_1_i_333_0[3]),
        .I3(regs_reg_1_i_333_0[5]),
        .O(regs_reg_1_i_312_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h47)) 
    regs_reg_1_i_313
       (.I0(regs_reg_1_i_324_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_291_n_0),
        .O(regs_reg_1_i_313_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_314
       (.I0(regs_reg_1_i_232_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_276_n_0),
        .O(regs_reg_1_i_314_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_315
       (.I0(regs_reg_1_i_316_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_277_n_0),
        .O(regs_reg_1_i_315_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_316
       (.I0(p_0_in_0[14]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[14]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_358_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_316_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_317
       (.I0(p_0_in_0[13]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[13]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[12]),
        .O(regs_reg_1_i_317_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_318
       (.I0(p_0_in_0[12]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[12]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_359_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_318_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_319
       (.I0(p_0_in_0[11]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[11]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_360_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_319_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_32
       (.I0(regs_reg_1_i_159_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_160_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_161_n_0),
        .I5(regs_reg_1_i_162_n_0),
        .O(rd_wdata[28]));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFB8)) 
    regs_reg_1_i_320
       (.I0(p_0_in_0[10]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[10]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_361_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_320_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_1_i_321
       (.I0(regs_reg_1_i_322_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_287_n_0),
        .O(regs_reg_1_i_321_n_0));
  LUT6 #(
    .INIT(64'h0047FFFF00470047)) 
    regs_reg_1_i_322
       (.I0(p_0_in_0[9]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[9]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_362_n_0),
        .I5(regs_reg_1_i_312_n_0),
        .O(regs_reg_1_i_322_n_0));
  LUT6 #(
    .INIT(64'hFF470000FF47FF47)) 
    regs_reg_1_i_323
       (.I0(p_0_in_0[8]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[8]),
        .I3(regs_reg_1_i_309_n_0),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[7]),
        .O(regs_reg_1_i_323_n_0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h54)) 
    regs_reg_1_i_324
       (.I0(regs_reg_1_i_363_n_0),
        .I1(regs_reg_1_i_340_n_0),
        .I2(regs_reg_1_i_151_0[6]),
        .O(regs_reg_1_i_324_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    regs_reg_1_i_325
       (.I0(regs_reg_1_i_292_n_0),
        .I1(regs_reg_1_i_364_n_0),
        .I2(\dstrb[0]_i_2_n_0 ),
        .O(regs_reg_1_i_325_n_0));
  LUT6 #(
    .INIT(64'h88F888F8888888F8)) 
    regs_reg_1_i_326
       (.I0(\daddr_reg[30] [13]),
        .I1(regs_reg_1_i_364_n_0),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(regs_reg_1_i_326_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h54)) 
    regs_reg_1_i_327
       (.I0(\daddr_reg[30] [13]),
        .I1(regs_reg_1_i_145_n_0),
        .I2(\daddr_reg[30] [12]),
        .O(regs_reg_1_i_327_n_0));
  LUT6 #(
    .INIT(64'h1F101F1F1F101010)) 
    regs_reg_1_i_328
       (.I0(regs_reg_1_i_365_n_0),
        .I1(regs_reg_1_i_366_n_0),
        .I2(regs_reg_1_i_309_n_0),
        .I3(p_0_in_0[5]),
        .I4(regs_reg_1_i_310_n_0),
        .I5(drdata_r0[5]),
        .O(regs_reg_1_i_328_n_0));
  LUT6 #(
    .INIT(64'h0000000047FFFFFF)) 
    regs_reg_1_i_329
       (.I0(regs_reg_1_i_339_0[4]),
        .I1(regs_reg_1_i_333_0[1]),
        .I2(regs_reg_1_i_339_1[4]),
        .I3(regs_reg_1_i_312_n_0),
        .I4(regs_reg_1_i_367_n_0),
        .I5(regs_reg_1_i_368_n_0),
        .O(regs_reg_1_i_329_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_33
       (.I0(regs_reg_1_i_163_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_164_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_165_n_0),
        .I5(regs_reg_1_i_166_n_0),
        .O(rd_wdata[27]));
  LUT6 #(
    .INIT(64'h1F101F1F1F101010)) 
    regs_reg_1_i_330
       (.I0(regs_reg_1_i_369_n_0),
        .I1(regs_reg_1_i_370_n_0),
        .I2(regs_reg_1_i_309_n_0),
        .I3(p_0_in_0[3]),
        .I4(regs_reg_1_i_310_n_0),
        .I5(drdata_r0[3]),
        .O(regs_reg_1_i_330_n_0));
  LUT6 #(
    .INIT(64'h0500CF000500C000)) 
    regs_reg_1_i_331
       (.I0(regs_reg_1_i_299_n_0),
        .I1(regs_reg_1_i_320_n_0),
        .I2(\dstrb[0]_i_2_n_0 ),
        .I3(regs_reg_2_i_18_n_0),
        .I4(regs_reg_1_i_145_n_0),
        .I5(regs_reg_1_i_285_n_0),
        .O(regs_reg_1_i_331_n_0));
  LUT5 #(
    .INIT(32'hBBBBB8BB)) 
    regs_reg_1_i_332
       (.I0(regs_reg_1_i_333_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(regs_reg_1_i_299_n_0),
        .I3(\daddr_reg[30] [12]),
        .I4(\daddr_reg[30] [13]),
        .O(regs_reg_1_i_332_n_0));
  LUT6 #(
    .INIT(64'hE0EFE0E0E0EFEFEF)) 
    regs_reg_1_i_333
       (.I0(regs_reg_1_i_371_n_0),
        .I1(regs_reg_1_i_372_n_0),
        .I2(regs_reg_1_i_309_n_0),
        .I3(p_0_in_0[2]),
        .I4(regs_reg_1_i_310_n_0),
        .I5(drdata_r0[2]),
        .O(regs_reg_1_i_333_n_0));
  LUT6 #(
    .INIT(64'h0000000047FFFFFF)) 
    regs_reg_1_i_334
       (.I0(regs_reg_1_i_339_0[1]),
        .I1(regs_reg_1_i_333_0[1]),
        .I2(regs_reg_1_i_339_1[1]),
        .I3(regs_reg_1_i_312_n_0),
        .I4(regs_reg_1_i_367_n_0),
        .I5(regs_reg_1_i_373_n_0),
        .O(regs_reg_1_i_334_n_0));
  LUT6 #(
    .INIT(64'h00007747FFFFFFFF)) 
    regs_reg_1_i_335
       (.I0(\daddr_reg[30] [8]),
        .I1(regs_reg_1_i_304_n_0),
        .I2(ra_rdata0[1]),
        .I3(out0_carry_i_13_n_0),
        .I4(out1_carry_i_15_n_0),
        .I5(regs_reg_1_i_374_n_0),
        .O(regs_reg_1_i_335_n_0));
  LUT6 #(
    .INIT(64'h0047FF47FF47FF47)) 
    regs_reg_1_i_336
       (.I0(p_0_in_0[0]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[0]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_375_n_0),
        .I5(regs_reg_1_i_376_n_0),
        .O(regs_reg_1_i_336_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hCCEC)) 
    regs_reg_1_i_337
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [14]),
        .I2(regs_reg_1_i_215_n_0),
        .I3(\daddr_reg[30] [12]),
        .O(regs_reg_1_i_337_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFADA)) 
    regs_reg_1_i_338
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [14]),
        .I2(regs_reg_1_i_215_n_0),
        .I3(\daddr_reg[30] [12]),
        .O(regs_reg_1_i_338_n_0));
  LUT5 #(
    .INIT(32'h8B888BBB)) 
    regs_reg_1_i_339
       (.I0(regs_reg_1_i_377_n_0),
        .I1(\daddr_reg[18] ),
        .I2(p_0_in_0[31]),
        .I3(regs_reg_1_i_310_n_0),
        .I4(drdata_r0[31]),
        .O(regs_reg_1_i_339_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_34
       (.I0(regs_reg_1_i_167_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_168_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_169_n_0),
        .I5(regs_reg_1_i_170_n_0),
        .O(rd_wdata[26]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    regs_reg_1_i_340
       (.I0(regs_reg_1_i_333_0[5]),
        .I1(regs_reg_1_i_333_0[3]),
        .I2(regs_reg_1_i_333_0[4]),
        .I3(regs_reg_1_i_333_0[2]),
        .I4(regs_reg_1_i_378_n_0),
        .I5(\daddr_reg[18] ),
        .O(regs_reg_1_i_340_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_341
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[29]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_341_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_342
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[27]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_342_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_343
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[26]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_343_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_344
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[25]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_344_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_345
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[24]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_345_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_346
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[22]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_346_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_347
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[20]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_347_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_348
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[18]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_348_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_349
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[17]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_349_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_35
       (.I0(regs_reg_1_i_171_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_172_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_173_n_0),
        .I5(regs_reg_1_i_174_n_0),
        .O(rd_wdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_350
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[15]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_350_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    regs_reg_1_i_351
       (.I0(ra_rdata0[22]),
        .I1(out0_carry_i_13_n_0),
        .I2(ra_rdata0[15]),
        .I3(ra_rdata0[28]),
        .I4(ra_rdata0[6]),
        .I5(regs_reg_1_i_379_n_0),
        .O(regs_reg_1_i_351_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    regs_reg_1_i_352
       (.I0(ra_rdata0[7]),
        .I1(ra_rdata0[25]),
        .I2(ra_rdata0[11]),
        .I3(out0_carry_i_13_n_0),
        .I4(ra_rdata0[10]),
        .O(regs_reg_1_i_352_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    regs_reg_1_i_353
       (.I0(ra_rdata0[20]),
        .I1(ra_rdata0[24]),
        .I2(ra_rdata0[5]),
        .I3(out0_carry_i_13_n_0),
        .I4(ra_rdata0[26]),
        .O(regs_reg_1_i_353_n_0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_1_i_354
       (.I0(\daddr_reg[30] [23]),
        .I1(\daddr_reg[30] [24]),
        .O(regs_reg_1_i_354_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    regs_reg_1_i_355
       (.I0(\daddr_reg[12] ),
        .I1(regs_reg_1_i_333_0[12]),
        .I2(regs_reg_1_i_333_0[10]),
        .I3(regs_reg_1_i_333_0[11]),
        .I4(regs_reg_1_i_333_0[13]),
        .O(regs_reg_1_i_355_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    regs_reg_1_i_356
       (.I0(regs_reg_1_i_333_0[16]),
        .I1(regs_reg_1_i_333_0[15]),
        .I2(regs_reg_1_i_333_0[21]),
        .I3(regs_reg_1_i_333_0[18]),
        .I4(regs_reg_1_i_380_n_0),
        .O(regs_reg_1_i_356_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    regs_reg_1_i_357
       (.I0(regs_reg_1_i_336_0[2]),
        .I1(regs_reg_1_i_336_0[6]),
        .I2(regs_reg_1_i_336_0[1]),
        .I3(regs_reg_1_i_336_0[5]),
        .O(regs_reg_1_i_357_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_358
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[13]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_358_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_359
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[11]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_359_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_36
       (.I0(regs_reg_1_i_175_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_176_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_177_n_0),
        .I5(regs_reg_1_i_178_n_0),
        .O(rd_wdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_360
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[10]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_360_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_361
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[9]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_361_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    regs_reg_1_i_362
       (.I0(regs_reg_1_i_333_0[2]),
        .I1(regs_reg_1_i_151_0[8]),
        .I2(regs_reg_1_i_333_0[0]),
        .I3(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_362_n_0));
  LUT5 #(
    .INIT(32'hFF004747)) 
    regs_reg_1_i_363
       (.I0(p_0_in_0[7]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[7]),
        .I3(regs_reg_1_i_381_n_0),
        .I4(\daddr_reg[18] ),
        .O(regs_reg_1_i_363_n_0));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    regs_reg_1_i_364
       (.I0(\daddr_reg[7] ),
        .I1(regs_reg_1_i_325_0),
        .I2(regs_reg_1_i_309_n_0),
        .I3(p_0_in_0[6]),
        .I4(regs_reg_1_i_310_n_0),
        .I5(drdata_r0[6]),
        .O(regs_reg_1_i_364_n_0));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAA2AA)) 
    regs_reg_1_i_365
       (.I0(\daddr_reg[6] ),
        .I1(regs_reg_1_i_339_0[5]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[1]),
        .I4(regs_reg_1_i_333_0[0]),
        .I5(regs_reg_1_i_339_1[5]),
        .O(regs_reg_1_i_365_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    regs_reg_1_i_366
       (.I0(regs_reg_1_i_151_0[5]),
        .I1(regs_reg_1_i_333_0[5]),
        .I2(regs_reg_1_i_333_0[3]),
        .I3(regs_reg_1_i_333_0[4]),
        .I4(regs_reg_1_i_333_0[2]),
        .I5(regs_reg_1_i_378_n_0),
        .O(regs_reg_1_i_366_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_1_i_367
       (.I0(regs_reg_1_i_333_0[0]),
        .I1(regs_reg_1_i_333_0[2]),
        .O(regs_reg_1_i_367_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B800B8)) 
    regs_reg_1_i_368
       (.I0(p_0_in_0[4]),
        .I1(regs_reg_1_i_310_n_0),
        .I2(drdata_r0[4]),
        .I3(\daddr_reg[18] ),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[4]),
        .O(regs_reg_1_i_368_n_0));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAA2AA)) 
    regs_reg_1_i_369
       (.I0(\daddr_reg[6] ),
        .I1(regs_reg_1_i_339_0[3]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[1]),
        .I4(regs_reg_1_i_333_0[0]),
        .I5(regs_reg_1_i_339_1[3]),
        .O(regs_reg_1_i_369_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_37
       (.I0(regs_reg_1_i_179_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_180_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_181_n_0),
        .I5(regs_reg_1_i_182_n_0),
        .O(rd_wdata[23]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    regs_reg_1_i_370
       (.I0(regs_reg_1_i_151_0[3]),
        .I1(regs_reg_1_i_333_0[5]),
        .I2(regs_reg_1_i_333_0[3]),
        .I3(regs_reg_1_i_333_0[4]),
        .I4(regs_reg_1_i_333_0[2]),
        .I5(regs_reg_1_i_378_n_0),
        .O(regs_reg_1_i_370_n_0));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAA2AA)) 
    regs_reg_1_i_371
       (.I0(\daddr_reg[6] ),
        .I1(regs_reg_1_i_339_0[2]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[1]),
        .I4(regs_reg_1_i_333_0[0]),
        .I5(regs_reg_1_i_339_1[2]),
        .O(regs_reg_1_i_371_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    regs_reg_1_i_372
       (.I0(regs_reg_1_i_151_0[2]),
        .I1(regs_reg_1_i_333_0[5]),
        .I2(regs_reg_1_i_333_0[3]),
        .I3(regs_reg_1_i_333_0[4]),
        .I4(regs_reg_1_i_333_0[2]),
        .I5(regs_reg_1_i_378_n_0),
        .O(regs_reg_1_i_372_n_0));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    regs_reg_1_i_373
       (.I0(regs_reg_1_i_309_n_0),
        .I1(p_0_in_0[1]),
        .I2(regs_reg_1_i_310_n_0),
        .I3(drdata_r0[1]),
        .I4(regs_reg_1_i_340_n_0),
        .I5(regs_reg_1_i_151_0[1]),
        .O(regs_reg_1_i_373_n_0));
  LUT6 #(
    .INIT(64'h1111111111101111)) 
    regs_reg_1_i_374
       (.I0(out1_carry_i_11_n_0),
        .I1(\instr_reg[0]_0 ),
        .I2(\daddr_reg[30] [21]),
        .I3(\instr_reg[5]_0 ),
        .I4(\daddr_reg[30] [3]),
        .I5(out1_carry_i_24_n_0),
        .O(regs_reg_1_i_374_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    regs_reg_1_i_375
       (.I0(regs_reg_1_i_151_0[0]),
        .I1(regs_reg_1_i_333_0[5]),
        .I2(regs_reg_1_i_333_0[3]),
        .I3(regs_reg_1_i_333_0[4]),
        .I4(regs_reg_1_i_333_0[2]),
        .I5(regs_reg_1_i_378_n_0),
        .O(regs_reg_1_i_375_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3E20022)) 
    regs_reg_1_i_376
       (.I0(regs_reg_1_i_339_1[0]),
        .I1(regs_reg_1_i_333_0[1]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[0]),
        .I4(tx_en),
        .I5(regs_reg_1_i_383_n_0),
        .O(regs_reg_1_i_376_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hAA20AA2A)) 
    regs_reg_1_i_377
       (.I0(\daddr_reg[6] ),
        .I1(regs_reg_1_i_339_0[7]),
        .I2(regs_reg_1_i_333_0[1]),
        .I3(regs_reg_1_i_333_0[0]),
        .I4(regs_reg_1_i_339_1[7]),
        .O(regs_reg_1_i_377_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_1_i_378
       (.I0(regs_reg_1_i_333_0[0]),
        .I1(regs_reg_1_i_333_0[1]),
        .O(regs_reg_1_i_378_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    regs_reg_1_i_379
       (.I0(ra_rdata0[13]),
        .I1(ra_rdata0[29]),
        .I2(ra_rdata0[17]),
        .I3(out0_carry_i_13_n_0),
        .I4(ra_rdata0[8]),
        .O(regs_reg_1_i_379_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_38
       (.I0(regs_reg_1_i_183_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_184_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_185_n_0),
        .I5(regs_reg_1_i_186_n_0),
        .O(rd_wdata[22]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    regs_reg_1_i_380
       (.I0(regs_reg_1_i_333_0[19]),
        .I1(regs_reg_1_i_333_0[20]),
        .I2(regs_reg_1_i_333_0[14]),
        .I3(regs_reg_1_i_333_0[17]),
        .O(regs_reg_1_i_380_n_0));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAA2AA)) 
    regs_reg_1_i_381
       (.I0(\daddr_reg[6] ),
        .I1(regs_reg_1_i_339_0[6]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[1]),
        .I4(regs_reg_1_i_333_0[0]),
        .I5(regs_reg_1_i_339_1[6]),
        .O(regs_reg_1_i_381_n_0));
  LUT6 #(
    .INIT(64'hFE000200FFFFFFFF)) 
    regs_reg_1_i_383
       (.I0(regs_reg_1_i_339_0[0]),
        .I1(regs_reg_1_i_333_0[0]),
        .I2(regs_reg_1_i_333_0[2]),
        .I3(regs_reg_1_i_333_0[1]),
        .I4(rx_en),
        .I5(\daddr_reg[6] ),
        .O(regs_reg_1_i_383_n_0));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_39
       (.I0(regs_reg_1_i_187_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_188_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_189_n_0),
        .I5(regs_reg_1_i_190_n_0),
        .O(rd_wdata[21]));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    regs_reg_1_i_4
       (.I0(regs_reg_1_i_58_n_0),
        .I1(Q[1]),
        .I2(regs_reg_1_i_46_n_0),
        .I3(regs_reg_1_i_59_n_0),
        .I4(regs_reg_1_i_60_n_0),
        .I5(regs_reg_1_i_61_n_0),
        .O(ra_raddr[2]));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_40
       (.I0(regs_reg_1_i_191_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_192_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_193_n_0),
        .I5(regs_reg_1_i_194_n_0),
        .O(rd_wdata[20]));
  LUT6 #(
    .INIT(64'hCFCF5F5FC0C0505F)) 
    regs_reg_1_i_41
       (.I0(regs_reg_1_i_195_n_0),
        .I1(regs_reg_1_i_196_n_0),
        .I2(regs_reg_1_i_88_n_0),
        .I3(regs_reg_1_i_197_n_0),
        .I4(regs_reg_1_i_90_n_0),
        .I5(regs_reg_1_i_198_n_0),
        .O(rd_wdata[19]));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_42
       (.I0(regs_reg_1_i_199_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_200_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_201_n_0),
        .I5(regs_reg_1_i_202_n_0),
        .O(rd_wdata[18]));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_43
       (.I0(regs_reg_1_i_203_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_204_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_205_n_0),
        .I5(regs_reg_1_i_206_n_0),
        .O(rd_wdata[17]));
  LUT6 #(
    .INIT(64'h888BBBBB888B888B)) 
    regs_reg_1_i_44
       (.I0(regs_reg_1_i_207_n_0),
        .I1(regs_reg_1_i_88_n_0),
        .I2(regs_reg_1_i_208_n_0),
        .I3(regs_reg_1_i_90_n_0),
        .I4(regs_reg_1_i_209_n_0),
        .I5(regs_reg_1_i_210_n_0),
        .O(rd_wdata[16]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    regs_reg_1_i_45
       (.I0(regs_reg_1_i_211_n_0),
        .I1(rd_waddr[3]),
        .I2(rd_waddr[0]),
        .I3(regs_reg_1_i_212_n_0),
        .I4(rd_waddr[5]),
        .I5(rd_waddr[1]),
        .O(rd_wen));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h4544)) 
    regs_reg_1_i_46
       (.I0(Q[1]),
        .I1(regs_reg_1_i_213_n_0),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(regs_reg_1_i_46_n_0));
  LUT6 #(
    .INIT(64'h444400004444FF0F)) 
    regs_reg_1_i_47
       (.I0(Q[3]),
        .I1(\instr_reg[13]_0 ),
        .I2(Q[0]),
        .I3(regs_reg_1_i_214_n_0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(regs_reg_1_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h40)) 
    regs_reg_1_i_48
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [12]),
        .I2(regs_reg_1_i_215_n_0),
        .O(\instr_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    regs_reg_1_i_49
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .O(regs_reg_1_i_49_n_0));
  LUT6 #(
    .INIT(64'hE0E0E0EEEEEEEEEE)) 
    regs_reg_1_i_5
       (.I0(regs_reg_1_i_62_n_0),
        .I1(regs_reg_1_i_51_n_0),
        .I2(regs_reg_1_i_63_n_0),
        .I3(regs_reg_1_i_64_n_0),
        .I4(regs_reg_1_i_65_n_0),
        .I5(regs_reg_1_i_57_n_0),
        .O(ra_raddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    regs_reg_1_i_50
       (.I0(regs_reg_1_i_216_n_0),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(regs_reg_1_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0E0FFFFF)) 
    regs_reg_1_i_51
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(regs_reg_1_i_50_n_0),
        .O(regs_reg_1_i_51_n_0));
  LUT5 #(
    .INIT(32'h5400FFFF)) 
    regs_reg_1_i_52
       (.I0(regs_reg_1_i_69_n_0),
        .I1(\dstrb[0]_i_2_n_0 ),
        .I2(\pc[31]_i_6_n_0 ),
        .I3(regs_reg_1_i_217_n_0),
        .I4(\FSM_sequential_state_reg[0]_7 ),
        .O(regs_reg_1_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hAAFE)) 
    regs_reg_1_i_53
       (.I0(\instr_reg[5] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(regs_reg_1_i_53_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    regs_reg_1_i_54
       (.I0(regs_reg_1_i_218_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(regs_reg_1_i_65_n_0),
        .I4(regs_reg_1_i_219_n_0),
        .I5(regs_reg_1_i_213_n_0),
        .O(regs_reg_1_i_54_n_0));
  LUT6 #(
    .INIT(64'hFF54FF54FF54FFFF)) 
    regs_reg_1_i_55
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\instr_reg[5] ),
        .I4(\instr_reg[13]_0 ),
        .I5(\daddr_reg[30] [18]),
        .O(regs_reg_1_i_55_n_0));
  LUT6 #(
    .INIT(64'h0E0E0F0F0F0F00FF)) 
    regs_reg_1_i_56
       (.I0(\daddr_reg[30] [18]),
        .I1(regs_reg_1_i_214_n_0),
        .I2(Q[2]),
        .I3(regs_reg_1_i_220_n_0),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(regs_reg_1_i_56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000E0F)) 
    regs_reg_1_i_57
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(regs_reg_1_i_213_n_0),
        .O(regs_reg_1_i_57_n_0));
  LUT6 #(
    .INIT(64'hAA02AAAAAAAAAAAA)) 
    regs_reg_1_i_58
       (.I0(regs_reg_1_i_50_n_0),
        .I1(\daddr_reg[30] [17]),
        .I2(\instr_reg[13]_0 ),
        .I3(\instr_reg[5] ),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_49_n_0),
        .O(regs_reg_1_i_58_n_0));
  LUT6 #(
    .INIT(64'h5D005D0000005D00)) 
    regs_reg_1_i_59
       (.I0(Q[0]),
        .I1(\daddr_reg[30] [17]),
        .I2(regs_reg_1_i_214_n_0),
        .I3(regs_reg_1_i_221_n_0),
        .I4(regs_reg_1_i_222_n_0),
        .I5(Q[3]),
        .O(regs_reg_1_i_59_n_0));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    regs_reg_1_i_6
       (.I0(regs_reg_1_i_66_n_0),
        .I1(Q[1]),
        .I2(regs_reg_1_i_46_n_0),
        .I3(regs_reg_1_i_67_n_0),
        .I4(regs_reg_1_i_60_n_0),
        .I5(regs_reg_1_i_68_n_0),
        .O(ra_raddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_60
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(regs_reg_1_i_60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    regs_reg_1_i_61
       (.I0(\daddr_reg[30] [17]),
        .I1(\instr_reg[13]_0 ),
        .I2(\instr_reg[5] ),
        .I3(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_61_n_0));
  LUT5 #(
    .INIT(32'h00A80000)) 
    regs_reg_1_i_62
       (.I0(regs_reg_1_i_52_n_0),
        .I1(\daddr_reg[30] [16]),
        .I2(\instr_reg[13]_0 ),
        .I3(\instr_reg[5] ),
        .I4(regs_reg_1_i_49_n_0),
        .O(regs_reg_1_i_62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h05455050)) 
    regs_reg_1_i_63
       (.I0(Q[2]),
        .I1(\daddr_reg[30] [16]),
        .I2(Q[3]),
        .I3(regs_reg_1_i_214_n_0),
        .I4(Q[0]),
        .O(regs_reg_1_i_63_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFFBFFF)) 
    regs_reg_1_i_64
       (.I0(\daddr_reg[30] [27]),
        .I1(\daddr_reg[30] [31]),
        .I2(\daddr_reg[30] [28]),
        .I3(\daddr_reg[30] [29]),
        .I4(\daddr_reg[30] [30]),
        .I5(\daddr_reg[30] [21]),
        .O(regs_reg_1_i_64_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    regs_reg_1_i_65
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(regs_reg_1_i_65_n_0));
  LUT6 #(
    .INIT(64'hAA02AAAAAAAAAAAA)) 
    regs_reg_1_i_66
       (.I0(regs_reg_1_i_50_n_0),
        .I1(\daddr_reg[30] [15]),
        .I2(\instr_reg[13]_0 ),
        .I3(\instr_reg[5] ),
        .I4(regs_reg_1_i_52_n_0),
        .I5(regs_reg_1_i_49_n_0),
        .O(regs_reg_1_i_66_n_0));
  LUT6 #(
    .INIT(64'hD0D0D0D0D000D0D0)) 
    regs_reg_1_i_67
       (.I0(regs_reg_1_i_223_n_0),
        .I1(Q[3]),
        .I2(regs_reg_1_i_221_n_0),
        .I3(regs_reg_1_i_214_n_0),
        .I4(Q[0]),
        .I5(\daddr_reg[30] [15]),
        .O(regs_reg_1_i_67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    regs_reg_1_i_68
       (.I0(\daddr_reg[30] [15]),
        .I1(\instr_reg[13]_0 ),
        .I2(\instr_reg[5] ),
        .I3(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_68_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    regs_reg_1_i_69
       (.I0(\daddr_reg[30] [28]),
        .I1(\daddr_reg[30] [12]),
        .I2(\daddr_reg[30] [13]),
        .I3(\daddr_reg[30] [14]),
        .I4(regs_reg_1_i_224_n_0),
        .O(regs_reg_1_i_69_n_0));
  LUT6 #(
    .INIT(64'hFFF1FFF1FFF10000)) 
    regs_reg_1_i_7
       (.I0(regs_reg_1_i_69_n_0),
        .I1(regs_reg_1_i_52_n_0),
        .I2(regs_reg_1_i_70_n_0),
        .I3(regs_reg_1_i_71_n_0),
        .I4(regs_reg_1_i_72_n_0),
        .I5(Q[2]),
        .O(rd_waddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7771)) 
    regs_reg_1_i_70
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(regs_reg_1_i_70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_71
       (.I0(\instr_reg[5] ),
        .I1(regs_reg_1_i_225_n_0),
        .O(regs_reg_1_i_71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    regs_reg_1_i_72
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(regs_reg_1_i_72_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0DDFFFFD0DD)) 
    regs_reg_1_i_73
       (.I0(\daddr_reg[30] [11]),
        .I1(\instr_reg[5] ),
        .I2(regs_reg_1_i_218_n_0),
        .I3(regs_reg_1_i_71_n_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(regs_reg_1_i_73_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h02C3)) 
    regs_reg_1_i_74
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(regs_reg_1_i_74_n_0));
  LUT6 #(
    .INIT(64'h5555000000105050)) 
    regs_reg_1_i_75
       (.I0(Q[2]),
        .I1(\instr_reg[5] ),
        .I2(\daddr_reg[30] [11]),
        .I3(regs_reg_1_i_214_n_0),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(regs_reg_1_i_75_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    regs_reg_1_i_76
       (.I0(\daddr_reg[30] [10]),
        .I1(\instr_reg[5] ),
        .I2(regs_reg_1_i_220_n_0),
        .I3(regs_reg_1_i_71_n_0),
        .O(regs_reg_1_i_76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    regs_reg_1_i_77
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(regs_reg_1_i_77_n_0));
  LUT6 #(
    .INIT(64'h1D071D070F030C03)) 
    regs_reg_1_i_78
       (.I0(regs_reg_1_i_226_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\daddr_reg[30] [10]),
        .I5(Q[3]),
        .O(regs_reg_1_i_78_n_0));
  LUT6 #(
    .INIT(64'hD0DDD0DDFFFFD0DD)) 
    regs_reg_1_i_79
       (.I0(regs_reg_1_i_71_n_0),
        .I1(regs_reg_1_i_222_n_0),
        .I2(\instr_reg[5] ),
        .I3(\daddr_reg[30] [9]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(regs_reg_1_i_79_n_0));
  LUT4 #(
    .INIT(16'hFFF4)) 
    regs_reg_1_i_8
       (.I0(regs_reg_1_i_73_n_0),
        .I1(regs_reg_1_i_52_n_0),
        .I2(regs_reg_1_i_74_n_0),
        .I3(regs_reg_1_i_75_n_0),
        .O(rd_waddr[4]));
  LUT6 #(
    .INIT(64'h5555000000105050)) 
    regs_reg_1_i_80
       (.I0(Q[2]),
        .I1(regs_reg_1_i_214_n_0),
        .I2(\daddr_reg[30] [9]),
        .I3(\instr_reg[5] ),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(regs_reg_1_i_80_n_0));
  LUT6 #(
    .INIT(64'hBEBFBBABBEBFBAAB)) 
    regs_reg_1_i_81
       (.I0(regs_reg_1_i_227_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\daddr_reg[30] [8]),
        .O(regs_reg_1_i_81_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    regs_reg_1_i_82
       (.I0(\daddr_reg[30] [8]),
        .I1(\instr_reg[5] ),
        .I2(regs_reg_1_i_64_n_0),
        .I3(regs_reg_1_i_71_n_0),
        .O(regs_reg_1_i_82_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    regs_reg_1_i_83
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(regs_reg_1_i_83_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    regs_reg_1_i_84
       (.I0(\instr_reg[5] ),
        .I1(\daddr_reg[30] [7]),
        .I2(regs_reg_1_i_223_n_0),
        .I3(regs_reg_1_i_71_n_0),
        .O(regs_reg_1_i_84_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    regs_reg_1_i_85
       (.I0(regs_reg_1_i_214_n_0),
        .I1(\instr_reg[5] ),
        .I2(\daddr_reg[30] [7]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(regs_reg_1_i_228_n_0),
        .O(regs_reg_1_i_85_n_0));
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_86
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_229_n_0),
        .I3(data0[15]),
        .I4(out1_carry__3_i_11_n_0),
        .O(regs_reg_1_i_86_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    regs_reg_1_i_87
       (.I0(ra_rdata0[15]),
        .I1(out0_carry_i_13_n_0),
        .O(regs_reg_1_i_87_n_0));
  LUT4 #(
    .INIT(16'h0600)) 
    regs_reg_1_i_88
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(regs_reg_1_i_88_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_89
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_86_n_0),
        .I2(pc_plus4[12]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_89_n_0));
  LUT5 #(
    .INIT(32'hFFFF0047)) 
    regs_reg_1_i_9
       (.I0(regs_reg_1_i_76_n_0),
        .I1(regs_reg_1_i_52_n_0),
        .I2(regs_reg_1_i_69_n_0),
        .I3(regs_reg_1_i_77_n_0),
        .I4(regs_reg_1_i_78_n_0),
        .O(rd_waddr[3]));
  LUT4 #(
    .INIT(16'h1E02)) 
    regs_reg_1_i_90
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(regs_reg_1_i_90_n_0));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    regs_reg_1_i_91
       (.I0(regs_reg_1_i_232_n_0),
        .I1(\daddr_reg[30] [13]),
        .I2(regs_reg_1_i_233_n_0),
        .I3(regs_reg_1_i_234_n_0),
        .I4(regs_reg_1_2[13]),
        .I5(regs_reg_1_i_235_n_0),
        .O(regs_reg_1_i_91_n_0));
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_92
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_236_n_0),
        .I3(data0[14]),
        .I4(out1_carry__2_i_9_n_0),
        .O(regs_reg_1_i_92_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hB)) 
    regs_reg_1_i_93
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[14]),
        .O(regs_reg_1_i_93_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_94
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_92_n_0),
        .I2(pc_plus4[11]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_94_n_0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    regs_reg_1_i_95
       (.I0(regs_reg_1_i_237_n_0),
        .I1(regs_reg_1_i_238_n_0),
        .I2(\daddr_reg[30] [14]),
        .I3(regs_reg_1_i_234_n_0),
        .I4(regs_reg_1_2[12]),
        .I5(regs_reg_1_i_235_n_0),
        .O(regs_reg_1_i_95_n_0));
  LUT5 #(
    .INIT(32'hB0F090D0)) 
    regs_reg_1_i_96
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\FSM_sequential_state_reg[3] ),
        .I2(regs_reg_1_i_239_n_0),
        .I3(data0[13]),
        .I4(out1_carry__2_i_10_n_0),
        .O(regs_reg_1_i_96_n_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'hB)) 
    regs_reg_1_i_97
       (.I0(out0_carry_i_13_n_0),
        .I1(ra_rdata0[13]),
        .O(regs_reg_1_i_97_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h0FDDCCCC)) 
    regs_reg_1_i_98
       (.I0(regs_reg_1_i_230_n_0),
        .I1(regs_reg_1_i_96_n_0),
        .I2(pc_plus4[10]),
        .I3(regs_reg_1_i_231_n_0),
        .I4(regs_reg_1_i_52_n_0),
        .O(regs_reg_1_i_98_n_0));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    regs_reg_1_i_99
       (.I0(regs_reg_1_i_240_n_0),
        .I1(regs_reg_1_i_238_n_0),
        .I2(\daddr_reg[30] [14]),
        .I3(regs_reg_1_i_234_n_0),
        .I4(regs_reg_1_2[11]),
        .I5(regs_reg_1_i_235_n_0),
        .O(regs_reg_1_i_99_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "regs" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    regs_reg_2
       (.ADDRARDADDR({1'b1,1'b1,1'b1,rb_raddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,rd_waddr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_out1),
        .CLKBWRCLK(clk_out1),
        .DIADI(rd_wdata[15:0]),
        .DIBDI(rd_wdata[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(rb_rdata0[15:0]),
        .DOBDO(rb_rdata0[31:16]),
        .DOPADOP(NLW_regs_reg_2_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_regs_reg_2_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({rd_wen,rd_wen,rd_wen,rd_wen}));
  LUT6 #(
    .INIT(64'h0323032300000030)) 
    regs_reg_2_i_1
       (.I0(regs_reg_2_i_7_n_0),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(regs_reg_2_i_8_n_0),
        .I5(Q[3]),
        .O(rb_raddr[5]));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    regs_reg_2_i_10
       (.I0(\daddr_reg[30] [5]),
        .I1(\daddr_reg[30] [6]),
        .I2(\daddr_reg[30] [4]),
        .I3(\instr_reg[1] ),
        .I4(\daddr_reg[30] [14]),
        .I5(regs_reg_2_i_18_n_0),
        .O(\instr_reg[5] ));
  LUT5 #(
    .INIT(32'hBAFFBAFB)) 
    regs_reg_2_i_11
       (.I0(\instr_reg[13]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(regs_reg_2_i_11_n_0));
  LUT6 #(
    .INIT(64'h002000200020AAAA)) 
    regs_reg_2_i_12
       (.I0(regs_reg_2_i_19_n_0),
        .I1(\instr_reg[5] ),
        .I2(\daddr_reg[30] [23]),
        .I3(regs_reg_2_i_20_n_0),
        .I4(regs_reg_1_i_220_n_0),
        .I5(regs_reg_2_i_21_n_0),
        .O(regs_reg_2_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFBB3333FFB83333)) 
    regs_reg_2_i_13
       (.I0(regs_reg_2_i_22_n_0),
        .I1(Q[3]),
        .I2(regs_reg_2_i_8_n_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(regs_reg_1_i_222_n_0),
        .O(regs_reg_2_i_13_n_0));
  LUT6 #(
    .INIT(64'hCFCF8F8FCFCF8F83)) 
    regs_reg_2_i_14
       (.I0(regs_reg_2_i_23_n_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(regs_reg_2_i_8_n_0),
        .I4(Q[1]),
        .I5(regs_reg_1_i_64_n_0),
        .O(regs_reg_2_i_14_n_0));
  LUT6 #(
    .INIT(64'h0202020202AA0202)) 
    regs_reg_2_i_15
       (.I0(regs_reg_2_i_19_n_0),
        .I1(regs_reg_1_i_223_n_0),
        .I2(regs_reg_2_i_21_n_0),
        .I3(regs_reg_2_i_20_n_0),
        .I4(\daddr_reg[30] [20]),
        .I5(\instr_reg[5] ),
        .O(regs_reg_2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    regs_reg_2_i_16
       (.I0(\daddr_reg[30] [1]),
        .I1(\daddr_reg[30] [0]),
        .I2(\daddr_reg[30] [2]),
        .I3(\daddr_reg[30] [3]),
        .O(\instr_reg[1] ));
  LUT5 #(
    .INIT(32'hFB00FBFB)) 
    regs_reg_2_i_17
       (.I0(\instr_reg[5] ),
        .I1(\daddr_reg[30] [24]),
        .I2(regs_reg_1_i_214_n_0),
        .I3(regs_reg_1_i_218_n_0),
        .I4(\daddr[30]_i_7_n_0 ),
        .O(regs_reg_2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_2_i_18
       (.I0(\daddr_reg[30] [13]),
        .I1(\daddr_reg[30] [12]),
        .O(regs_reg_2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h04)) 
    regs_reg_2_i_19
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(regs_reg_2_i_19_n_0));
  LUT6 #(
    .INIT(64'h111111F111111111)) 
    regs_reg_2_i_2
       (.I0(regs_reg_2_i_9_n_0),
        .I1(Q[2]),
        .I2(\daddr_reg[30] [24]),
        .I3(\instr_reg[5] ),
        .I4(regs_reg_2_i_11_n_0),
        .I5(regs_reg_1_i_52_n_0),
        .O(rb_raddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    regs_reg_2_i_20
       (.I0(regs_reg_1_i_214_n_0),
        .I1(Q[3]),
        .O(regs_reg_2_i_20_n_0));
  LUT4 #(
    .INIT(16'hCFEF)) 
    regs_reg_2_i_21
       (.I0(Q[3]),
        .I1(regs_reg_1_i_224_n_0),
        .I2(\daddr_reg[30] [13]),
        .I3(\daddr_reg[30] [12]),
        .O(regs_reg_2_i_21_n_0));
  LUT5 #(
    .INIT(32'hFB00FBFB)) 
    regs_reg_2_i_22
       (.I0(\instr_reg[5] ),
        .I1(\daddr_reg[30] [22]),
        .I2(regs_reg_1_i_214_n_0),
        .I3(regs_reg_1_i_222_n_0),
        .I4(\daddr[30]_i_7_n_0 ),
        .O(regs_reg_2_i_22_n_0));
  LUT5 #(
    .INIT(32'hFB00FBFB)) 
    regs_reg_2_i_23
       (.I0(\instr_reg[5] ),
        .I1(\daddr_reg[30] [21]),
        .I2(regs_reg_1_i_214_n_0),
        .I3(regs_reg_1_i_64_n_0),
        .I4(\daddr[30]_i_7_n_0 ),
        .O(regs_reg_2_i_23_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    regs_reg_2_i_3
       (.I0(regs_reg_2_i_12_n_0),
        .I1(\instr_reg[5] ),
        .I2(\daddr_reg[30] [23]),
        .I3(\instr_reg[13]_0 ),
        .I4(regs_reg_1_i_70_n_0),
        .I5(regs_reg_1_i_52_n_0),
        .O(rb_raddr[3]));
  LUT6 #(
    .INIT(64'h11111F1111111111)) 
    regs_reg_2_i_4
       (.I0(regs_reg_2_i_13_n_0),
        .I1(Q[2]),
        .I2(regs_reg_2_i_11_n_0),
        .I3(\daddr_reg[30] [22]),
        .I4(\instr_reg[5] ),
        .I5(regs_reg_1_i_52_n_0),
        .O(rb_raddr[2]));
  LUT6 #(
    .INIT(64'h11111F1111111111)) 
    regs_reg_2_i_5
       (.I0(regs_reg_2_i_14_n_0),
        .I1(Q[2]),
        .I2(regs_reg_2_i_11_n_0),
        .I3(\daddr_reg[30] [21]),
        .I4(\instr_reg[5] ),
        .I5(regs_reg_1_i_52_n_0),
        .O(rb_raddr[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0400)) 
    regs_reg_2_i_6
       (.I0(regs_reg_2_i_11_n_0),
        .I1(\daddr_reg[30] [20]),
        .I2(\instr_reg[5] ),
        .I3(regs_reg_1_i_52_n_0),
        .I4(regs_reg_2_i_15_n_0),
        .I5(regs_reg_1_i_83_n_0),
        .O(rb_raddr[0]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    regs_reg_2_i_7
       (.I0(\daddr_reg[30] [12]),
        .I1(\daddr_reg[30] [13]),
        .I2(\daddr_reg[30] [5]),
        .I3(\daddr_reg[30] [6]),
        .I4(\daddr_reg[30] [4]),
        .I5(\instr_reg[1] ),
        .O(regs_reg_2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    regs_reg_2_i_8
       (.I0(\daddr_reg[30] [5]),
        .I1(\daddr_reg[30] [6]),
        .I2(\daddr_reg[30] [4]),
        .I3(\instr_reg[1] ),
        .I4(\daddr_reg[30] [13]),
        .O(regs_reg_2_i_8_n_0));
  LUT6 #(
    .INIT(64'hCFCF8F8FCFCF8F83)) 
    regs_reg_2_i_9
       (.I0(regs_reg_2_i_17_n_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(regs_reg_2_i_8_n_0),
        .I4(Q[1]),
        .I5(regs_reg_1_i_218_n_0),
        .O(regs_reg_2_i_9_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_dready_r_i_4
       (.I0(regs_reg_1_i_333_0[5]),
        .I1(regs_reg_1_i_333_0[3]),
        .I2(regs_reg_1_i_333_0[4]),
        .O(\daddr_reg[7] ));
  LUT6 #(
    .INIT(64'h0000D1DDFFFFD1DD)) 
    \shift_amt[0]_i_1 
       (.I0(\daddr_reg[30] [20]),
        .I1(\shift_amt_reg[4] ),
        .I2(\shift_amt[0]_i_2_n_0 ),
        .I3(rb_rdata0[0]),
        .I4(Q[0]),
        .I5(\shift_amt_reg[4]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \shift_amt[0]_i_2 
       (.I0(rb_raddr_r[4]),
        .I1(rb_raddr_r[0]),
        .I2(rb_raddr_r[5]),
        .I3(rb_raddr_r[3]),
        .I4(rb_raddr_r[1]),
        .I5(rb_raddr_r[2]),
        .O(\shift_amt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    \shift_amt[1]_i_1 
       (.I0(\daddr_reg[30] [21]),
        .I1(\shift_amt_reg[4] ),
        .I2(regs_reg_2_0),
        .I3(Q[0]),
        .I4(\shift_amt_reg[4]_0 [1]),
        .I5(\shift_amt[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \shift_amt[1]_i_2 
       (.I0(\shift_amt_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(rb_rdata0[0]),
        .I3(\shift_amt[0]_i_2_n_0 ),
        .I4(\shift_amt_reg[4] ),
        .I5(\daddr_reg[30] [20]),
        .O(\shift_amt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \shift_amt[2]_i_1 
       (.I0(\shift_amt[2]_i_2_n_0 ),
        .I1(\daddr_reg[30] [22]),
        .I2(\shift_amt_reg[4] ),
        .I3(regs_reg_2_1[1]),
        .I4(Q[0]),
        .I5(\shift_amt_reg[4]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \shift_amt[2]_i_2 
       (.I0(\daddr_reg[30] [21]),
        .I1(\shift_amt_reg[4] ),
        .I2(regs_reg_2_0),
        .I3(Q[0]),
        .I4(\shift_amt_reg[4]_0 [1]),
        .I5(\shift_amt[1]_i_2_n_0 ),
        .O(\shift_amt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \shift_amt[3]_i_1 
       (.I0(\shift_amt[3]_i_2_n_0 ),
        .I1(\daddr_reg[30] [23]),
        .I2(\shift_amt_reg[4] ),
        .I3(regs_reg_2_1[2]),
        .I4(Q[0]),
        .I5(\shift_amt_reg[4]_0 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \shift_amt[3]_i_2 
       (.I0(\shift_amt[2]_i_2_n_0 ),
        .I1(\daddr_reg[30] [22]),
        .I2(\shift_amt_reg[4] ),
        .I3(regs_reg_2_1[1]),
        .I4(Q[0]),
        .I5(\shift_amt_reg[4]_0 [2]),
        .O(\shift_amt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA999A966655565)) 
    \shift_amt[4]_i_2 
       (.I0(\shift_amt[4]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\daddr_reg[30] [24]),
        .I3(\shift_amt_reg[4] ),
        .I4(regs_reg_2_1[3]),
        .I5(\shift_amt_reg[4]_0 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFE200E2FFFFFFFF)) 
    \shift_amt[4]_i_4 
       (.I0(\daddr_reg[30] [23]),
        .I1(\shift_amt_reg[4] ),
        .I2(regs_reg_2_1[2]),
        .I3(Q[0]),
        .I4(\shift_amt_reg[4]_0 [3]),
        .I5(\shift_amt[3]_i_2_n_0 ),
        .O(\shift_amt[4]_i_4_n_0 ));
endmodule

(* NotValidForBitStream *)
module fwrisc_uart_wraper
   (clock,
    reset,
    rx,
    tx,
    program_receiving,
    program_ov,
    program_done);
  input clock;
  input reset;
  input rx;
  output tx;
  output program_receiving;
  output program_ov;
  output program_done;

  wire clk;
  (* IBUF_LOW_PWR *) wire clock;
  wire program_done;
  wire program_done_OBUF;
  wire program_ov;
  wire program_ov_OBUF;
  wire program_receiving;
  wire program_receiving_OBUF;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;
  wire NLW_u_clock_gen_locked_UNCONNECTED;

  OBUF program_done_OBUF_inst
       (.I(program_done_OBUF),
        .O(program_done));
  OBUF program_ov_OBUF_inst
       (.I(program_ov_OBUF),
        .O(program_ov));
  OBUF program_receiving_OBUF_inst
       (.I(program_receiving_OBUF),
        .O(program_receiving));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  clk_wiz_0 u_clock_gen
       (.clk_in1(clock),
        .clk_out1(clk),
        .locked(NLW_u_clock_gen_locked_UNCONNECTED),
        .reset(reset_IBUF));
  fwrisc_fpga_top u_fwrisc_fpga_top
       (.D(rx_IBUF),
        .clk_out1(clk),
        .program_done_OBUF(program_done_OBUF),
        .program_ov_OBUF(program_ov_OBUF),
        .program_receiving_OBUF(program_receiving_OBUF),
        .reset_IBUF(reset_IBUF),
        .tx(tx_OBUF));
endmodule

module my_fifo
   (empty_reg_0,
    D,
    clk_out1,
    reset_IBUF,
    empty_reg_1,
    \addra_reg[2]_0 ,
    E,
    \doutb_reg[7] ,
    \doutb_reg[7]_0 );
  output empty_reg_0;
  output [8:0]D;
  input clk_out1;
  input reset_IBUF;
  input empty_reg_1;
  input \addra_reg[2]_0 ;
  input [0:0]E;
  input \doutb_reg[7] ;
  input [7:0]\doutb_reg[7]_0 ;

  wire [8:0]D;
  wire [0:0]E;
  wire \addra[0]_i_1_n_0 ;
  wire \addra[1]_i_1_n_0 ;
  wire \addra[2]_i_1_n_0 ;
  wire \addra_reg[2]_0 ;
  wire \addra_reg_n_0_[0] ;
  wire \addra_reg_n_0_[1] ;
  wire \addra_reg_n_0_[2] ;
  wire \addrb[0]_i_1_n_0 ;
  wire \addrb[1]_i_1_n_0 ;
  wire \addrb[2]_i_1_n_0 ;
  wire \addrb_reg_n_0_[0] ;
  wire \addrb_reg_n_0_[1] ;
  wire \addrb_reg_n_0_[2] ;
  wire clk_out1;
  wire \doutb_reg[7] ;
  wire [7:0]\doutb_reg[7]_0 ;
  wire empty_i_1__0_n_0;
  wire empty_i_2__0_n_0;
  wire empty_reg_0;
  wire empty_reg_1;
  wire full_i_1__0_n_0;
  wire full_i_2__0_n_0;
  wire reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \addra[0]_i_1 
       (.I0(\addra_reg[2]_0 ),
        .I1(D[8]),
        .I2(\addra_reg_n_0_[0] ),
        .O(\addra[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \addra[1]_i_1 
       (.I0(\addra_reg[2]_0 ),
        .I1(D[8]),
        .I2(\addra_reg_n_0_[0] ),
        .I3(\addra_reg_n_0_[1] ),
        .O(\addra[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \addra[2]_i_1 
       (.I0(\addra_reg[2]_0 ),
        .I1(D[8]),
        .I2(\addra_reg_n_0_[0] ),
        .I3(\addra_reg_n_0_[1] ),
        .I4(\addra_reg_n_0_[2] ),
        .O(\addra[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[0]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[1]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[2]_i_1_n_0 ),
        .Q(\addra_reg_n_0_[2] ),
        .R(reset_IBUF));
  LUT3 #(
    .INIT(8'hD2)) 
    \addrb[0]_i_1 
       (.I0(empty_reg_1),
        .I1(empty_reg_0),
        .I2(\addrb_reg_n_0_[0] ),
        .O(\addrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \addrb[1]_i_1 
       (.I0(empty_reg_1),
        .I1(empty_reg_0),
        .I2(\addrb_reg_n_0_[0] ),
        .I3(\addrb_reg_n_0_[1] ),
        .O(\addrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \addrb[2]_i_1 
       (.I0(empty_reg_1),
        .I1(empty_reg_0),
        .I2(\addrb_reg_n_0_[0] ),
        .I3(\addrb_reg_n_0_[1] ),
        .I4(\addrb_reg_n_0_[2] ),
        .O(\addrb[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[0]_i_1_n_0 ),
        .Q(\addrb_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[1]_i_1_n_0 ),
        .Q(\addrb_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[2]_i_1_n_0 ),
        .Q(\addrb_reg_n_0_[2] ),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'hCECFCECE)) 
    empty_i_1__0
       (.I0(empty_reg_0),
        .I1(reset_IBUF),
        .I2(\addra_reg[2]_0 ),
        .I3(empty_i_2__0_n_0),
        .I4(empty_reg_1),
        .O(empty_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFF6FFFF6F9FF6FFF)) 
    empty_i_2__0
       (.I0(\addrb_reg_n_0_[2] ),
        .I1(\addra_reg_n_0_[2] ),
        .I2(\addra_reg_n_0_[1] ),
        .I3(\addrb_reg_n_0_[0] ),
        .I4(\addrb_reg_n_0_[1] ),
        .I5(\addra_reg_n_0_[0] ),
        .O(empty_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(empty_i_1__0_n_0),
        .Q(empty_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    full_i_1__0
       (.I0(\addra_reg[2]_0 ),
        .I1(full_i_2__0_n_0),
        .I2(D[8]),
        .I3(empty_reg_1),
        .O(full_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFE7FDFBFEFF7FDFB)) 
    full_i_2__0
       (.I0(\addrb_reg_n_0_[1] ),
        .I1(\addrb_reg_n_0_[0] ),
        .I2(\addra_reg_n_0_[2] ),
        .I3(\addra_reg_n_0_[0] ),
        .I4(\addra_reg_n_0_[1] ),
        .I5(\addrb_reg_n_0_[2] ),
        .O(full_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    full_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(full_i_1__0_n_0),
        .Q(D[8]),
        .R(reset_IBUF));
  my_ram_3 u_yzb_ram
       (.D(D[7:0]),
        .E(E),
        .clk_out1(clk_out1),
        .\doutb_reg[7]_0 (\doutb_reg[7] ),
        .\doutb_reg[7]_1 (\doutb_reg[7]_0 ),
        .\doutb_reg[7]_2 (\addrb_reg_n_0_[2] ),
        .\doutb_reg[7]_3 (\addrb_reg_n_0_[1] ),
        .\doutb_reg[7]_4 (\addrb_reg_n_0_[0] ),
        .\doutb_reg[7]_5 (\addra_reg_n_0_[2] ),
        .\doutb_reg[7]_6 (\addra_reg_n_0_[1] ),
        .\doutb_reg[7]_7 (\addra_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "my_fifo" *) 
module my_fifo_2
   (tx_fifo_full,
    D,
    \doutb_reg[0] ,
    \doutb_reg[4] ,
    reset_IBUF,
    clk_out1,
    empty_reg_0,
    rd_en,
    tx_o_i_4,
    p_0_in,
    \doutb_reg[7] ,
    \doutb_reg[7]_0 );
  output tx_fifo_full;
  output [8:0]D;
  output \doutb_reg[0] ;
  output \doutb_reg[4] ;
  input reset_IBUF;
  input clk_out1;
  input empty_reg_0;
  input rd_en;
  input [1:0]tx_o_i_4;
  input p_0_in;
  input [0:0]\doutb_reg[7] ;
  input [7:0]\doutb_reg[7]_0 ;

  wire [8:0]D;
  wire [2:0]addra;
  wire \addra[0]_i_1_n_0 ;
  wire \addra[1]_i_1_n_0 ;
  wire \addra[2]_i_1_n_0 ;
  wire [2:0]addrb;
  wire [2:2]addrb0;
  wire \addrb[0]_i_1_n_0 ;
  wire \addrb[1]_i_1_n_0 ;
  wire \addrb[2]_i_1_n_0 ;
  wire catchup_w;
  wire clk_out1;
  wire \doutb_reg[0] ;
  wire \doutb_reg[4] ;
  wire [0:0]\doutb_reg[7] ;
  wire [7:0]\doutb_reg[7]_0 ;
  wire empty_i_1_n_0;
  wire empty_i_3_n_0;
  wire empty_reg_0;
  wire full_i_1_n_0;
  wire full_i_3_n_0;
  wire p_0_in;
  wire rd_en;
  wire reset_IBUF;
  wire tx_fifo_full;
  wire [1:0]tx_o_i_4;

  LUT2 #(
    .INIT(4'h6)) 
    \addra[0]_i_1 
       (.I0(p_0_in),
        .I1(addra[0]),
        .O(\addra[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addra[1]_i_1 
       (.I0(addra[0]),
        .I1(p_0_in),
        .I2(addra[1]),
        .O(\addra[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addra[2]_i_1 
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(p_0_in),
        .I3(addra[2]),
        .O(\addra[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[0]_i_1_n_0 ),
        .Q(addra[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[1]_i_1_n_0 ),
        .Q(addra[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addra[2]_i_1_n_0 ),
        .Q(addra[2]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \addrb[0]_i_1 
       (.I0(D[8]),
        .I1(rd_en),
        .I2(addrb[0]),
        .O(\addrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \addrb[1]_i_1 
       (.I0(addrb[0]),
        .I1(rd_en),
        .I2(D[8]),
        .I3(addrb[1]),
        .O(\addrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \addrb[2]_i_1 
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .I2(rd_en),
        .I3(D[8]),
        .I4(addrb[2]),
        .O(\addrb[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[0]_i_1_n_0 ),
        .Q(addrb[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[1]_i_1_n_0 ),
        .Q(addrb[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \addrb_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\addrb[2]_i_1_n_0 ),
        .Q(addrb[2]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0009)) 
    empty_i_1
       (.I0(addrb0),
        .I1(addra[2]),
        .I2(empty_i_3_n_0),
        .I3(empty_reg_0),
        .I4(D[8]),
        .I5(reset_IBUF),
        .O(empty_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    empty_i_2
       (.I0(addrb[2]),
        .I1(addrb[0]),
        .I2(addrb[1]),
        .O(addrb0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hFB7FBFF7)) 
    empty_i_3
       (.I0(addra[0]),
        .I1(rd_en),
        .I2(addrb[1]),
        .I3(addrb[0]),
        .I4(addra[1]),
        .O(empty_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .Q(D[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    full_i_1
       (.I0(tx_fifo_full),
        .I1(rd_en),
        .I2(catchup_w),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000028888222)) 
    full_i_2
       (.I0(empty_reg_0),
        .I1(addrb[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[2]),
        .I5(full_i_3_n_0),
        .O(catchup_w));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hFEDFEFFD)) 
    full_i_3
       (.I0(addrb[0]),
        .I1(rd_en),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addrb[1]),
        .O(full_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    full_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(full_i_1_n_0),
        .Q(tx_fifo_full),
        .R(reset_IBUF));
  my_ram u_yzb_ram
       (.D(D[7:0]),
        .addra(addra),
        .addrb(addrb),
        .clk_out1(clk_out1),
        .\doutb_reg[0]_0 (\doutb_reg[0] ),
        .\doutb_reg[4]_0 (\doutb_reg[4] ),
        .\doutb_reg[7]_0 (\doutb_reg[7] ),
        .\doutb_reg[7]_1 (\doutb_reg[7]_0 ),
        .p_0_in(p_0_in),
        .tx_o_i_4(tx_o_i_4));
endmodule

module my_ram
   (\doutb_reg[0]_0 ,
    D,
    \doutb_reg[4]_0 ,
    tx_o_i_4,
    \doutb_reg[7]_0 ,
    clk_out1,
    p_0_in,
    \doutb_reg[7]_1 ,
    addrb,
    addra);
  output \doutb_reg[0]_0 ;
  output [7:0]D;
  output \doutb_reg[4]_0 ;
  input [1:0]tx_o_i_4;
  input [0:0]\doutb_reg[7]_0 ;
  input clk_out1;
  input p_0_in;
  input [7:0]\doutb_reg[7]_1 ;
  input [2:0]addrb;
  input [2:0]addra;

  wire [7:0]D;
  wire [2:0]addra;
  wire [2:0]addrb;
  wire clk_out1;
  wire [7:0]doutb0;
  wire \doutb_reg[0]_0 ;
  wire \doutb_reg[4]_0 ;
  wire [0:0]\doutb_reg[7]_0 ;
  wire [7:0]\doutb_reg[7]_1 ;
  wire p_0_in;
  wire [1:0]tx_o_i_4;
  wire [1:0]NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[0] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[1] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[2] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[3] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[4] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[5] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[6] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[7] 
       (.C(clk_out1),
        .CE(\doutb_reg[7]_0 ),
        .D(doutb0[7]),
        .Q(D[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,addrb}),
        .ADDRB({1'b0,1'b0,addrb}),
        .ADDRC({1'b0,1'b0,addrb}),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(\doutb_reg[7]_1 [1:0]),
        .DIB(\doutb_reg[7]_1 [3:2]),
        .DIC(\doutb_reg[7]_1 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb0[1:0]),
        .DOB(doutb0[3:2]),
        .DOC(doutb0[5:4]),
        .DOD(NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,addrb}),
        .ADDRB({1'b0,1'b0,addrb}),
        .ADDRC({1'b0,1'b0,addrb}),
        .ADDRD({1'b0,1'b0,addra}),
        .DIA(\doutb_reg[7]_1 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb0[7:6]),
        .DOB(NLW_ram_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    tx_o_i_5
       (.I0(D[4]),
        .I1(D[5]),
        .I2(tx_o_i_4[0]),
        .I3(tx_o_i_4[1]),
        .I4(D[6]),
        .I5(D[7]),
        .O(\doutb_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    tx_o_i_6
       (.I0(D[0]),
        .I1(D[1]),
        .I2(tx_o_i_4[0]),
        .I3(tx_o_i_4[1]),
        .I4(D[2]),
        .I5(D[3]),
        .O(\doutb_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "my_ram" *) 
module my_ram_3
   (D,
    E,
    clk_out1,
    \doutb_reg[7]_0 ,
    \doutb_reg[7]_1 ,
    \doutb_reg[7]_2 ,
    \doutb_reg[7]_3 ,
    \doutb_reg[7]_4 ,
    \doutb_reg[7]_5 ,
    \doutb_reg[7]_6 ,
    \doutb_reg[7]_7 );
  output [7:0]D;
  input [0:0]E;
  input clk_out1;
  input \doutb_reg[7]_0 ;
  input [7:0]\doutb_reg[7]_1 ;
  input \doutb_reg[7]_2 ;
  input \doutb_reg[7]_3 ;
  input \doutb_reg[7]_4 ;
  input \doutb_reg[7]_5 ;
  input \doutb_reg[7]_6 ;
  input \doutb_reg[7]_7 ;

  wire [7:0]D;
  wire [0:0]E;
  wire clk_out1;
  wire [7:0]doutb0__0;
  wire \doutb_reg[7]_0 ;
  wire [7:0]\doutb_reg[7]_1 ;
  wire \doutb_reg[7]_2 ;
  wire \doutb_reg[7]_3 ;
  wire \doutb_reg[7]_4 ;
  wire \doutb_reg[7]_5 ;
  wire \doutb_reg[7]_6 ;
  wire \doutb_reg[7]_7 ;
  wire [1:0]NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_7_6_7_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutb_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(doutb0__0[7]),
        .Q(D[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRB({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRC({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRD({1'b0,1'b0,\doutb_reg[7]_5 ,\doutb_reg[7]_6 ,\doutb_reg[7]_7 }),
        .DIA(\doutb_reg[7]_1 [1:0]),
        .DIB(\doutb_reg[7]_1 [3:2]),
        .DIC(\doutb_reg[7]_1 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(doutb0__0[1:0]),
        .DOB(doutb0__0[3:2]),
        .DOC(doutb0__0[5:4]),
        .DOD(NLW_ram_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(\doutb_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_7_6_7
       (.ADDRA({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRB({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRC({1'b0,1'b0,\doutb_reg[7]_2 ,\doutb_reg[7]_3 ,\doutb_reg[7]_4 }),
        .ADDRD({1'b0,1'b0,\doutb_reg[7]_5 ,\doutb_reg[7]_6 ,\doutb_reg[7]_7 }),
        .DIA(\doutb_reg[7]_1 [7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(doutb0__0[7:6]),
        .DOB(NLW_ram_reg_0_7_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_ram_reg_0_7_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_7_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(\doutb_reg[7]_0 ));
endmodule

module uart
   (dready_r,
    rx_dready_r,
    tx,
    dready_o,
    Q,
    tx_fifo_full,
    rx_fifo_empty,
    tx_en,
    rx_en,
    \UART_Baudrate_Div_reg[6] ,
    \UART_Tx_Buffer_reg[31] ,
    rx_reg2_reg,
    \UART_Rx_Buffer_reg[31] ,
    dready_fifo,
    clk_out1,
    E,
    reset_IBUF,
    D,
    dready_o_reg,
    \UART_Tx_Ctrl_reg[0] ,
    \UART_Rx_Ctrl_reg[0] ,
    empty_reg,
    empty_reg_0,
    regs_reg_1_i_364,
    rx_program_en,
    program_ov_OBUF,
    p_0_in,
    \UART_Baudrate_Div_reg[31] ,
    \UART_Baudrate_Div_reg[0] );
  output dready_r;
  output rx_dready_r;
  output tx;
  output dready_o;
  output [30:0]Q;
  output tx_fifo_full;
  output rx_fifo_empty;
  output tx_en;
  output rx_en;
  output \UART_Baudrate_Div_reg[6] ;
  output [7:0]\UART_Tx_Buffer_reg[31] ;
  output rx_reg2_reg;
  output [7:0]\UART_Rx_Buffer_reg[31] ;
  input dready_fifo;
  input clk_out1;
  input [0:0]E;
  input reset_IBUF;
  input [0:0]D;
  input dready_o_reg;
  input \UART_Tx_Ctrl_reg[0] ;
  input \UART_Rx_Ctrl_reg[0] ;
  input empty_reg;
  input empty_reg_0;
  input [2:0]regs_reg_1_i_364;
  input rx_program_en;
  input program_ov_OBUF;
  input p_0_in;
  input [31:0]\UART_Baudrate_Div_reg[31] ;
  input [0:0]\UART_Baudrate_Div_reg[0] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [30:0]Q;
  wire [6:6]UART_Baudrate_Div;
  wire [0:0]\UART_Baudrate_Div_reg[0] ;
  wire [31:0]\UART_Baudrate_Div_reg[31] ;
  wire \UART_Baudrate_Div_reg[6] ;
  wire [7:0]\UART_Rx_Buffer_reg[31] ;
  wire \UART_Rx_Ctrl_reg[0] ;
  wire [7:0]\UART_Tx_Buffer_reg[31] ;
  wire \UART_Tx_Ctrl_reg[0] ;
  wire [1:0]bit_cnt_reg__0;
  wire clk_out1;
  wire dready_fifo;
  wire dready_o;
  wire dready_o_reg;
  wire dready_r;
  wire empty_reg;
  wire empty_reg_0;
  wire fifo_empty;
  wire fifo_full;
  wire p_0_in;
  wire program_ov_OBUF;
  wire rd_en;
  wire [2:0]regs_reg_1_i_364;
  wire reset_IBUF;
  wire [7:0]rx_data;
  wire rx_dready_r;
  wire rx_en;
  wire rx_fifo_empty;
  wire rx_program_en;
  wire rx_reg2_reg;
  wire [18:1]tick_should_flip0;
  wire tx;
  wire tx_en;
  wire tx_fifo_full;
  wire u_UART_Registers_n_42;
  wire u_UART_Registers_n_43;
  wire u_UART_Registers_n_44;
  wire u_UART_Registers_n_45;
  wire u_UART_Registers_n_46;
  wire u_UART_Registers_n_47;
  wire u_UART_Registers_n_48;
  wire u_UART_Registers_n_49;
  wire u_UART_Registers_n_50;
  wire u_UART_Registers_n_51;
  wire u_UART_Registers_n_52;
  wire u_UART_Registers_n_53;
  wire u_UART_Registers_n_54;
  wire u_UART_Registers_n_55;
  wire u_UART_Registers_n_56;
  wire u_UART_Registers_n_57;
  wire u_UART_Registers_n_58;
  wire u_UART_Registers_n_59;
  wire u_UART_Registers_n_60;
  wire u_UART_Registers_n_61;
  wire u_UART_Registers_n_62;
  wire u_UART_Registers_n_63;
  wire \u_UART_baudrate_gen/cnt_should_zero ;
  wire u_UART_rx_fsm_n_1;
  wire u_UART_tx_fsm_n_20;
  wire u_UART_tx_fsm_n_22;
  wire \u_rx_fifo/addra ;
  wire \u_tx_fifo/enb0 ;

  UART_Registers u_UART_Registers
       (.CO(\u_UART_baudrate_gen/cnt_should_zero ),
        .E(E),
        .Q({Q[30:6],UART_Baudrate_Div,Q[5:0]}),
        .S({u_UART_Registers_n_44,u_UART_Registers_n_45}),
        .\UART_Baudrate_Div_reg[0]_0 (\UART_Baudrate_Div_reg[0] ),
        .\UART_Baudrate_Div_reg[13]_0 ({u_UART_Registers_n_50,u_UART_Registers_n_51,u_UART_Registers_n_52,u_UART_Registers_n_53}),
        .\UART_Baudrate_Div_reg[17]_0 ({u_UART_Registers_n_46,u_UART_Registers_n_47,u_UART_Registers_n_48,u_UART_Registers_n_49}),
        .\UART_Baudrate_Div_reg[31]_0 (\UART_Baudrate_Div_reg[31] ),
        .\UART_Baudrate_Div_reg[5]_0 ({u_UART_Registers_n_58,u_UART_Registers_n_59,u_UART_Registers_n_60,u_UART_Registers_n_61}),
        .\UART_Baudrate_Div_reg[6]_0 (\UART_Baudrate_Div_reg[6] ),
        .\UART_Baudrate_Div_reg[9]_0 ({u_UART_Registers_n_54,u_UART_Registers_n_55,u_UART_Registers_n_56,u_UART_Registers_n_57}),
        .\UART_Rx_Buffer_reg[31]_0 (\UART_Rx_Buffer_reg[31] ),
        .\UART_Rx_Ctrl_reg[0]_0 (\UART_Rx_Ctrl_reg[0] ),
        .\UART_Tx_Buffer_reg[31]_0 (\UART_Tx_Buffer_reg[31] ),
        .\UART_Tx_Ctrl_reg[0]_0 (tx_en),
        .\UART_Tx_Ctrl_reg[0]_1 (u_UART_Registers_n_62),
        .\UART_Tx_Ctrl_reg[0]_2 (u_UART_Registers_n_63),
        .\UART_Tx_Ctrl_reg[0]_3 (\UART_Tx_Ctrl_reg[0] ),
        .\addra_reg[2] (u_UART_rx_fsm_n_1),
        .clk_out1(clk_out1),
        .\cs_reg[1] (u_UART_tx_fsm_n_22),
        .\doutb_reg[0] (u_UART_Registers_n_42),
        .\doutb_reg[4] (u_UART_Registers_n_43),
        .\doutb_reg[7] (\u_tx_fifo/enb0 ),
        .\doutb_reg[7]_0 (\u_rx_fifo/addra ),
        .\doutb_reg[7]_1 (rx_data),
        .dready_fifo(dready_fifo),
        .dready_o(dready_o),
        .dready_o_reg_0(dready_o_reg),
        .dready_r(dready_r),
        .empty_reg(rx_fifo_empty),
        .empty_reg_0(empty_reg),
        .empty_reg_1(empty_reg_0),
        .fifo_empty(fifo_empty),
        .fifo_full(fifo_full),
        .p_0_in(p_0_in),
        .rd_en(rd_en),
        .regs_reg_1_i_364(regs_reg_1_i_364),
        .reset_IBUF(reset_IBUF),
        .rx_dready_r(rx_dready_r),
        .rx_en(rx_en),
        .tx_fifo_full(tx_fifo_full),
        .tx_o_i_4(bit_cnt_reg__0));
  UART_rx_fsm_0 u_UART_rx_fsm
       (.CO(u_UART_tx_fsm_n_20),
        .D(D),
        .Q(Q[1]),
        .clk_out1(clk_out1),
        .\cs_reg[0]_0 (u_UART_rx_fsm_n_1),
        .fifo_full(fifo_full),
        .full_reg(\u_rx_fifo/addra ),
        .program_ov_OBUF(program_ov_OBUF),
        .reset_IBUF(reset_IBUF),
        .\rx_data_reg[7]_0 (rx_data),
        .rx_en(rx_en),
        .rx_program_en(rx_program_en),
        .rx_reg2_reg_0(rx_reg2_reg),
        .tick_should_flip0(tick_should_flip0));
  UART_tx_fsm u_UART_tx_fsm
       (.CO(u_UART_tx_fsm_n_20),
        .Q({Q[18:6],UART_Baudrate_Div,Q[5:1]}),
        .S({u_UART_Registers_n_44,u_UART_Registers_n_45}),
        .\UART_Baudrate_Div_reg[19] (\u_UART_baudrate_gen/cnt_should_zero ),
        .\bit_cnt_reg[1]_0 (bit_cnt_reg__0),
        .\clk_cnt_reg[19] (u_UART_Registers_n_62),
        .clk_out1(clk_out1),
        .\cs_reg[0]_0 (u_UART_tx_fsm_n_22),
        .\cs_reg[1]_0 (u_UART_Registers_n_63),
        .\cs_reg[2]_0 (tx_en),
        .fifo_empty(fifo_empty),
        .rd_en(rd_en),
        .rd_en_o_reg_0(\u_tx_fifo/enb0 ),
        .reset_IBUF(reset_IBUF),
        .tick_should_flip0(tick_should_flip0),
        .tick_should_flip_carry__0_i_3__0({u_UART_Registers_n_46,u_UART_Registers_n_47,u_UART_Registers_n_48,u_UART_Registers_n_49}),
        .tick_should_flip_carry_i_1__0({u_UART_Registers_n_50,u_UART_Registers_n_51,u_UART_Registers_n_52,u_UART_Registers_n_53}),
        .tick_should_flip_carry_i_3__0({u_UART_Registers_n_54,u_UART_Registers_n_55,u_UART_Registers_n_56,u_UART_Registers_n_57}),
        .tick_should_flip_carry_i_4__0({u_UART_Registers_n_58,u_UART_Registers_n_59,u_UART_Registers_n_60,u_UART_Registers_n_61}),
        .tx(tx),
        .tx_o_reg_0(u_UART_Registers_n_43),
        .tx_o_reg_1(u_UART_Registers_n_42));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
