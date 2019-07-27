onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb /fwrisc_uart_tb/clk
add wave -noupdate -expand -group tb /fwrisc_uart_tb/rst_n
add wave -noupdate -expand -group tb /fwrisc_uart_tb/tx
add wave -noupdate -expand -group tb /fwrisc_uart_tb/rx
add wave -noupdate -expand -group tb /fwrisc_uart_tb/program_ov
add wave -noupdate -expand -group tb /fwrisc_uart_tb/program_done
add wave -noupdate -expand -group tb /fwrisc_uart_tb/program_receiving
add wave -noupdate -expand -group tb /fwrisc_uart_tb/csr_a
add wave -noupdate -expand -group tb /fwrisc_uart_tb/csr_we
add wave -noupdate -expand -group tb /fwrisc_uart_tb/csr_di
add wave -noupdate -expand -group tb /fwrisc_uart_tb/csr_do
add wave -noupdate -expand -group tb /fwrisc_uart_tb/rx_irq
add wave -noupdate -expand -group tb /fwrisc_uart_tb/tx_irq
add wave -noupdate -expand -group tb /fwrisc_uart_tb/clk_50M
add wave -noupdate -expand -group tb /fwrisc_uart_tb/i
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/sys_clk
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/sys_rst
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/csr_a
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/csr_we
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/csr_di
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/csr_do
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/rx_irq
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/tx_irq
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/uart_rx
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/uart_tx
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/divisor
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/rx_data
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/tx_data
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/tx_wr
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/thru
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/uart_tx_transceiver
add wave -noupdate -group tb_uart /fwrisc_uart_tb/u_uart_receive/csr_selected
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/sys_rst
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/sys_clk
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/uart_rx
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/uart_tx
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/divisor
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_data
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_done
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_data
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_wr
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_done
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/enable16_counter
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/enable16
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/uart_rx1
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/uart_rx2
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_busy
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_count16
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_bitcount
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/rx_reg
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_busy
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_bitcount
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_count16
add wave -noupdate -group tb_uart_receiver /fwrisc_uart_tb/u_uart_receive/transceiver/tx_reg
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/clock
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/reset
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/tx
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/program_receiving
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/program_ov
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/program_done
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/iaddr
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/idata
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/ivalid
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/iready
add wave -noupdate -group fwrisc_fpga_top -itemcolor Red /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/daddr
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dwdata
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/drdata
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/drdata_r
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dstrb
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dwrite
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dvalid
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dready
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/uart_drdata
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/uart_ready
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/iready_r
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/dready_r
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/uart_mux_sel
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/addr_d
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/addr_i
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/baudrate
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx_program_en
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/itcm_full
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx_program_data
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx_program_data_valid
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx_program_data_cnt
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rx_program_data_cnt_r
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/program_data
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/program_addr
add wave -noupdate -group fwrisc_fpga_top /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/rom_wr_en
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/clock
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/reset
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/iaddr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/idata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/ivalid
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/iready
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/daddr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dwdata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/drdata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dstrb
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dwrite
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dvalid
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dready
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/instr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/state
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/pc
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/shift_amt
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/pc_plus4
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/pc_next
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/cycle_counter
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/cycle_counter_ovf
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/instr_counter
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_op_a
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_op_b
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_op
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_out
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_carry
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/alu_eqz
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_branch_ld_st_arith
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_fence
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_ld
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_arith_imm
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_arith_reg
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_shift_imm
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_shift_reg
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_shift
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_st
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_ld_st
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_branch
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_jal
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_jalr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_auipc
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_lui
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_sys
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_sys_prv
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_ecall
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_eret
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_csr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_csrr_cs
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_csrrc
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/op_csrrs
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/exception
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/misaligned_addr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/ra_raddr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rb_raddr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/ra_rdata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rb_rdata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rd_waddr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rd_wdata
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rd_wen
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rs1
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rs2
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/rd
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/csr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/csr_addr
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MTVEC
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MEPC
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MCAUSE
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MTVAL
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MCYCLE
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MINSTR
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MCYCLEH
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_MINSTRH
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/CSR_tmp
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/jal_off
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/auipc_imm_31_12
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/imm_11_0_u
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/imm_11_0
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/st_imm_11_0
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/imm_lui
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/imm_branch
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/zero
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/comp_op_a
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/comp_op_b
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/comp_op
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/comp_out
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/branch_cond
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/read_data_wb
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/exc_code
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/daddr_w
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dvalid_w
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dwrite_w
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dwdata_w
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/dstrb_w
add wave -noupdate -group u_core /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_core/exec_state
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/clk
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rst_n
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/baudrate_i
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_en_i
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/full_i
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_i
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_data_o
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_data_valid_o
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_tick_delay
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_tick_plus
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_should_check
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/cs
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/ns
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_reg
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_reg1
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_reg2
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_h2l
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/tick
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/tick_reg
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/tick_l2h
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/tick_h2l
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/tick_counter
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/rx_data
add wave -noupdate -group program_uart /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/gen_baudrate
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/clk
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/rst_n
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/en_i
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/baudrate_i
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/tick_o
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/clk_cnt
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/tick_should_flip
add wave -noupdate -group gen_baudrate /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_UART_rx_fsm/u_UART_baudrate_gen/cnt_should_zero
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/clk
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/rst_n
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/daddr_i
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dwdata_i
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/drdata_o
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dstrb_i
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dwrite_i
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dvalid_i
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dready_o
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_tx_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/tx_fifo_rd_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_tx_data
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_tx_fifo_empty
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_rx_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/rx_fifo_wr_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_rx_data
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_rx_fifo_full
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_baudrate_div
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_Tx_Buffer
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_Tx_Ctrl
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_Rx_Buffer
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_Rx_Ctrl
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/UART_Baudrate_Div
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/tx_fifo_wr_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/rx_fifo_rd_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/tx_fifo_din
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/tx_fifo_dout
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/rx_fifo_dout
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/reg_wr_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/reg_rd_en
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/reg_wr_sel
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/reg_rd_sel
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/dready_fifo
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/tx_fifo_full
add wave -noupdate -group uart_register /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/rx_fifo_empty
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/clk
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/rst
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/din
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/wr_en
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/rd_en
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/dout
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/full
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/empty
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/addra
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/addrb
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/doutb
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/no_full
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/no_empty
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/catchup_w
add wave -noupdate -group rx_fifo /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_Registers/u_rx_fifo/catchup_r
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/clk
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rst_n
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/baudrate_i
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_en_i
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/full_i
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_i
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_data_o
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_data_valid_o
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_tick_delay
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_tick_plus
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_should_check
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/cs
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/ns
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_reg
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_reg1
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_reg2
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_h2l
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/tick
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/tick_reg
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/tick_l2h
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/tick_h2l
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/tick_counter
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/rx_data
add wave -noupdate -group rx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_rx_fsm/gen_baudrate
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/clk
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/rst_n
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/baudrate_i
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/tx_en_i
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/tx_data_i
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/empty_i
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/rd_en_o
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/tx_o
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/cs
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/ns
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/bit_cnt
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/send_tick
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/send_tick_r
add wave -noupdate -group tx_fsm /fwrisc_uart_tb/u_fwrisc_fpga_top/u_fwrisc_fpga_top/u_uart/u_UART_tx_fsm/send_tick_puls
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20003524000 ps} 1} {{Cursor 2} {18757236914 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 199
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {18730454205 ps} {20836914252 ps}
