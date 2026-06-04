# ==============================================================================
# Master Makefile for Async FIFO RTL-to-STA Flow
# ==============================================================================

# Tools
export YOSYS = yosys
export STA   = sta
export VLOG = vlog

# Design Configurations
export TOP_MODULE = async_fifo

# Shared PDK Library Paths
export LIB_SLOW = /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
export LIB_TYP  = /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
export LIB_FAST = /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib

export FILE_LIST = ../files.f

# Subdirectories
SYNTH_DIR = synth
STA_DIR   = sta
LINT_DIR = lint
SIM_DIR = sim

.PHONY: all synth sta lint clean sim

# Default target runs the entire synthesis and STA flow
all: clean lint synth sta sim

# Call synthesis sub-makefile
synth:
	$(MAKE) -C $(SYNTH_DIR) all

# Call STA sub-makefile
sta:
	$(MAKE) -C $(STA_DIR) all

lint:
	$(MAKE) -C $(LINT_DIR) all

sim:
	$(MAKE) -C $(SIM_DIR) run_cli

# Clean both synthesis and STA directories
clean:
	$(MAKE) -C $(SYNTH_DIR) clean
	$(MAKE) -C $(STA_DIR) clean
	$(MAKE) -C $(LINT_DIR) clean
	$(MAKE) -C $(SIM_DIR) clean