# ==============================================================================
# Questa Sim Simulation Makefile
# ==============================================================================

# 1. Design Settings
TOP_TB     = async_fifo_tb
WORK_DIR   = work

# List your files here. If everything is in one file, just put that file name.
# Assuming you split your files or put them together:
SRCS       = files.f

# 2. Tool & Flag Configurations
VLIB       = vlib
VLOG       ?= vlog
VSIM       = vsim

# Compilation Flags:
# -sv: Enforce SystemVerilog compilation
# +acc: Enable visibility for PLI/waveform dumping without killing all optimizations
VLOG_FLAGS = -sv -timescale=1ns/1ps +acc

# Simulation Flags:
# -voptargs="+acc": Guarantees full signal visibility in the wave window
VSIM_FLAGS = -voptargs="+acc" -msgmode both

# ==============================================================================
# Recipes / Targets
# ==============================================================================

.PHONY: all compile run_cli run_gui clean

all: run_cli

# Target to create the work directory and compile source code
compile: clean
	@echo "========================================="
	@echo "  Creating Work Library & Compiling...   "
	@echo "========================================="
	$(VLIB) $(WORK_DIR)
	$(VLOG) $(VLOG_FLAGS) -work $(WORK_DIR) -f $(SRCS)

# RECIPE 1: Non-GUI / Batch Command-Line Mode
run_cli: compile
	@echo "========================================="
	@echo "  Running Simulation in BATCH Mode      "
	@echo "========================================="
	$(VSIM) -c $(VSIM_FLAGS) -work $(WORK_DIR) $(TOP_TB) -do "run -all; quit"

# RECIPE 2: GUI Mode (Launches Questa Interface with Waves)
run_gui: compile
	@echo "========================================="
	@echo "  Launching Questa GUI with Waveforms     "
	@echo "========================================="
	$(VSIM) $(VSIM_FLAGS) -work $(WORK_DIR) $(TOP_TB) -do "do wave.do; run -all"

# Cleanup temporary compiler and simulation files
clean:
	@echo "Cleaning up compilation logs and libraries..."
	rm -rf $(WORK_DIR) transcript *.wlf vsim.dbg