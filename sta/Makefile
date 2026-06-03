# sta/Makefile
STA ?= sta
# These exports allow run_mmmc.tcl to find the libraries
export LIB_SLOW ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
export LIB_TYP  ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
export LIB_FAST ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib

export TOP_MODULE ?= async_fifo

sta_slow_func:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_slow.v; \
	export CURRENT_MODE=constraint/func_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_ss_func.log 2>&1

sta_typ_func:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_typ.v; \
	export CURRENT_MODE=constraint/func_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_tt_func.log 2>&1

sta_fast_func:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_fast.v; \
	export CURRENT_MODE=constraint/func_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_ff_func.log 2>&1

sta_slow_test:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_slow.v; \
	export CURRENT_MODE=constraint/test_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_ss_test.log 2>&1

sta_typ_test:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_typ.v; \
	export CURRENT_MODE=constraint/test_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_tt_test.log 2>&1
	
sta_fast_test:
	@export CURRENT_NETLIST=../synth/synthesis/async_fifo_synth_fast.v; \
	export CURRENT_MODE=constraint/test_mode.sdc; \
	$(STA) -exit mmmc.tcl > reports/opensta_ff_test.log 2>&1

all: sta_slow_func sta_typ_func sta_fast_func sta_slow_test sta_typ_test sta_fast_test

clean:
	rm -f reports/*.log *.rpt