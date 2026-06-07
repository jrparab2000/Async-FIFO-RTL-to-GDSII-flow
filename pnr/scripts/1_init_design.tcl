# ==============================================================================
# OpenROAD Execution Script - Step 1: Design Initialization
# File: 1_init_design.tcl
# ==============================================================================

# 1. Source the global configuration parameters
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 1] Initializing Database for Design: $::env(DESIGN_NAME)"
puts "========================================================================"

# 2. Read Timing/Logical Libraries (.lib)
# We read all three corners (Slow, Typical, Fast) for Multi-Corner analysis
puts "\[OR-FLOW] Loading Logical Timing Libraries..."
read_liberty $::env(LIB_SLOW)
read_liberty $::env(LIB_TYP)
read_liberty $::env(LIB_FAST)

# 3. Read Physical Layout Libraries (.lef)
# Read Tech LEF first (establishes routing rules), followed by Cell LEF (cell macros)
puts "\[OR-FLOW] Loading Technology and Cell Physical Libraries..."
read_lef $::env(TECH_LEF)
foreach lef_file $::env(CELL_LEFS) {
    read_lef $lef_file
}

# 4. Read the Gate-Level Netlist (.v)
puts "\[OR-FLOW] Reading Structural Synthesized Verilog Netlist..."
read_verilog $::env(SYNTH_NETLIST)

# 5. Link Design to the Database Top Module
puts "\[OR-FLOW] Linking design top module: $::env(TOP_LEVEL_MODULE)..."
link_design $::env(TOP_LEVEL_MODULE)

# 6. Read Timing Constraints (.sdc)
# This defines your clock frequencies, clock jitter, and input/output delays
if { [file exists $::env(DESIGN_SDC)] } {
    puts "\[OR-FLOW] Loading Static Timing Constraints ($::env(DESIGN_SDC))..."
    read_sdc $::env(DESIGN_SDC)
} else {
    puts "\[WARNING] SDC file not found at $::env(DESIGN_SDC). Timing margins will not be constrained!"
}

# 7. Write Out Intermediate OpenROAD Database Checkpoint (.odb)
# This file lets the next script pick up exactly where this one left off
puts "\[OR-FLOW] Writing Initialization Database Checkpoint..."
write_db [file normalize "${::env(BACKUPS_DIR)}/1_init.odb"]

puts "========================================================================"
puts " \[SUCCESS] Step 1 Complete. Database Checkpoint Saved."
puts "========================================================================"