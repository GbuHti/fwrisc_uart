/****************************************************************************
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

`define	OP_ADD 8'b0000_0001
`define	OP_SUB 8'b0000_0010
`define	OP_AND 8'b0000_0100
`define	OP_OR  8'b0000_1000
`define	OP_XOR 8'b0001_0000
`define	OP_SLL 8'b0010_0000
`define OP_SRL 8'b0100_0000
`define	OP_SRA 8'b1000_0000

`define	COMPARE_EQ  2'b00
`define	COMPARE_LT  2'b01
`define	COMPARE_LTU 2'b10

`define FETCH					14'b00_0000_0000_0001
`define DECODE					14'b00_0000_0000_0010
`define EXECUTE					14'b00_0000_0000_0100
`define CSR_1					14'b00_0000_0000_1000
`define CSR_2					14'b00_0000_0001_0000
`define MEMW					14'b00_0000_0010_0000
`define MEMR					14'b00_0000_0100_0000
`define EXCEPTION_1				14'b00_0000_1000_0000
`define EXCEPTION_2				14'b00_0001_0000_0000
`define SHIFT_1					14'b00_0010_0000_0000
`define SHIFT_2					14'b00_0100_0000_0000
`define CYCLE_COUNT_UPDATE_1	14'b00_1000_0000_0000
`define CYCLE_COUNT_UPDATE_2	14'b01_0000_0000_0000
`define INSTR_COUNT_UPDATE_1	14'b10_0000_0000_0000

`define ITCM_BASE			32'h80000000
`define RAM_BASE			32'h80010000
`define UART_BASE			32'h80020000
`define UART_TX_BUFFER		32'h0
`define UART_TX_CTRL		32'h4
`define UART_RX_BUFFER		32'h8
`define UART_RX_CTRL		32'hc
`define UART_BAUDRATE_DIV	32'h10

`define PROGRAM_END_MARKER	32'h0000000B
`define ITCM_SIZE			'd4096
// `define PROMGRAM_RX_BAUDRATE 'd434
`define PROMGRAM_RX_BAUDRATE 'd86