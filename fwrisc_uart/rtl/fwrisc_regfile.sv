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

	reg[5:0]			ra_raddr_r;
	reg[5:0]			rb_raddr_r;
	(*ram_style="block"*)reg[31:0]			regs['h3f:0];

// `ifdef FORMAL
	// initial regs[0] = 0;
//	genvar reg_i;
//	for (reg_i=1; reg_i<64; reg_i++) begin
//		initial regs[reg_i] = $anyconst;
//	end
// `else
	// initial begin
		// $readmemh("../../../../../program_gen/regs.hex", regs);
	// end
// `endif

	always @(posedge clock) begin
		if (rd_wen) begin
			regs[rd_waddr] <= rd_wdata;
		end
	end

	always @(posedge clock) begin
		ra_raddr_r <= ra_raddr;
		rb_raddr_r <= rb_raddr;
	end 

	assign ra_rdata = (ra_raddr_r == 0)? 32'b0 : regs[ra_raddr_r];
	assign rb_rdata = (rb_raddr_r == 0)? 32'b0 : regs[rb_raddr_r];

endmodule


