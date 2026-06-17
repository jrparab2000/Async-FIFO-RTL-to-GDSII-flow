# ==============================================================================
# OpenROAD Execution Script - Step 3: Standard Cell Placement
# File: 3_placement.tcl
# ==============================================================================

# 1. Load the core database from Step 2
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 3] Executing Standard Cell Placement for: $::env(DESIGN_NAME)"
puts "========================================================================"

set current_block [ord::get_db_block]
if {$current_block == "NULL" || $current_block == ""} {
    puts "\[OR-FLOW] Loading Step 2 Database Checkpoint..."
    read_db [file normalize "${::env(BACKUPS_DIR)}/2_floorplan.odb"]
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
# 2. Apply Placement Cell Padding
# This inserts an invisible buffer margin around cells to prevent routing 
# congestion in logic-dense structures like an ASYNC_FIFO
if { [info exists ::env(CELL_PAD_IN_SITES)] && $::env(CELL_PAD_IN_SITES) > 0 } {
    puts "\[OR-FLOW] Setting cell padding margins ($::env(CELL_PAD_IN_SITES) sites) to alleviate local routing congestion..."
    set_placement_padding -global -left $::env(CELL_PAD_IN_SITES) -right $::env(CELL_PAD_IN_SITES)
}

foreach layer_adjustment $::env(GLOBAL_ROUTING_LAYER_ADJUSTMENTS) {
    lassign $layer_adjustment layer adjustment
    set_global_routing_layer_adjustment $layer $adjustment
}

set_routing_layers -signal $::env(GLOBAL_ROUTING_LAYERS) \
                   -clock $::env(GLOBAL_ROUTING_CLOCK_LAYERS)

# 3. Global Placement
# Uses the RePlAce analytic engine to intelligently cluster and distribute cells
puts "\[OR-FLOW] Initiating Global Placement via RePlAce analytic engine..."
global_placement \
    -routability_driven \
    -density $::env(PLACE_DENSITY_LB) \
    -overflow 0.10 \
    -pad_left $::env(CELL_PAD_IN_SITES) \
    -pad_right $::env(CELL_PAD_IN_SITES)

# below is the timing driven version 
# global_placement \
#     -timing_driven \
#     -density $::env(PLACE_DENSITY_LB) \
#     -overflow 0.10 \
#     -pad_left $::env(CELL_PAD_IN_SITES) \
#     -pad_right $::env(CELL_PAD_IN_SITES)

# replace the pins after placement position will be more accurate
place_pins \
    -hor_layer $::env(PIN_IO_LAYER_H) \
    -ver_layer $::env(PIN_IO_LAYER_V) 

# 4. Placement Optimization & Resize
# Modifies drive strengths and inserts basic logic buffers to optimize long timing paths
puts "\[OR-FLOW] Optimizing wire length distributions and gate driving sizing..."
source $::env(LAYER_RC_FILE)

set_wire_rc -signal -layer $::env(WIRE_RC_LAYER)
set_wire_rc -clock -layer $::env(WIRE_RC_LAYER_CLK)
set_dont_use $::env(DONT_USE)

estimate_parasitics -placement

set_placement_padding -global -left $::env(DETAIL_PAD_IN_SITES) -right $::env(DETAIL_PAD_IN_SITES)

# 5. Detailed Placement (Legalization)
# Takes the global placement and snaps every cell perfectly into a legal row site
puts "\[OR-FLOW] Legalizing cell positions into site rows via OpenDP..."
detailed_placement

# 6. Check Placement Quality
# Confirms that no cells overlap and that every instance sits perfectly inside the core boundary
puts "\[OR-FLOW] Running physical placement validity checks..."
check_placement

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
# 7. Save Progress Checkpoint
puts "\[OR-FLOW] Writing Placement Database Checkpoint..."
write_db [file normalize "${::env(BACKUPS_DIR)}/3_placement.odb"]

puts "========================================================================"
puts " \[SUCCESS] Step 3 Complete. Logic Gates Legalized on Rows."
puts "========================================================================"