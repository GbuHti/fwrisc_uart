module my_fifo #(
	parameter DATA_WIDTH=8,
	parameter ADDR_WIDTH=4
)(
	input						clk,
	input						rst,
	input	[DATA_WIDTH-1:0]	din,
	input 						wr_en,
	input 						rd_en,
	output	[DATA_WIDTH-1:0]	dout,
	output 	reg					full,
	output	reg					empty
	);

	parameter FIFO_DEPTH = 2**ADDR_WIDTH;

	reg [ADDR_WIDTH-1:0] addra;

	reg [ADDR_WIDTH-1:0] addrb;
	wire[DATA_WIDTH-1:0] doutb;
	
	//在非满状态下，当wr_en有效时，写指针递增；
	always @(posedge clk) begin
		if(rst)
			addra <= 0;
		else if(!full)
			if(wr_en) addra <= addra + 1;	
			else      addra <= addra;
		else		  addra <= addra;
	end
	
	//在非空状态下，当rd_en有效时，读指针递增；
	always @(posedge clk) begin
		if(rst)	
			addrb <= 0;
		else if(!empty)
			if(rd_en) addrb <= addrb + 1;
			else	  addrb <= addrb;
		else		  addrb <= addrb;
	end
	
	
	//full的产生条件：写最后一个空单元（读指针之后的位置）的同时，将full拉高 | addra指向下一个单元；
	wire no_full = full && rd_en?1:0;
	wire no_empty = empty && wr_en?1:0;
	
	wire catchup_w 	= (wr_en&!rd_en)? (((addra + 1'b1) == addrb)? 1:0):0;
	
	always @(posedge clk) begin
		if(rst)
			full <= 0;
		else if(catchup_w)
			full <= 1;
		else if(no_full)
			full <= 0;
		else 
			full <= full;
	end
	
	//empty的产生条件：读最后一个可读单元（写指针之后的位置）的同时，empty, addrb指向下一个单元；
	wire catchup_r  = (rd_en&!wr_en)? (((addrb + 1'b1) == addra)? 1:0):0;
	always @(posedge clk) begin
		if(rst)
			empty <= 1;
		else if(catchup_r )
			empty <= 1;
		else if(no_empty)
			empty <= 0;
		else 
			empty <= empty;
	end
	
	my_ram #(
		.DATA_WIDTH(DATA_WIDTH),
		.ADDR_WIDTH(ADDR_WIDTH)
	) u_yzb_ram(
	//portA
	.clka(clk),
	.addra(addra),
	.dina(din),
	.ena(wr_en),
	.wea(!full),	
	//portB
	.clkb(clk),
	.addrb(addrb),
	.enb(rd_en & !empty),
	.doutb(dout)
    );
endmodule