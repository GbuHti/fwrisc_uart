debImport "-f" "fwrisc_uart.f"
verdiWindowResize -win $_Verdi_1 "2" "32" "1916" "1006"
debReload
srcHBSelect "fwrisc_uart_tb.u_fwrisc_fpga_top.u_uart.u_UART_Registers" -win \
           $_nTrace1
srcHBSelect "fwrisc_uart_tb.u_fwrisc_fpga_top.u_uart.u_UART_Registers" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "fwrisc_uart_tb.u_fwrisc_fpga_top.u_uart.u_UART_Registers" -delim \
           "."
