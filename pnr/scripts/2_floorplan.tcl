# ==============================================================================
# OpenROAD Execution Script - Step 2: Floorplanning & Power Grid Generation
# File: 2_floorplan.tcl (Updated with Macro/SRAM support)
# ==============================================================================

# 1. Load the core database from Step 1
set script_dir [file dirname [file normalize [info script]]]
source [file normalize "${script_dir}/../config.tcl"]

puts "========================================================================"
puts " [PnR-STEP 2] Executing Floorplan, Macro Placement & PDN"
puts "========================================================================"

puts "\[OR-FLOW] Loading Step 1 Database Checkpoint..."
read_db [file normalize "${::env(RESULTS_DIR)}/1_init.odb"]

# 2. Initialize the Floorplan Box
puts "\[OR-FLOW] Initializing Core and Die Area Boundaries..."
initialize_floorplan \
    -utilization $::env(CORE_UTILIZATION) \
    -aspect_ratio $::env(ASPECT_RATIO) \
    -core_space [list $::env(CORE_MARGIN_LEFT) $::env(CORE_MARGIN_BOTTOM) \
                      $::env(CORE_MARGIN_RIGHT) $::env(CORE_MARGIN_TOP)] \
    -site "unithd"


# below are the tracks that can be added manually like below or can directly import from .tracks file
# make_tracks li1  -x_offset 0.23 -x_pitch 0.46 -y_offset 0.17 -y_pitch 0.34
# make_tracks met1 -x_offset 0.17 -x_pitch 0.34 -y_offset 0.17 -y_pitch 0.34
# make_tracks met2 -x_offset 0.23 -x_pitch 0.46 -y_offset 0.23 -y_pitch 0.46
# make_tracks met3 -x_offset 0.34 -x_pitch 0.68 -y_offset 0.34 -y_pitch 0.68
# make_tracks met4 -x_offset 0.46 -x_pitch 0.92 -y_offset 0.46 -y_pitch 0.92
# make_tracks met5 -x_offset 1.70 -x_pitch 3.40 -y_offset 1.70 -y_pitch 3.40

source $::env(TRACK_FILE)

# Removes any buffers inserted by the synthesis tool
remove_buffers

# 4. Automatic Pin Placement
puts "\[OR-FLOW] Placing I/O Boundary Pins via ioPlacer..."
place_pins \
    -hor_layer $::env(PIN_IO_LAYER_H) \
    -ver_layer $::env(PIN_IO_LAYER_V) 

# 3. Macro Detection and Placement
# We check the memory database to see if there are any physical macro blocks
set block [[[::ord::get_db] getChip] getBlock]
set insts [$block getInsts]
set has_macros 0

foreach inst $insts {
    set master [$inst getMaster]
    if { [$master isBlock] } {
        set has_macros 1
        puts "\[OR-FLOW] Detected Macro Instance: [$inst getName] (Type: [$master getName])"
    }
}

if { $has_macros } {
    puts "\[OR-FLOW] Macros detected. Executing Macro Placement Optimization..."
    
    # Run OpenROAD's automated macro placer to find optimal corners for SRAMs
    macro_placement
    
    # Insert halo component spacing margins around your macros to prevent 
    # standard cells from squeezing too closely to memory pin connections
    add_macro_halo -halo_space 2.0
    
    # Permanently lock the macros in place so later stages cannot shift them
    foreach inst $insts {
        set master [$inst getMaster]
        if { [$master isBlock] } {
            $inst setPlacementStatus "FIRM"
        }
    }
    puts "\[OR-FLOW] Macros successfully placed, padded, and locked down."
} else {
    puts "\[OR-FLOW] No hard macros detected in netlist. Continuing flat standard cell flow..."
}

# 5. Insert Well-Taps and Endcaps
puts "\[OR-FLOW] Injecting Substrate Well-Taps and Row Endcaps..."
tapcell \
    -distance $::env(TAP_DIST) \
    -tapcell_master $::env(TAP_CELL_NAME) \
    -endcap_master "sky130_fd_sc_hd__decap_3"

# 6. Native Power Distribution Network (PDN) Generation
puts "\[OR-FLOW] Generating VDD and VSS Power Distribution Grid..."
# below are the power net parameter manually inserted but can use tech node's .pdn.tcl
# add_global_connection -net $::env(VDD_NETS) -pin_pattern "^VPWR$" -power
# add_global_connection -net $::env(VDD_NETS) -pin_pattern "^VPB$"
# add_global_connection -net $::env(VSS_NETS) -pin_pattern "^VGND$" -ground
# add_global_connection -net $::env(VSS_NETS) -pin_pattern "^VNB$"

# # Standard Cell horizontal power tracks
# define_pdn_grid -name "std_cell_grid" -starts_with POWER
# add_pdn_stripe -grid "std_cell_grid" -layer "met1" -width 0.48 -followpins

# # Thick vertical core straps
# add_pdn_stripe -grid "std_cell_grid" -layer "met4" -width 1.20 -pitch 40.0 -offset 10.0
# add_pdn_connect -grid "std_cell_grid" -layers "met1 met4"

# # IF MACROS EXIST: Build specialized local power rings around them automatically
# if { $has_macros } {
#     define_pdn_grid -name "macro_grid" -macro -starts_with POWER
#     add_pdn_ring -grid "macro_grid" -layers "met4 met5" -widths 2.4 -spaces 1.2 -offsets 2.0
#     add_pdn_connect -grid "macro_grid" -layers "met4 met5"
# }

source $::env(PDN_TCL)

# Execute grid compilation
pdngen

# 7. Save Progress Checkpoint
puts "\[OR-FLOW] Writing Floorplan Database Checkpoint..."
write_db [file normalize "${::env(RESULTS_DIR)}/2_floorplan.odb"]

puts "========================================================================"
puts " [SUCCESS] Step 2 Complete. Floorplan with Macro Constraints Formed."
puts "========================================================================"