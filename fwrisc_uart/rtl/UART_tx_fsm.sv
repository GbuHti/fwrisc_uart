//----------------------------------------------------
// //filename: UART_tx_fsm.v
// //Author: yuzhenbo
// //CreateTime: 2019-06-30 13:09:27
// //Description: UART的发送状态机，产生控制信号
//
// //ModifyTime: 
// //Additional explanation: 
// //---------------------------------------------------- 

module UART_tx_fsm(
	input			clk,
	input			rst_n,
	input [19:0]	baudrate_i,
	input			tx_en_i,
	input [7:0]		tx_data_i,
	input			empty_i,
	output	reg		rd_en_o,
    output	reg		tx_o	
);

	parameter IDLE = 4'b0001;
	parameter STAR = 4'b0010;
	parameter TXDA = 4'b0100;
	parameter STOP = 4'b1000;

	reg [3:0]	cs,ns;
	reg [3:0]	bit_cnt;
	wire		send_tick;
//---------------------------------------------------- 

//---------------------------------------------------- 
	always @(posedge clk) begin
		if(!rst_n)begin
			cs <= IDLE;
		end
		else begin
			cs <= ns;
		end
	end 

	always @(*) begin
			ns = IDLE;
		
		case (cs)
			IDLE:begin
				if(tx_en_i & !empty_i)
					ns = STAR;
				else
					ns = IDLE;
			end
			STAR:begin
				if(!tx_en_i)
					ns = IDLE;
				else if(bit_cnt == 1 )
					ns = TXDA;
				else 
					ns = STAR;
			end
			TXDA:begin
				if(!tx_en_i)
					ns = IDLE;
				else if(bit_cnt == 9)
					ns = STOP;
				else 
					ns = TXDA;
			end
			STOP:begin
				if(!tx_en_i)
					ns = IDLE;
				else if(bit_cnt == 11)
					ns = IDLE;
				else 
					ns = STOP;
			end 
		endcase 
	end	

	//---------------------------------------------------- 
	reg send_tick_r;
	wire send_tick_puls;
	always @(posedge clk) begin send_tick_r <= send_tick; end
	assign send_tick_puls = send_tick & ~send_tick_r;

	always @(posedge clk) begin
		if(!rst_n) 
			bit_cnt <= 0;
		else if(cs == IDLE)
			bit_cnt <= 0;
		else if(send_tick_puls)
			bit_cnt <= bit_cnt + 1;
		else 
			bit_cnt <= bit_cnt;
	end

	always @(posedge clk) begin
		if(!rst_n)begin
			rd_en_o <= 0;
		end
		else if(cs == IDLE && ns == STAR) begin
			rd_en_o <= 1;
		end
		else 
			rd_en_o <= 0;
	end

	
	always @(posedge clk) begin
		if(!rst_n) 
			tx_o <= 1;
		else if(cs == STAR && send_tick_puls)
			tx_o <= 0;
		else if(cs == TXDA && send_tick_puls)
			tx_o <= tx_data_i[bit_cnt -1];		
		else if(cs == STOP && send_tick_puls)
			tx_o <= 1;
	end
	

	UART_baudrate_gen u_UART_baudrate_gen(
		.clk			(clk),
		.rst_n			(rst_n),
		.en_i			(tx_en_i),
		.baudrate_i		(baudrate_i),
		.tick_o			(send_tick)
	);

endmodule
