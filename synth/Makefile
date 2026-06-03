# synth/Makefile
YOSYS ?= yosys
# export TOP_MODULE = async_fifo
export TOP_MODULE ?= async_fifo
export LIB_SLOW   ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
export LIB_TYP    ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
export LIB_FAST   ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib
export FILE_LIST  ?= ../files.f

export OUT_DIR = synthesis
export OUT_SCH = schematic

# can be pdf or dot
export VIEW_FORMAT = pdf

create:
	@mkdir -p logs
	@mkdir -p $(OUT_DIR)
	@mkdir -p $(OUT_SCH)

fast: 
	@export LIB=$(LIB_FAST); \
	export CURRENT_NETLIST=$(TOP_MODULE)_synth_fast.v; \
	$(YOSYS) -q -c run_synth.tcl -l logs/yosys_synth_fast.log

typ: 
	@export LIB=$(LIB_TYP); \
	export CURRENT_NETLIST=$(TOP_MODULE)_synth_typ.v; \
	$(YOSYS) -q -c run_synth.tcl -l logs/yosys_synth_typ.log

slow: 
	@export LIB=$(LIB_SLOW); \
	export CURRENT_NETLIST=$(TOP_MODULE)_synth_slow.v; \
	$(YOSYS) -q -c run_synth.tcl -l logs/yosys_synth_slow.log

all: clean create fast typ slow

clean:
	rm -rf logs $(OUT_DIR) $(OUT_SCH)