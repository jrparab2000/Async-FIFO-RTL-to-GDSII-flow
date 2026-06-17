# ==============================================================================
# OpenROAD Execution Script - Step 4: Clock Tree Synthesis (CTS)
# File: 4_cts.tcl
# ==============================================================================

# 1. Load the core database from Step 3
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 4] Executing Clock Tree Synthesis for: $::env(DESIGN_NAME)"
puts "========================================================================"

set current_block [ord::get_db_block]
if {$current_block == "NULL" || $current_block == ""} {
    puts "\[OR-FLOW] Loading Step 3 Database Checkpoint..."
    read_db [file normalize "${::env(BACKUPS_DIR)}/3_placement.odb"]
    puts "\[OR-FLOW] Loading Logical Timing Libraries..."
    read_liberty $::env(LIB_SLOW)
    read_liberty $::env(LIB_TYP)
    read_liberty $::env(LIB_FAST)
    if { [file exists $::env(DESIGN_SDC)] } {
    puts "\[OR-FLOW] Loading Static Timing Constraints ($::env(DESIGN_SDC))..."
    read_sdc $::env(DESIGN_SDC)
} else {
    puts "\[WARNING] SDC file not found at $::env(DESIGN_SDC). Timing margins will not be constrained!"
}
} else {
    puts "\[OR-FLOW] Design database is already loaded ($current_block). Skipping read_db to avoid collision."
}
# 2. Configure TritonCTS Hyperparameters
# We specify which buffers from the Sky130 HD library are allowed to be used for the clock network
puts "\[OR-FLOW] Configuring Clock Tree Root Buffers..."
# set_cts_buffer_list $::env(CTS_CLK_BUFFERS)
repair_clock_inverters
source $::env(LAYER_RC_FILE)
# 3. Run Clock Tree Synthesis
# TritonCTS will automatically detect the independent clock roots from your SDC file 
# (e.g., your write clock and read clock) and synthesize balanced trees for both.
puts "\[OR-FLOW] Synthesizing independent clock networks via TritonCTS..."
configure_cts_characterization \
    -max_slew $::env(CTS_MAX_SLEW) \
    -max_cap $::env(CTS_MAX_CAP)
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__inv_6]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__inv_4]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__inv_2]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__inv_1]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__clkinv_4]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__clkinv_2]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__clkinv_1]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__clkinvlp_4]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__clkinvlp_2]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__bufinv_8]
# set_dont_use [get_lib_cells */sky130_fd_sc_hd__bufinv_16]
set_dont_use $::env(DONT_USE)
clock_tree_synthesis \
    -root_buf $::env(CTS_CLK_BUFFERS) \
    -buf_list $::env(CTS_CLK_BUFFERS) \
    -sink_clustering_enable \
    -sink_clustering_max_diameter $::env(CTS_CLUSTER_DIAMETER)

repair_clock_nets

# 4. Legalize the Newly Inserted Clock Buffers
# CTS inserts hundreds of new buffers into the design. We must rerun detailed 
# placement to snap these new buffers cleanly onto legal row sites.
puts "\[OR-FLOW] Legalizing clock tree buffer insertions via OpenDP..."
detailed_placement

# 5. Post-CTS Timing Evaluation
# Up until this point, clocks were ideal. Now that the physical clock trees exist,
# we update the timing model to use "propagated clock" delays for real metrics.
puts "\[OR-FLOW] Updating timing model to use Propagated Clock Delays..."
set_propagated_clock [all_clocks]

puts "\[OR-FLOW] Running Post-CTS Static Timing Analysis (STA) summary..."
# set_wire_rc -signal -layer $::env(WIRE_RC_LAYER)
# set_wire_rc -clock -layer $::env(WIRE_RC_LAYER_CLK)
set_dont_use $::env(DONT_USE)

if { $::env(REPAIR_TIMING_USE_GRT_PARASITICS) } {
    global_route -congestion_iterations $::env(ROUTING_ITERATIONS)
    estimate_parasitics -global_routing
} else {
    estimate_parasitics -placement
}

repair_timing -skip_gate_cloning

report_checks -path_delay min_max -fields {slew cap input pin line__vars}

report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_skew -max_capacitance -max_fanout -violators

set report_output ""

tee -variable report_output {
    report_check_types -max_skew -max_capacitance -max_fanout -violators
}
if {[string match "*(VIOLATED)*" $report_output]} {
    puts "Violations detected! Running repair_design..."
    
    repair_design
    detailed_placement
    report_worst_slack -min -digits 3
    report_worst_slack -max -digits 3
    report_tns -digits 3
    report_check_types -max_skew -max_capacitance -max_fanout -violators
} else {
    puts "No violations found. Skipping repair_design."
}

# 6. Save Progress Checkpoint
puts "\[OR-FLOW] Writing CTS Database Checkpoint..."
write_db [file normalize "${::env(BACKUPS_DIR)}/4_cts.odb"]

# 7. Saving Verilog file with clock tree
puts "\[OR-FLOW] Writing Verliog file..."

write_verilog ${::env(NETLIST_DIR)}/${::env(TOP_LEVEL_MODULE)}_cts.v

puts "========================================================================"
puts " \[SUCCESS] Step 4 Complete. Balanced Dual-Clock Networks Built."
puts "========================================================================"