module fwrisc_uart_wraper(
		input			clock,
		input			reset,

		input			rx,
		output			tx,

		output			program_receiving,
		output			program_ov,
		output			program_done
);
	wire clk;
	
	clk_wiz_0 u_clock_gen(
		// Clock out ports
		.clk_out1(clk),     // output clk_out1
		// Status and control signals
		.reset(), // input reset
		.locked(),       // output locked
		// Clock in ports
		.clk_in1(clock));      // input clk_in1

	
	fwrisc_fpga_top u_fwrisc_fpga_top(
		.clock		(clk),
		.reset		(reset),		
		.tx			(tx),
		.rx			(rx),
		.program_receiving(program_receiving),
		.program_ov		  (program_ov),
		.program_done	  (program_done)

	);
	
endmodule 