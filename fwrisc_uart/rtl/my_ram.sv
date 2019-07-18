`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/28 07:53:30
// Design Name: 
// Module Name: my_ram
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
//Simple Dual Port RAM
module my_ram #(
	parameter	DATA_WIDTH=16,
	parameter	ADDR_WIDTH=4
)
(
	//portA
	input						clka,
	input	[ADDR_WIDTH-1:0]	addra,
	input 	[DATA_WIDTH-1:0]	dina,
	input 						ena,
	input 						wea,
	
	//portB
	input 						clkb,
	input 	[ADDR_WIDTH-1:0]	addrb,
	input 						enb,
	output	reg[DATA_WIDTH-1:0]	doutb
    );
	
	reg [DATA_WIDTH-1:0]	ram	[0:2**ADDR_WIDTH-1];
	
	always @(posedge clka) begin
		if(ena) begin
			if(wea) begin
				ram[addra] <= dina;
			end			
		end	
	end
	
	always @(posedge clkb) begin	
		if(enb) doutb <= ram[addrb];
	end

	


endmodule
