//----------------------------------------------------
// //filename: uart.sv
// //Author: yuzhenbo
// //CreateTime: 2019-06-27 14:30:20
// //Description: 
//
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 
module uart(
	input			 clk,
   	input			 rst,
	//bus
	input	[31:0]	daddr_i,
	input	[31:0]	dwdata_i,
	output	[31:0]	drdata_o,
	input	[3:0]	dstrb_i,
	input			dwrite_i,
	input			dvalid_i,
	output			dready_o,

	//tx,rx
	input			rx,
	output			tx
);
	
	wire		rst_n = !rst;
	wire		fifo_empty;
	wire [7:0]	tx_data;
	wire		tx_en;
	wire		rd_en;
	wire [19:0]	baudrate;
	wire		rx_en;
	wire		wr_en;
	wire [7:0]	rx_data;


	UART_Registers u_UART_Registers(
		.clk		(clk),
		.rst_n		(rst_n),
		
		.daddr_i	(daddr_i),
		.dwdata_i	(dwdata_i),
		.drdata_o	(drdata_o),
		.dstrb_i	(dstrb_i),
		.dwrite_i	(dwrite_i),
		.dvalid_i	(dvalid_i),
		.dready_o	(dready_o),
		
		.UART_tx_fifo_empty	(fifo_empty),	//o
		.UART_tx_data		(tx_data),		//o
		.UART_tx_en			(tx_en),		//o
		.tx_fifo_rd_en		(rd_en),		//i

		.UART_rx_en			(rx_en),		//o
		.rx_fifo_wr_en		(wr_en),		//i
		.UART_rx_data		(rx_data),		//i
		.UART_rx_fifo_full	(fifo_full),	//o

		
		.UART_baudrate_div	(baudrate)
	);	
	

	UART_tx_fsm u_UART_tx_fsm(
		.clk		(clk),
		.rst_n		(rst_n),
		.baudrate_i (baudrate),
		.tx_en_i	(tx_en),
		.tx_data_i	(tx_data),
		.empty_i	(fifo_empty),			// TODO rename
		.rd_en_o	(rd_en),
		.tx_o		(tx)
	);


	UART_rx_fsm u_UART_rx_fsm(
	.clk			(clk),
	.rst_n			(rst_n),

	.baudrate_i		(baudrate),
	.rx_en_i		(rx_en),

	.full_i			(fifo_full),			

	.rx_i			(rx),
	.rx_data_o		(rx_data),
	.rx_data_valid_o(wr_en)
);

endmodule
