`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:04 07/26/2019 
// Design Name: 
// Module Name:    pin2pin 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pin2pin(
    input tx_v7_i,
    output rx_v7_o,
    output tx_o,
    input rx_i
    );
	
	assign tx_o = tx_v7_i;
	assign rx_v7_o = rx_i; 


endmodule
