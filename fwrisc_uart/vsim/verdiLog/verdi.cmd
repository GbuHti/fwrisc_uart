debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" \
          "+ROM=../../rundir/uart/ram.hex"
srcTBInvokeSim
srcTBRunSim
srcTBSimBreak
wvCreateWindow
wvSetCursor -win $_nWave3 1315008890.000000
wvRestoreSignal -win $_nWave3 "/home/yzb/fwrisc/fwrisc_uart/vsim/fwrisc_uart.rc" \
           -overWriteAutoAlias on
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "fwrisc_top" 31 )} 
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "fwrisc_top" 28 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 6299288981.585845 -snap {("tb" 11)}
wvSetWindowTimeUnit -win $_nWave3 1.000000 ms
wvSetWindowTimeUnit -win $_nWave3 1.000000 ps
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 18
wvScrollUp -win $_nWave3 18
wvSelectSignal -win $_nWave3 {( "tb" 8 )} 
