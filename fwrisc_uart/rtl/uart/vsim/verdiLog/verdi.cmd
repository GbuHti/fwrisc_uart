debImport "-i" "-simflow" "-simBin" "./simv" "-simOpt" " "
srcTBInvokeSim
srcHBSelect "uart_tb.Send" -win $_nTrace1
srcHBSelect "uart_tb.Send" -win $_nTrace1
srcSetScope -win $_nTrace1 "uart_tb.Send" -delim "."
srcDeselectAll -win $_nTrace1
wvCreateWindow
verdiDockWidgetMaximize -dock windowDock_nWave_3
debReload
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvRestoreSignal -win $_nWave3 \
           "/home/yzb/fwrisc/fwrisc_uart/rtl/uart/vsim/uart_tb.rc" \
           -overWriteAutoAlias on
wvUnknownSaveResult -win $_nWave3 -clear
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1} {G2} {G3} {G4}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSelectGroup -win $_nWave3 {G1}
wvRestoreSignal -win $_nWave3 \
           "/home/yzb/fwrisc/fwrisc_uart/rtl/uart/vsim/uart_tb.rc" \
           -overWriteAutoAlias on
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G2}
wvSelectGroup -win $_nWave3 {G4}
wvSelectGroup -win $_nWave3 {G4}
wvSelectGroup -win $_nWave3 {G4}
wvSelectGroup -win $_nWave3 {G4}
wvSelectGroup -win $_nWave3 {G2}
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1} {G2} {G3}
wvSelectGroup -win $_nWave3 {G1} {G2} {G3}
wvSelectGroup -win $_nWave3 {G1} {G2} {G3} {G4}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectGroup -win $_nWave3 {G1}
wvSelectGroup -win $_nWave3 {G1}
wvRestoreSignal -win $_nWave3 \
           "/home/yzb/fwrisc/fwrisc_uart/rtl/uart/vsim/uart_tb.rc" \
           -overWriteAutoAlias on
wvSelectGroup -win $_nWave3 {G1} {G2} {G3} {G4}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvTpfCloseForm -win $_nWave3
wvGetSignalClose -win $_nWave3
wvCloseWindow -win $_nWave3
srcTBInvokeSim
srcTBRunSim
srcTBSimBreak
wvCreateWindow
verdiDockWidgetMaximize -dock windowDock_nWave_4
wvSelectGroup -win $_nWave4 {G1}
wvGetSignalOpen -win $_nWave4
wvGetSignalSetScope -win $_nWave4 "/uart_tb"
wvSetPosition -win $_nWave4 {("G1" 10)}
wvSetPosition -win $_nWave4 {("G1" 10)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/uart_tb/csr_a\[13:0\]} \
{/uart_tb/csr_di\[31:0\]} \
{/uart_tb/csr_do\[31:0\]} \
{/uart_tb/csr_we} \
{/uart_tb/rx_irq} \
{/uart_tb/sys_clk} \
{/uart_tb/sys_rst} \
{/uart_tb/tx_irq} \
{/uart_tb/uart_rx} \
{/uart_tb/uart_tx} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave4 {("G1" 10)}
wvSetPosition -win $_nWave4 {("G1" 10)}
wvSetPosition -win $_nWave4 {("G1" 10)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/uart_tb/csr_a\[13:0\]} \
{/uart_tb/csr_di\[31:0\]} \
{/uart_tb/csr_do\[31:0\]} \
{/uart_tb/csr_we} \
{/uart_tb/rx_irq} \
{/uart_tb/sys_clk} \
{/uart_tb/sys_rst} \
{/uart_tb/tx_irq} \
{/uart_tb/uart_rx} \
{/uart_tb/uart_tx} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave4 {("G1" 10)}
wvGetSignalClose -win $_nWave4
wvSelectGroup -win $_nWave4 {G2}
wvSelectGroup -win $_nWave4 {G2}
wvSetCursor -win $_nWave4 379934045.000964 -snap {("G1" 2)}
wvSetCursor -win $_nWave4 88635306.841335 -snap {("G1" 6)}
wvSetCursor -win $_nWave4 133192515.145357 -snap {("G1" 5)}
wvSetCursor -win $_nWave4 82406879.874106 -snap {("G1" 5)}
wvSetCursor -win $_nWave4 124568539.344578 -snap {("G1" 4)}
wvSetCursor -win $_nWave4 201226102.018165 -snap {("G1" 4)}
wvSelectSignal -win $_nWave4 {( "G1" 7 )} 
wvSelectSignal -win $_nWave4 {( "G1" 9 )} 
wvSelectSignal -win $_nWave4 {( "G1" 10 )} 
debExit
