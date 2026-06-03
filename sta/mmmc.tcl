# ==============================================================================
# OpenSTA MMMC Script (Multi-Mode Multi-Corner)
# ==============================================================================

# 1. Define Corners (Physics)
define_corners ss ff tt

# 2. Load Libraries into their respective corners
read_liberty -corner ss $env(LIB_SLOW)
read_liberty -corner ff $env(LIB_FAST)
read_liberty -corner tt $env(LIB_TYP)

# 3. Load the Synthesized Netlist (We use the Worst-Case/Slow netlist as the baseline)
read_verilog $env(CURRENT_NETLIST)
link_design $env(TOP_MODULE)

# 4. Define Modes (Operations) and apply the SDC files we created
# define_mode func_mode
# read_sdc -mode func_mode func_mode.sdc

# define_mode test_mode
read_sdc $env(CURRENT_MODE)

# 5. Create the MMMC "Views" (Matrix of Mode + Corner)
# We will check Functional mode in Slow (Setup worst-case) and Fast (Hold worst-case)
# define_view -name view_func_slow -mode func_mode -corner ss
# define_view -name view_func_fast -mode func_mode -corner ff

# # We will check Test mode in Slow (Setup worst-case)
# define_view -name view_test_slow -mode test_mode -corner ss

# # 6. Set analysis views
# set_analysis_views -setup {view_func_slow view_test_slow} -hold {view_func_fast}

# 7. Generate Reports
puts "\n========================================================================"
puts " SETUP REPORT: Functional Mode (Slow Corner / Worst-Case)"
puts "========================================================================"
# report_checks -view view_func_slow -path_delay max -format full
report_checks -path_delay max -format full

puts "\n========================================================================"
puts " HOLD REPORT: Functional Mode (Fast Corner / Best-Case)"
puts "========================================================================"
# report_checks -view view_func_fast -path_delay min -format full
report_checks -path_delay min -format full

# puts "\n========================================================================"
# puts " SETUP REPORT: Test Mode (Slow Corner / Worst-Case)"
# puts "========================================================================"
# report_checks -view view_test_slow -path_delay max -format full

exit