/****************************************************************************
 * fwrisc_regfile.sv
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
 ****************************************************************************/

/**
 * Module: fwrisc_regfile
 * 
 * TODO: Add module documentation
 */
module fwrisc_regfile(
		input				clock,
		input				reset,
		(*MARK_DEBUG="TRUE"*)input[5:0]			ra_raddr,
		(*MARK_DEBUG="TRUE"*)output [31:0]		ra_rdata,
		(*MARK_DEBUG="TRUE"*)input[5:0]			rb_raddr,
		(*MARK_DEBUG="TRUE"*)output [31:0]		rb_rdata,
		(*MARK_DEBUG="TRUE"*)input[5:0]			rd_waddr,
		(*MARK_DEBUG="TRUE"*)input[31:0]			rd_wdata,
		(*MARK_DEBUG="TRUE"*)input				rd_wen
		);

`ifndef FPGA
	reg[5:0]			ra_raddr_r;
	reg[5:0]			rb_raddr_r;
	(*ram_style="block"*)reg[31:0]			regs['h3f:0];

	always @(posedge clock) begin
		ra_raddr_r <= ra_raddr;
		rb_raddr_r <= rb_raddr;
		if (rd_wen) begin
			regs[rd_waddr] <= rd_wdata;
		end
		regs['d0] <= 0;
	end

	assign ra_rdata = regs[ra_raddr_r];
	assign rb_rdata = regs[rb_raddr_r];

	// assign ra_rdata = (ra_raddr_r == 0)? 32'b0 : regs[ra_raddr_r];
	// assign rb_rdata = (rb_raddr_r == 0)? 32'b0 : regs[rb_raddr_r];
`else
blk_mem_gen_0 u_regfile_0 (
  .clka(clock),    // input wire clka
  .ena(1),      // input wire ena
  .wea(rd_wen),      // input wire [0 : 0] wea
  .addra(rd_waddr),  // input wire [5 : 0] addra
  .dina(rd_wdata),    // input wire [31 : 0] dina
  
  .clkb(clock),    // input wire clkb
  .enb(1),      // input wire enb
  .addrb(ra_raddr),  // input wire [5 : 0] addrb
  .doutb(ra_rdata)  // output wire [31 : 0] doutb
);

blk_mem_gen_0 u_regfile_1 (
  .clka(clock),    // input wire clka
  .ena(1),      // input wire ena
  .wea(rd_wen),      // input wire [0 : 0] wea
  .addra(rd_waddr),  // input wire [5 : 0] addra
  .dina(rd_wdata),    // input wire [31 : 0] dina
  
  .clkb(clock),    // input wire clkb
  .enb(1),      // input wire enb
  .addrb(rb_raddr),  // input wire [5 : 0] addrb
  .doutb(rb_rdata)  // output wire [31 : 0] doutb
);
`endif
endmodule


