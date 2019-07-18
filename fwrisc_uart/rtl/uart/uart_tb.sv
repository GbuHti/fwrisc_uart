//----------------------------------------------------
// //filename: uart_tb.v
// //Author: yuzhenbo
// //CreateTime: 2019-07-15 21:41:26
// //Description: 
//
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 

module uart_tb;
	reg sys_clk;
	reg sys_rst;

	reg [13:0]	csr_a;
	reg			csr_we;
	reg	[31:0]	csr_di;
	wire[31:0]	csr_do;

	wire		rx_irq;
	wire		tx_irq;

	wire		uart_rx;
	wire		uart_tx;

	initial begin
		$fsdbDumpfile("uart_t.fsdb");
		$fsdbDumpvars(0,uart_tb);
		$fsdbDumpMem;	
	end 

	initial begin
		sys_clk = 1;
		sys_rst = 1;
		csr_a = 32'h0;
		csr_we = 1'b0;
		csr_di = 32'b0;

		#100;
		sys_rst = 0;
		
		#10
		Set_thru;
		#10
		Send;
	end

	always #5 sys_clk = ~sys_clk;

	//one uart for sending, one uart for receiving {{{
	uart u_uart_send(
		.sys_clk		(sys_clk),
		.sys_rst		(sys_rst),

		.csr_a			(csr_a),
		.csr_we			(csr_we),
		.csr_di			(csr_di),
		.csr_do			(),

		.rx_irq			(),
		.tx_irq			(tx_irq),

		.uart_rx		(uart_rx),
		.uart_tx		(uart_tx)
	);

	uart u_uart_receive(
		.sys_clk		(sys_clk),
		.sys_rst		(sys_rst),

		.csr_a			(csr_a),
		.csr_we			(),
		.csr_di			(),
		.csr_do			(csr_do),

		.rx_irq			(rx_irq),
		.tx_irq			(),

		.uart_rx		(uart_tx),
		.uart_tx		()
	);/*}}}*/

	//task{{{
	task Send;
		csr_we = 1;
		csr_a = {4'b0000,8'h0,2'b00};
		csr_di = {24'h0,8'hab};
		#10;
		csr_we = 0;
	endtask
	
	task Set_thru;
		csr_we = 1;
		csr_a = {4'b0000,8'h0,2'b10};
		csr_di = {31'b0,1'b0};
		#10
		csr_we = 0;
	endtask 
	/*}}}*/

endmodule 
