`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/18 15:40:44
// Design Name: 
// Module Name: pll_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pll_tb;
	reg clock;
	reg reset;
	wire lock;
	wire clk;
	
	initial begin
		clock = 1;
		reset = 1;
		
		#100
		reset = 0;
	end
	
	always #4 clock = ~clock;

	clk_wiz_0 u_clock_gen(
		// Clock out ports
		.clk_out1(clk),     // output clk_out1
		// Status and control signals
		.reset(), // input reset
		.locked(lock),       // output locked
		// Clock in ports
		.clk_in1(clock));      // input clk_in1
endmodule
