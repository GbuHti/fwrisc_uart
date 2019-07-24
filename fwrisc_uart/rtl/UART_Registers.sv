//----------------------------------------------------
// //filename: UART_Registers.v
// //Author: yuzhenbo
// //CreateTime: 2019-06-27 23:52:51
// //Description: 
//	配置
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 
// 分配寄存器地址
`include "fwrisc_defines.vh"
module UART_Registers(
	input			clk,
	input			rst_n,

	//bus
	input	[31:0]	daddr_i,
	input	[31:0]	dwdata_i,
	output	reg [31:0]	drdata_o,
	input	[3:0]	dstrb_i,
	input			dwrite_i,
	input			dvalid_i,
	output reg		dready_o,

	//if tx fifo reads empty, stop UART sending data;
	//if tx fifo writes full, MCU suspend writing;
	output			UART_tx_en,
	input			tx_fifo_rd_en,
	output	[7:0]	UART_tx_data,		
	output			UART_tx_fifo_empty,
	
	//if rx fifo writes full, stop UART receiving data;
	//if rx fifo reads empty, MCU suspend reading;
	output			UART_rx_en,
	input			rx_fifo_wr_en,
	input	[7:0]	UART_rx_data,
	output			UART_rx_fifo_full,
	
	output	[31:0]	UART_baudrate_div
		
	
);
	// for storing 1 byte data and empty signal from tx fifo;
	reg		[31:0]	UART_Tx_Buffer;	//read fifo
	// enable UART to send data;
	reg		[31:0]	UART_Tx_Ctrl;
	// for storing 1 byte data and full signal from rx fifo;
	reg		[31:0]	UART_Rx_Buffer;
	// enable UART to receive data;
	reg		[31:0]	UART_Rx_Ctrl;
	// 波特率分频系数
	reg		[31:0]	UART_Baudrate_Div;
	
	wire tx_fifo_wr_en;
	wire rx_fifo_rd_en;
	wire tx_fifo_full;
	wire rx_fifo_empty;

	wire [7:0] tx_fifo_din;
	wire [7:0] tx_fifo_dout;
	wire [7:0] rx_fifo_dout;
	//
	assign UART_tx_data		=	tx_fifo_dout;
	assign UART_tx_en		=	UART_Tx_Ctrl[0];
	assign UART_rx_en		=	UART_Rx_Ctrl[0];

	assign UART_baudrate_div=	UART_Baudrate_Div;

	//
	wire reg_wr_en = ((daddr_i&32'hffff0000) == `UART_BASE )&&dvalid_i&&dwrite_i;
	wire reg_rd_en = ((daddr_i&32'hffff0000) == `UART_BASE )&&dvalid_i&&(!dwrite_i);
	wire [7:0] reg_wr_sel = daddr_i[7:0];
	wire [7:0] reg_rd_sel = daddr_i[7:0];
	wire dready_fifo;


	//特殊功能寄存器{{{

	//---------------------------------------------------- 
	always @(posedge clk) begin
		if(!rst_n)begin
			UART_Tx_Buffer <= 0;
		end
		else begin
			UART_Tx_Buffer <= {UART_tx_fifo_empty,23'b0, tx_fifo_dout};
		end
	end 

	always @(posedge clk) begin
		if(!rst_n)begin
			UART_Tx_Ctrl <= 0;
		end
		else if(reg_wr_en && reg_wr_sel == `UART_TX_CTRL ) begin	//bit[0]:enable sending, software set
			UART_Tx_Ctrl <= dwdata_i[0];
		end
		else 
			UART_Tx_Ctrl <= {tx_fifo_full,UART_Tx_Ctrl[30:0]};     //bit[31]:indicate tx_fifo full, hardware set and clear;
	end 
	
	always @(posedge clk) begin
		if(!rst_n) 
			dready_o <= 0;
		else if((reg_wr_en && (reg_wr_sel == `UART_TX_BUFFER))|| (reg_rd_en && (reg_rd_sel == `UART_RX_BUFFER)))
			dready_o <= dready_fifo;
		else if(reg_wr_en || reg_rd_en)
			dready_o <= 1;
		else 
			dready_o <= 0;
	end 

	//---------------------------------------------------- 	
	always @(posedge clk) begin
		if(!rst_n)begin
			UART_Baudrate_Div <= 0;
		end
		else if(reg_wr_en && reg_wr_sel == `UART_BAUDRATE_DIV) begin
			UART_Baudrate_Div <= dwdata_i[31:0];
		end
		else 
			UART_Baudrate_Div <= UART_Baudrate_Div;
	end
   
	//---------------------------------------------------- 
	always @(posedge clk) begin
		if(!rst_n)
			UART_Rx_Buffer <= 0;
		else  
			UART_Rx_Buffer <= {UART_rx_fifo_full,23'b0,rx_fifo_dout};
	end
	
	always @(posedge clk) begin
		if(!rst_n)begin
			UART_Rx_Ctrl <= 0;
		end
		else if(reg_wr_en && reg_wr_sel == `UART_RX_CTRL) begin
			UART_Rx_Ctrl <= dwdata_i[0];
		end 
		else 
			UART_Rx_Ctrl <= {rx_fifo_empty,UART_Rx_Ctrl[30:0]};
	end

	always @(*) begin
		case(reg_rd_sel)
			`UART_TX_BUFFER:	drdata_o = tx_fifo_dout;
			`UART_TX_CTRL:		drdata_o = UART_Tx_Ctrl;
			`UART_RX_BUFFER:	drdata_o = rx_fifo_dout;
			`UART_RX_CTRL:		drdata_o = UART_Rx_Ctrl;
			`UART_BAUDRATE_DIV:	drdata_o = UART_Baudrate_Div;
			default:			drdata_o = 32'hdeaddead;
		endcase 
	end
	/*}}}*/
	
IF_fifo u_if_fifo(
	.clk	(clk),
	.daddr_i(daddr_i),
	.dwdata_i(dwdata_i),
	.drdata_o(),
	.dstrb_i(dstrb_i),
	.dwrite_i(dwrite_i),
	.dvalid_i(dvalid_i),
	.dready_o(dready_fifo),

	.tx_fifo_wr_en_o(tx_fifo_wr_en),
	.master_wdata(tx_fifo_din),
	.tx_fifo_full_i(tx_fifo_full),

	.rx_fifo_rd_en_o(rx_fifo_rd_en),
	.master_rdata(rx_fifo_dout),
	.rx_fifo_empty_i(rx_fifo_empty)

);

my_fifo #(
	.DATA_WIDTH(8),
	.ADDR_WIDTH(3)
) u_tx_fifo (
	.clk(clk),
	.rst(!rst_n),

	.din(tx_fifo_din),
	.wr_en(tx_fifo_wr_en),
	
	.rd_en(tx_fifo_rd_en),
	.dout(tx_fifo_dout),

	.full(tx_fifo_full),
	.empty(UART_tx_fifo_empty)
);

my_fifo #(
	.DATA_WIDTH(8),
	.ADDR_WIDTH(3)
) u_rx_fifo (
	.clk(clk),
	.rst(!rst_n),

	.din(UART_rx_data),
	.wr_en(rx_fifo_wr_en),
	
	.rd_en(rx_fifo_rd_en),
	.dout(rx_fifo_dout),

	.full(UART_rx_fifo_full),
	.empty(rx_fifo_empty)
);
endmodule 
