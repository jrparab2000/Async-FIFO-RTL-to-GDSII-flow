# ==============================================================================
# OpenROAD Flow Makefile Configuration (config.mk)
# ==============================================================================

# Global Project Path Configurations
export PNR_ROOT       := $(shell pwd)
export DESIGN_NAME    := async_fifo
export CONFIG_TCL     := $(PNR_ROOT)/config.tcl

# --- Added for config.tcl Synchronization ---
export SYNTH_NETLIST  := $(PNR_ROOT)/../synth/synthesis/async_fifo_synth_fast.v
export DESIGN_SDC     := $(PNR_ROOT)/../sta/constraint/func_mode.sdc
# --------------------------------------------

# Output Subdirectories
export RESULTS_DIR    := $(PNR_ROOT)/results
export LOGS_DIR       := $(PNR_ROOT)/logs
export NETLIST		  := $(PNR_ROOT)/netlist
export SCRIPT_DIR     := $(PNR_ROOT)/scripts

# Shared PDK Library Paths
export LIB_SLOW ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib
export LIB_TYP  ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
export LIB_FAST ?= /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib

# Step-by-Step Tcl Script Map
INIT_TCL              := $(SCRIPT_DIR)/1_init_design.tcl
FLOORPLAN_TCL         := $(SCRIPT_DIR)/2_floorplan.tcl
PLACEMENT_TCL         := $(SCRIPT_DIR)/3_placement.tcl
CTS_TCL               := $(SCRIPT_DIR)/4_cts.tcl
ROUTING_TCL           := $(SCRIPT_DIR)/5_routing.tcl
PARASITICS_TCL        := $(SCRIPT_DIR)/6_parasitics.tcl
SIGNOFF_TCL           := $(SCRIPT_DIR)/7_signoff.tcl

# Intermediate Design Checkpoints (OpenROAD Database Format)
DB_INIT               := $(RESULTS_DIR)/1_init.odb
DB_FLOORPLAN          := $(RESULTS_DIR)/2_floorplan.odb
DB_PLACEMENT          := $(RESULTS_DIR)/3_placement.odb
DB_CTS                := $(RESULTS_DIR)/4_cts.odb
DB_ROUTING            := $(RESULTS_DIR)/5_routing.odb
DB_PARASITICS         := $(RESULTS_DIR)/6_parasitics.odb
DB_FINAL              := $(RESULTS_DIR)/7_signoff.gds

OPENROAD_EXE          := openroad