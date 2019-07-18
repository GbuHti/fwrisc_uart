//----------------------------------------------------
// //filename: mux2to1.sv
// //Author: yuzhenbo
// //CreateTime: 2019-07-15 10:39:04
// //Description: 
//
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 

module mux2to1 #(
	parameter DATA_WIDTH = 1	
)(
	input					sel,
	input [DATA_WIDTH-1:0]	in0,
	input [DATA_WIDTH-1:0]	in1,
	output [DATA_WIDTH-1:0]	out
);
	assign out = sel? in1 : in0;

endmodule 
