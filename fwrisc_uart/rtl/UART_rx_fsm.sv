//----------------------------------------------------
// //filename: UART_rx_fsm.sv
// //Author: yuzhenbo
// //CreateTime: 2019-07-12 15:56:29
// //Description: 异步UART接收模块。
// 用系统时钟采样串口信号rx
// 如何判断开始位?	开始位的特征是在长时间的高电平后出现低电平。
// 开始位如何与一连串的1区分开来？	0, 上电后遇到的第一个低电平自然是开始位；
//									1，如果前10个uart周期都为1，则认定为开始位； -> 由0可知,此条用不到
//									2，如果前面的uart周期出现过停止位，则认定为开始位；
//								
// 如何界定一个完整的uart周期？	开始位到来的时刻，会检测到下降沿。开始生成tick，
// 如何使用rx_tick_i这个信号？异步，rx_fsm应该要有一个自己的波特率产生器。
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 

module UART_rx_fsm(
	input			clk,
	input			rst_n,

	input [19:0]	baudrate_i,
	input			rx_en_i,

	input			full_i,			

	input			rx_i,
	output [7:0]	rx_data_o,
	output			rx_data_valid_o
);

	reg				rx_tick_delay;
	wire			rx_tick_plus;
	wire			rx_should_check;
	
	parameter		IDLE = 4'b0001;
	parameter		STAR = 4'b0010;
	parameter		RXDA = 4'b0100;
	parameter		STOP = 4'b1000;

	reg [3:0] cs, ns;
	
	reg			rx_reg;
	reg			rx_reg1;
	reg			rx_reg2;
	wire		rx_h2l;
	wire		tick;
	reg			tick_reg;
	wire		tick_l2h;
	wire		tick_h2l;
	reg	[3:0]	tick_counter;

	always @(posedge clk) begin
		if(!rst_n)
			cs = IDLE;
		else 
			cs = ns;
	end 

	always @(*) begin
		ns = IDLE;
		
		case(cs)
			IDLE:
				if(rx_en_i && (!full_i) && rx_h2l)
					ns = STAR;
				else
					ns = IDLE;
			STAR:
				if(tick_counter == 1)
					ns = RXDA;
				else 
					ns = STAR;
			RXDA:
				if(tick_counter == 9)
					ns = STOP;
				else 
					ns = RXDA;
			STOP:
				if(tick_counter == 10)
					ns = IDLE;
				else 
					ns = STOP;
		endcase 
	end

	always @(posedge clk) begin 
		rx_reg <= rx_i;
		rx_reg1 <= rx_reg;
		rx_reg2 <= rx_reg1;
	end
	assign rx_h2l = (~rx_reg1) & rx_reg2;
	always @(posedge clk) tick_reg <= tick;
	assign tick_l2h = tick & (~tick_reg);
	assign tick_h2l = ~tick & tick_reg;

	always @ (posedge clk) begin
		if(!rst_n)
			tick_counter <= 0;
		else if(cs != IDLE)
			if(tick_l2h)
				tick_counter <= tick_counter + 1;
			else
				tick_counter <= tick_counter;
		else
			tick_counter <= 0;
	end

	//在tick的下降沿接收数据
	reg [7:0] rx_data;
	always @(posedge clk) begin
		if(!rst_n)
			rx_data <= 0;
		else if((cs == RXDA) && (ns != STOP))
			if(tick_h2l)
				rx_data <= {rx_i,rx_data[7:1]};
			else 
				rx_data <= rx_data;
		else
			rx_data <= rx_data;
	end
	assign rx_data_o = rx_data;
	assign rx_data_valid_o = (cs == STOP)&&(ns == IDLE);

	//启动波特率生成模块
	wire	gen_baudrate = (cs != IDLE);	

	UART_baudrate_gen u_UART_baudrate_gen(
		.clk			(clk),
		.rst_n			(rst_n),
		.en_i			(gen_baudrate),
		.baudrate_i		(baudrate_i),
		.tick_o			(tick)
	);

endmodule	
