//----------------------------------------------------
// //filename: IF_fifoinput	v
// //Author: yuzhenbo
// //CreateTime: 2019-06-30 11:20:01
// //Description: BUS和tx_fifo写端口之间的接口。
//	当full有效时，suspend BUS的ready信号，将未写入fifo的数据保持在BUS上
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 
`include "fwrisc_defines.vh"
module IF_fifo#(
	parameter DATA_WIDTH=8	
)(
	input		   clk,
	input	[31:0] daddr_i,
	input	[31:0] dwdata_i,
	output	[31:0] drdata_o,
	input	[3:0]  dstrb_i,
	input	dwrite_i,
	input	dvalid_i,
	output  dready_o,

	output 	tx_fifo_wr_en_o,
	output	[DATA_WIDTH-1:0] master_wdata,
	input	tx_fifo_full_i,

	output	rx_fifo_rd_en_o,
	input  [DATA_WIDTH-1:0] master_rdata,
	input	rx_fifo_empty_i
);
	reg dready_r;
	always @(posedge clk) begin dready_r <= dready_o; end

	wire	tx_dready = tx_fifo_wr_en_o && !tx_fifo_full_i;
	wire	rx_dready = rx_fifo_rd_en_o && !rx_fifo_empty_i;
	reg		rx_dready_r;
	always @(posedge clk) begin rx_dready_r <= rx_dready; end 

	assign tx_fifo_wr_en_o = (daddr_i == (`UART_BASE + `UART_TX_BUFFER))&&dwrite_i&&dvalid_i&&(~dready_r);
	assign master_wdata = dwdata_i[7:0];
	assign dready_o = (tx_dready || rx_dready_r)?1:0;
	
	
	assign rx_fifo_rd_en_o = (daddr_i == (`UART_BASE + `UART_RX_BUFFER))&&!dwrite_i && dvalid_i&&(!dready_r);
	assign drdata_o = {24'b0,master_rdata};

endmodule 
