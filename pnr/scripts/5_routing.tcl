# ==============================================================================
# OpenROAD Execution Script - Step 5: Global and Detailed Routing
# File: 5_routing.tcl
# ==============================================================================

# 1. Load the core database from Step 4
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "config.tcl"]

puts "========================================================================"
puts " \[PnR-STEP 5] Executing Metal Layer Routing for: $::env(DESIGN_NAME)"
puts "========================================================================"

set current_block [ord::get_db_block]
if {$current_block == "NULL" || $current_block == ""} {
    puts "\[OR-FLOW] Loading Step 4 Database Checkpoint..."
    read_db [file normalize "${::env(BACKUPS_DIR)}/4_cts.odb"]
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

# 2. Configure Global Router (FastRoute) Parameters
# Restrict routing to the metal layers defined in our config.tcl
puts "\[OR-FLOW] Setting active routing layers ($::env(MIN_ROUTING_LAYER) to $::env(MAX_ROUTING_LAYER))..."
set_routing_layers \
    -signal $::env(MIN_ROUTING_LAYER)-$::env(MAX_ROUTING_LAYER)

pin_access

set route_guide ${::env(RESULTS_DIR)}/${::env(TOP_LEVEL_MODULE)}.route_guide
# 3. Execute Global Routing
# FastRoute plans the ideal abstract routes and checks for local layout congestion bottlenecks
puts "\[OR-FLOW] Commencing Global Routing phase via FastRoute..."
global_route\
    -guide_file $route_guide \
    -congestion_iterations $::env(ROUTING_ITERATIONS)

write_verilog -remove_cells $::env(FILL_CELLS) ${::env(NETLIST_DIR)}/${::env(TOP_LEVEL_MODULE)}_routing.v

check_antennas

filler_placement $::env(FILL_CELLS)
check_placement -verbose

pin_access

# 4. Configure Detailed Router (TritonRoute) Parameters
# We supply thread limits and repair targets to optimize execution speed
puts "\[OR-FLOW] Initializing Detailed Router engine parameters..."
set_thread_count [exec getconf _NPROCESSORS_ONLN]

# 5. Execute Detailed Routing
# TritonRoute replaces the abstract paths with real, manufacturing-legal wire geometries.
# It iteratively fixes short circuits and spacing errors (DRCs) automatically.
puts "\[OR-FLOW] Commencing Detailed Routing phase via TritonRoute..."
detailed_route \
    -output_drc [file normalize "${::env(LOGS_DIR)}/5_route_drc.rpt"] \
    -output_maze [file normalize "${::env(LOGS_DIR)}/5_route_maze.log"] \
    -no_pin_access \
    -save_guide_updates \
    -verbose 0
    # -iterations $::env(DRT_REPAIR_ITERATIONS)

write_guides [file normalize "${::env(LOGS_DIR)}/5_route_guides.mod"]



# 6. Post-Route Verification Check
# Verify that the detailed router left behind zero structural wire openings or short circuits
puts "\[OR-FLOW] Running post-route connection validation checks..."
detailed_route_num_drvs
check_antennas


# 7. Save Progress Checkpoint
puts "\[OR-FLOW] Writing Routing Database Checkpoint..."
write_db [file normalize "${::env(BACKUPS_DIR)}/5_routing.odb"]
write_def [file normalize "${::env(RESULTS_DIR)}/5_route_DEF.def"]

puts "========================================================================"
puts " \[SUCCESS] Step 5 Complete. Copper Interconnect Trackways Implemented."
puts "========================================================================"