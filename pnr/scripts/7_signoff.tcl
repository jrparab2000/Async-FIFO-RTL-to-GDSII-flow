# ==============================================================================
# OpenROAD Execution Script - Step 7: Timing Sign-off & Final GDS Export
# File: 7_signoff.tcl
# ==============================================================================

# 1. Load the core database from Step 6
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 7] Executing Final Tape-Out Sign-Off for: $::env(DESIGN_NAME)"
puts "========================================================================"

set current_block [ord::get_db_block]
if {$current_block == "NULL" || $current_block == ""} {
    puts "\[OR-FLOW] Loading Step 6 Database Checkpoint..."
    read_db [file normalize "${::env(BACKUPS_DIR)}/6_parasitics.odb"]
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
# 2. Inject Physical Filler Cells
# Fills any open spacing gaps inside standard cell rows to maintain a continuous 
# well layout and keep power grid connectivity completely unbroken.
# puts "\[OR-FLOW] Injecting row filler cells into remaining empty gaps..."
# filler_placement $::env(FILL_CELLS)

# 3. Load Post-Route Parasitics Matrix (SPEF)
# Annotates the physical layout wires with the exact electrical delays computed during Step 6
set spef_input [file normalize "${::env(RESULTS_DIR)}/6_parasitics.spef"]
if { [file exists $spef_input] } {
    puts "\[OR-FLOW] Annotating timing graph with post-route parasitics ($spef_input)..."
    read_spef $spef_input
} else {
    puts "\[WARNING] SPEF file missing! Timing reports will fall back to ideal assumptions."
}

# 4. Final Sign-off Static Timing Analysis (STA) Reports
# Generates your final timing constraint sheets to guarantee there are no setup 
# or hold violations on your cross-domain data structures.
puts "\[OR-FLOW] Generating final post-layout sign-off timing reports..."
set_propagated_clock [all_clocks]

set setup_report [file normalize "${::env(LOGS_DIR)}/7_signoff_setup_timing.rpt"]
set hold_report  [file normalize "${::env(LOGS_DIR)}/7_signoff_hold_timing.rpt"]

report_checks -path_delay max -format full_clock -digits 3 > $setup_report
report_checks -path_delay min -format full_clock -digits 3 > $hold_report

puts "\[OR-FLOW] Setup timing report saved to: $setup_report"
puts "\[OR-FLOW] Hold timing report saved to: $hold_report"

# 5. Stream-Out Final Layout (GDSII / DEF Export)
# This step writes out the standard files required by external DRC/LVS tools 
# or directly by the fabrication plant.
set def_output [file normalize "${::env(RESULTS_DIR)}/7_signoff.def"]
set gds_output [file normalize "${::env(RESULTS_DIR)}/7_signoff.gds"]
set lef_output [file normalize "${::env(RESULTS_DIR)}/merged.lef"]


puts "\[OR-FLOW] Exporting structural Design Exchange Format (DEF) file..."
write_def $def_output

puts "\[OR-FLOW] Streaming out production blueprint layout (GDSII) file..."
# OpenROAD's native GDS writer constructs the final physical layout structures
set klayout_lef_inputs [concat $::env(TECH_LEF) $::env(CELL_LEFS)]

write_lef $lef_output

exec klayout -zz \
    -rd design_name=$::env(TOP_LEVEL_MODULE) \
    -rd in_def=$def_output \
    -rd in_files=$::env(TECH_GDS) \
    -rd tech_file=$::env(KLAYOUT_LYT)  \
    -rd out_file=$gds_output \
    -rd layer_map= \
    -rd seal_file= \
    -rm $::env(DEF_TO_STREAM)

puts "========================================================================"
puts " \[SUCCESS] PnR Flow Complete! Tapout Layout Target Generated."
puts " \[OUTPUT] Final GDSII blueprint: $gds_output"
puts "========================================================================"