//----------------------------------------------------
// //filename: UART_baudrate_gen.v
// //Author: yuzhenbo
// //CreateTime: 2019-06-30 13:40:17
// //Description: 如果系统时钟为100Mhz, UART波特率为115200 bps,
//	则fwrisc应设置baudrate_i的值为 8680/10 = 868
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 

module UART_baudrate_gen(
	input clk,
	input rst_n,
	input en_i,
	input [19:0]	baudrate_i,
	output reg 		tick_o
);

	reg [19:0] clk_cnt;
	wire tick_should_flip = (clk_cnt == ((baudrate_i>>1) - 1));
	wire cnt_should_zero = tick_should_flip;

	always @(posedge clk) begin
		if(!rst_n)begin
			clk_cnt <= 0;
		end
		else if(en_i)begin
			if(cnt_should_zero)
				clk_cnt <= 0;
			else 
				clk_cnt <= clk_cnt + 1;
		end
		else begin
			clk_cnt <= 0;
		end
	end 

	always @(posedge clk) begin
		if(!rst_n)
			tick_o <= 0;
		else if(tick_should_flip)
			tick_o <= ~tick_o;
	end
	
endmodule 
