//----------------------------------------------------
// //filename: fwrisc_uart_tb.v
// //Author: yuzhenbo
// //CreateTime: 2019-06-30 17:10:22
// //Description: 
//
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 
// yzb
`timescale 1ns/1ps
module fwrisc_uart_tb;
	reg clk;
	reg rst_n;

	wire tx, rx;

	wire program_ov;
	wire program_done;
	wire program_receiving;
	
	reg [13:0]	csr_a;
	reg			csr_we;
	reg	[31:0]	csr_di;
	wire[31:0]	csr_do;

	wire		rx_irq;
	wire		tx_irq;
	

	//verdi{{{
	initial begin 
		$fsdbDumpfile("fwrisc_uart_tb.fsdb");
		$fsdbDumpvars(0,fwrisc_uart_tb,"+all");
		#13_000_000;
		$finish;
	end /*}}}*/

	integer i;
	initial begin 
		clk = 1;
		rst_n = 0;
		csr_a = 32'h0;
		csr_we = 1'b0;
		csr_di = 32'h0;
		i	   = 0;

		#200
		rst_n = 1;

		#1000;
		Set_thru;

		
		#100;
		Send;
		i=i+1;
		repeat(4096) begin
			@(posedge program_receiving) begin 
				Send;
				i = i + 1;
			end 
		end 
	end 
	
	initial begin
		@(posedge rx_irq) begin
			repeat(100) @(posedge clk);
			Send_custom(8'h67);
			@(posedge tx_irq) Send_custom(8'h54);
				@(posedge tx_irq) Send_custom(8'h91);
				@(posedge tx_irq) Send_custom(8'h44);	
		end
	end

//	reg [8*300:1] testcase;
//	initial begin 
//		$value$plusargs("ROM=%s",testcase);
//		$display("ROM: %s",testcase);
//		$readmemh(testcase,u_fwrisc_fpga_top.rom);
//	end 

	always #5 clk = ~clk;

	reg [7:0] program_mem[0:4095];
	initial begin
	$readmemh("../../rundir/shift/uart_program_mem.hex" ,program_mem);
	end 

	//tasks to handle tb's uart sending{{{
	task Send;
		csr_we = 1;
		csr_a = {4'b0000,8'h0,2'b00};
		csr_di = {24'h0,program_mem[i]};
		@(posedge clk)
		csr_we = 0;
	endtask

	task Send_custom;
		input [7:0] custom;
		csr_we = 1;
		csr_a = {4'b0000,8'h0,2'b00};
		csr_di = {24'h0,custom};
		@(posedge clk)
		csr_we = 0;

	endtask 
	
	task Set_thru;
		csr_we = 1;
		csr_a = {4'b0000,8'h0,2'b10};
		csr_di = {31'b0,1'b0};
		#10
		csr_we = 0;
	endtask /*}}}*/

	//instance {{{
	fwrisc_fpga_top u_fwrisc_fpga_top(
		.clock		(clk),
		.reset		(!rst_n),		
		.tx			(tx),
		.rx			(rx),
		.program_receiving(program_receiving),
		.program_ov		  (program_ov),
		.program_done	  (program_done)

	);

	op_uart u_uart_receive(
		.sys_clk		(clk),
		.sys_rst		(!rst_n),

		.csr_a			(csr_a),
		.csr_we			(csr_we),
		.csr_di			(csr_di),
		.csr_do			(csr_do),

		.rx_irq			(rx_irq),
		.tx_irq			(tx_irq),

		.uart_rx		(tx),
		.uart_tx		(rx)
	);/*}}}*/

endmodule 
