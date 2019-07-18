V_FILES		:= ../uart.f
FSDB_FILE 	:= uart_tb.fsdb

SIM_TOOL 	:= vcs 

SIM_OPTIONS   := -timescale=1ns/1ps \
	-fsdb  -full64  +vc  +v2k  -sverilog  -debug_all  \
	-lca -kdb											\
	-P ${LD_LIBRARY_PATH}/novas.tab  ${LD_LIBRARY_PATH}/pli.a  \
	+define+SIMULATION+ 

EXEC 	:=	./simv
EXEC_OPTIONS	:= -gui=verdi


VERDI:= verdi
VERDI_OPTIONS := -sv -f ${V_FILES} -ssf ${FSDB_FILE}

all:verdi

compile:
	${SIM_TOOL} ${SIM_OPTIONS} -f ${V_FILES}

exec:compile
	${EXEC} ${EXEC_OPTIONS}  &

verdi:exec
	${VERDI}  ${VERDI_OPTIONS} &


