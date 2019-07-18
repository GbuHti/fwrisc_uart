/****************************************************************************
 * fwrisc_fpga_top.sv
 * 
 * Copyright 2018 Matthew Ballance
 * 
 * Licensed under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in
 * writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied.  See
 * the License for the specific language governing
 * permissions and limitations under the License.
 * 
 ****************************************************************************/

/**
 * Module: fwrisc_fpga_top
 * 
 * TODO: Add module documentation
 */
 
`include "fwrisc_defines.vh"
module fwrisc_fpga_top (
		input			clock,
		input			reset,

		input			rx,
		output			tx,

		output			program_receiving,
		output			program_ov,
		output			program_done
		);

	
	wire[31:0]			iaddr;
	reg[31:0]			idata;
	wire				ivalid;
	wire				iready;
	wire[31:0]			daddr;
	wire[31:0]			dwdata;
	wire[31:0]			drdata;
	reg [31:0]			drdata_r;
	wire[3:0]			dstrb;
	wire				dwrite;
	wire				dvalid;
	wire				dready;


	fwrisc u_core (
		.clock   (clock  ), 
		.reset   (reset  ), 
		.iaddr   (iaddr  ), 
		.idata   (idata  ), 
		.ivalid  (ivalid ), 
		.iready  (iready ), 
		.daddr   (daddr  ), 
		.dwdata  (dwdata ), 
		.drdata  (drdata ), 
		.dstrb   (dstrb  ), 
		.dwrite  (dwrite ), 
		.dvalid  (dvalid ), 
		.dready  (dready ));

	wire [31:0]	uart_drdata;
	wire		uart_ready;
	uart u_uart(
		.clk		(clock),
		.rst		(reset),

		.daddr_i	(daddr),
		.dwdata_i	(dwdata),
		.drdata_o	(uart_drdata),
		.dstrb_i	(dstrb),
		.dwrite_i	(dwrite),
		.dvalid_i	(dvalid),
		.dready_o	(uart_ready),

		.rx			(rx),
		.tx			(tx)
	);
	


	// ROM: 'h8000_0000
	// RAM: 'h8000_2000
	// LED: 'hC000_0000
	reg[7:0]			ram_0[4095:0]; // 16k ram
	reg[7:0]			ram_1[4095:0]; // 
	reg[7:0]			ram_2[4095:0]; //
	reg[7:0]			ram_3[4095:0]; //
	reg[31:0]			rom[4095:0];   // 16k rom
	reg					iready_r, dready_r;
	
	assign iready = iready_r;

	wire uart_mux_sel = ((daddr&32'hfffff000) == `UART_BASE)?1:0;
	mux2to1 #(
		.DATA_WIDTH(33)
	)u_uart_mux	(
		.sel		(uart_mux_sel),
		.in0		({drdata_r,dready_r}),
		.in1		({uart_drdata,uart_ready}),
		.out		({drdata,dready})
	);

//	initial begin
//		$readmemh("rom.hex", rom);
//	end
	
	reg[31:0]			addr_d;
	reg[31:0]			addr_i;
	
	always @(posedge clock) begin
		addr_d <= daddr;
		addr_i <= iaddr;

		if (dvalid && dready && dwrite) begin
			if (daddr[31:28] == 4'h8 && 
				daddr[15:12] == 4'h2) begin
				if (dstrb[0]) ram_0[daddr[13:2]]<=dwdata[7:0];
				if (dstrb[1]) ram_1[daddr[13:2]]<=dwdata[15:8];
				if (dstrb[2]) ram_2[daddr[13:2]]<=dwdata[23:16];
				if (dstrb[3]) ram_3[daddr[13:2]]<=dwdata[31:24];
			end
		end
	end

	//receive Program from UART{{{
	wire [19:0] baudrate = `PROMGRAM_RX_BAUDRATE;
	reg			rx_program_en;
	reg			itcm_full;
	wire [7:0]	rx_program_data;
	wire		rx_program_data_valid;
	UART_rx_fsm u_UART_rx_fsm(
		.clk			(clock),
		.rst_n			(!reset),
	
		.baudrate_i		(baudrate),
		.rx_en_i		(rx_program_en),
	
		.full_i			(itcm_full),			
	
		.rx_i			(rx),
		.rx_data_o		(rx_program_data),
		.rx_data_valid_o(rx_program_data_valid)
	);
	
	assign	program_receiving = rx_program_data_valid;
	assign	program_ov	 = itcm_full;
	assign	program_done = !rx_program_en;

	
	reg [1:0]			rx_program_data_cnt;
	reg [1:0]			rx_program_data_cnt_r;
	reg [31:0]			program_data;
	reg [14:0]			program_addr;
	always @(posedge clock) begin
		if(reset)
			rx_program_data_cnt <= 0;
		else if(rx_program_data_valid)
			rx_program_data_cnt <= rx_program_data_cnt + 1;
		else 
			rx_program_data_cnt <= rx_program_data_cnt;
	end 
	always @(posedge clock) begin rx_program_data_cnt_r <= rx_program_data_cnt; end
	
	wire	rom_wr_en = (rx_program_data_cnt == 2'b00)&&(rx_program_data_cnt_r == 2'b11);

	always @(posedge clock)begin 
		if(reset)
			program_data <= 0;
		else if(rx_program_data_valid)
			program_data <= {program_data[23:0],rx_program_data};
	end

	always @(posedge clock) begin
		if(reset)
			program_addr <= 0;
		else if(rom_wr_en)
			program_addr <= program_addr + 1;
		else 
			program_addr <= program_addr;
	end 

	always @(posedge clock) begin
		if(reset)
			itcm_full <= 0;
		else if(program_addr == (`ITCM_SIZE-1))
			itcm_full <= 1;
	end

	always @(posedge clock) begin
		if(rom_wr_en)	
			rom[program_addr] <= program_data;
	end

	always @(posedge clock) begin
		if(reset)
			rx_program_en <= 1;	
		else if(program_data == `PROGRAM_END_MARKER || program_addr == (`ITCM_SIZE-1))
			rx_program_en <= 0;
		else 
			rx_program_en <= rx_program_en;
	end
/*}}}*/
	
	always @(posedge clock) begin
		// Prefer data access
		if (dvalid) begin
			dready_r <= 1;
			iready_r <= 0;
		end else if (ivalid && program_done) begin
			iready_r <= 1;
			dready_r <= 0;
		end else begin
			iready_r <= 0;
			dready_r <= 0;
		end
	end

	always @* begin
		if (addr_d[31:28] == 4'h8 && addr_d[15:12] == 4'h2) begin 
			drdata_r = {
				ram_3[addr_d[13:2]],
				ram_2[addr_d[13:2]],
				ram_1[addr_d[13:2]],
				ram_0[addr_d[13:2]]
				};
		end else begin
			drdata_r = rom[addr_d[13:2]];
		end
		
		if (addr_i[31:28] == 4'h8 && addr_i[15:12] == 4'h2) begin
			idata = {
				ram_3[addr_d[13:2]],
				ram_2[addr_d[13:2]],
				ram_1[addr_d[13:2]],
				ram_0[addr_d[13:2]]
				};
		end else begin
			idata = rom[addr_i[13:2]];
		end
	end

endmodule


