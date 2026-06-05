# ==============================================================================
# OpenROAD Configuration File (config.tcl)
# Dynamically inherits environment variables from config.mk/Makefile
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. Core Design Definitions (Inherited from Environment)
# ------------------------------------------------------------------------------
set ::env(DESIGN_NAME)          $env(DESIGN_NAME)
set ::env(TOP_LEVEL_MODULE)     $env(DESIGN_NAME)

# Paths resolved directly from your Makefile configurations
set ::env(SYNTH_NETLIST)        $env(SYNTH_NETLIST)
set ::env(DESIGN_SDC)           $env(DESIGN_SDC)
set ::env(RESULTS_DIR)          $env(RESULTS_DIR)
set ::env(LOGS_DIR)             $env(LOGS_DIR)

# ------------------------------------------------------------------------------
# 2. PDK & Technology Library Configurations (Sky130HD Reference)
# ------------------------------------------------------------------------------
# Set your central PDK root directory
set pdk_root                    "/home/jrparab/OpenROAD/test/sky130hd"

# Physical Library Definitions (LEF)
set ::env(TECH_LEF)             "${pdk_root}/sky130hd.tlef"
set ::env(CELL_LEFS)            [list "/usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef"]

# Timing Corners (Matching your front-end Makefile paths)
set ::env(LIB_SLOW)             $env(LIB_SLOW)
set ::env(LIB_TYP)              $env(LIB_TYP)
set ::env(LIB_FAST)             $env(LIB_FAST)

# RC Parasitic Sign-off Technology Files (OpenRCX rules)
set ::env(RCX_RULES_MAX)        "${pdk_root}/sky130hd.rcx_rules"

# Wire information
set ::env(TRACK_FILE)           "${pdk_root}/sky130hd.tracks"

set ::env(PDN_TCL)              "${pdk_root}/sky130hd.pdn.tcl"

# ------------------------------------------------------------------------------
# 3. Floorplan & Power Grid (PDN) Parameters
# ------------------------------------------------------------------------------
set ::env(CORE_UTILIZATION)     40.0
set ::env(ASPECT_RATIO)         1.0

# Core margins (spacing boundary between rows and outer die edge in microns)
set ::env(CORE_MARGIN_LEFT)     10.0
set ::env(CORE_MARGIN_RIGHT)    10.0
set ::env(CORE_MARGIN_TOP)      10.0
set ::env(CORE_MARGIN_BOTTOM)   10.0

# Pin Placement Parameters
set ::env(PIN_IO_PADDING)       4.0
set ::env(PIN_IO_LAYER_H)       "met3"
set ::env(PIN_IO_LAYER_V)       "met4"

#Macro Placement Parameters
set ::env(MACRO_HALO_SPACE)     2.0
set ::env(MACRO_PLACE_CHANNEL)  ""

# Power Distribution Grid Definitions
set ::env(VDD_NETS)             "VDD"
set ::env(VSS_NETS)             "VSS"
set ::env(PDN_UPPER_METAL)      "met5"
set ::env(PDN_LOWER_METAL)      "met1"

# ------------------------------------------------------------------------------
# 4. Tool Execution Optimization Flags
# ------------------------------------------------------------------------------
# Placement Optimization Flags
set ::env(GLOBAL_ROUTING_LAYERS)       "li1-met5"
set ::env(GLOBAL_ROUTING_CLOCK_LAYERS) "met3-met5"
set ::env(PLACE_DENSITY_LB)     0.45
set ::env(CELL_PAD_IN_SITES)    2;          # Padding to avoid routing congestion in ASYNC_FIFO
# 2. Define routing capacity reductions (30% for lower metals, 20% for upper metals)
set ::env(GLOBAL_ROUTING_LAYER_ADJUSTMENTS) {
    {li1 0.3}
    {met1 0.3}
    {met2 0.2}
    {met3 0.2}
    {met4 0.2}
    {met5 0.2}
}

#detailed Placement paremeters
set ::env(LAYER_RC_FILE)        "${pdk_root}/sky130hd.rc"
set ::env(WIRE_RC_LAYER)        "met2"
set ::env(WIRE_RC_LAYER_CLK)    "met5"

#List of standard cells OpenROAD should NOT use for sizing/repairing
set ::env(DONT_USE) {
    sky130_fd_sc_hd__dlygate4sd1_*
    sky130_fd_sc_hd__dlygate4sd2_*
    sky130_fd_sc_hd__dlygate4sd3_*
    sky130_fd_sc_hd__probe_p_*
}
set ::env(DETAIL_PAD_IN_SITES)    2;

# Clock Tree Synthesis Controls (TritonCTS Flags)
set ::env(CTS_CLK_BUFFERS)       "sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_8"
set ::env(CTS_MAX_CAP)           0.25;       # Max load capacitance (pF)
set ::env(CTS_MAX_SLEW)          0.75;       # Max slew target (ns)

# Routing Layer Limits
set ::env(MIN_ROUTING_LAYER)     "met1"
set ::env(MAX_ROUTING_LAYER)     "met5"

# Detail Router Controls
set ::env(DRT_THREADS)           4
set ::env(DRT_REPAIR_ITERATIONS) 20

# Physical Cell Names
set ::env(FILL_CELLS)           "sky130_fd_sc_hd__fill_*"
set ::env(TAP_CELL_NAME)        "sky130_fd_sc_hd__tapvpwrvgnd_1"
set ::env(TAP_DIST)             14;         # Latchup prevention pitch distance limit

puts "\[INFO] OpenROAD unified configuration environment successfully loaded."