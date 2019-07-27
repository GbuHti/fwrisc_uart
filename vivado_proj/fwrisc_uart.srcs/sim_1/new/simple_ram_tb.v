`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/27 14:51:57
// Design Name: 
// Module Name: simple_ram_tb
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


module simple_ram_tb;
	reg clk;
	reg [5:0] 	ra_addr;
	reg [31:0] 	ra_wdata;
	reg [5:0]	rb_addr;
	wire [31:0] 	rb_rdata;
	reg [5:0] cnt;
	
	initial begin
		clk = 0;
		ra_addr = 0;
		ra_wdata = 0;
		rb_addr = 0;
		cnt = 0;
		
		#100;
		repeat (30) begin
			@(posedge clk) begin
				Write(cnt, $random%100);
				cnt = cnt + 1;
			end
		end
		
		cnt = 0;
		repeat (31) begin
			@(posedge clk) begin
				Read(cnt);
				cnt = cnt + 1;
			end
		end
	end
	
	always #5 clk = ~clk;
	
blk_mem_gen_0 your_instance_name (
  .clka(clk),    // input wire clka
  .ena(1),      // input wire ena
  .wea(1),      // input wire [0 : 0] wea
  .addra(ra_addr),  // input wire [5 : 0] addra
  .dina(ra_wdata),    // input wire [31 : 0] dina
  
  .clkb(clk),    // input wire clkb
  .enb(1),      // input wire enb
  .addrb(rb_addr),  // input wire [5 : 0] addrb
  .doutb(rb_rdata)  // output wire [31 : 0] doutb
);
	
	task Write;
		input [5:0] addr;
		input [31:0] data;
		ra_addr = addr;
		ra_wdata = data;
	endtask
	
	task Read;
		input [5:0] addr;
		rb_addr = addr;
	endtask
	
endmodule
