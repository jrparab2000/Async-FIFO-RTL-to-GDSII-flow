# ==============================================================================
# OpenROAD Execution Script - Step 6: Parasitic RC Extraction (RCX)
# File: 6_parasitics.tcl
# ==============================================================================

# 1. Load the core database from Step 5
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 6] Extracting Wire Parasitics (RCX) for: $::env(DESIGN_NAME)"
puts "========================================================================"

set current_block [ord::get_db_block]
if {$current_block == "NULL" || $current_block == ""} {
    puts "\[OR-FLOW] Loading Step 5 Database Checkpoint..."
    read_db [file normalize "${::env(BACKUPS_DIR)}/5_routing.odb"]
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

# 2. Define Extraction Context Process Corner
# We map the parasitic engine corner to match our routing layer constraints
puts "\[OR-FLOW] Initializing OpenRCX extraction parameters..."

if { $::env(RCX_RULES_MAX) != "" } {
    define_process_corner -ext_model_index 0 X

    # 3. Run Parasitic RC Extraction
    # OpenRCX uses the foundry calibration rules file to calculate the absolute 
    # capacitance and resistance of every wire trace and via hookup.
    puts "\[OR-FLOW] Extracting R and C values from metal interconnect geometry..."
    extract_parasitics -ext_model_file $::env(RCX_RULES_MAX)
} else {
    extract_parasitics -global_routing
}


# 4. Export the Parasitics Data to a SPEF File
# This file is the critical bridge used by timing sign-off engines to compute
# real-world propagation delays.
set spef_output [file normalize "${::env(RESULTS_DIR)}/6_parasitics.spef"]
puts "\[OR-FLOW] Writing extraction sign-off file to: ${spef_output}..."
write_spef $spef_output
read_spef $spef_output

report_checks -path_delay min_max -format full_clock_expanded \
    -fields {input_pin slew capacitance} -digits 3
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_skew -max_capacitance -max_fanout -violators -digits 3
report_clock_skew -digits 3
report_power
report_design_area

utl::metric "DRT::worst_slack_min" [sta::worst_slack -min]
utl::metric "DRT::worst_slack_max" [sta::worst_slack -max]
utl::metric "DRT::tns_max" [sta::total_negative_slack -max]
utl::metric "DRT::clock_skew" [expr abs([sta::worst_clock_skew -setup])]

# 5. Save Progress Checkpoint
# We write out a final routed database containing the annotated RC network properties
puts "\[OR-FLOW] Writing Parasitics Database Checkpoint..."
write_db [file normalize "${::env(BACKUPS_DIR)}/6_parasitics.odb"]

puts "========================================================================"
puts " \[SUCCESS] Step 6 Complete. Parasitic SPEF Matrix Successfully Generated."
puts "========================================================================"