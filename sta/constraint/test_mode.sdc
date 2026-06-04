# # ==============================================================================
# # Test Mode Constraints (Slow Speed / Factory Test)
# # ==============================================================================
# # 1. Define a 20 MHz clock (50ns period) - testers run slower
# create_clock -name clk -period 50.0 [get_ports clk]

# # 2. Relax the I/O delays since the clock is so slow
# set_input_delay 5.0 -clock clk [all_inputs]
# set_output_delay 5.0 -clock clk [all_outputs]

# # 3. (Optional) If you have a test_enable pin, force it to '1' so STA 
# # knows test logic is active and ignores normal functional paths.
# # set_case_analysis 1 [get_ports test_en]

# ==============================================================================
# 1. CLOCK DEFINITIONS
# ==============================================================================
# Define the Write Clock: 200 MHz (5.0ns period)
create_clock -name wclk_clk -period 5.0 [get_ports wclk]

# Define the Read Clock: 125 MHz (8.0ns period)
create_clock -name rclk_clk -period 8.0 [get_ports rclk]

# ==============================================================================
# 2. CLOCK UNCERTAINTY & JITTER
# ==============================================================================
# Setup uncertainty (5% of clock period to account for jitter/skew safely)
set_clock_uncertainty -setup 0.25 [get_clocks wclk_clk]
set_clock_uncertainty -setup 0.40 [get_clocks rclk_clk]

# Hold uncertainty (Accounts for local clock skew)
set_clock_uncertainty -hold 0.05 [get_clocks wclk_clk]
set_clock_uncertainty -hold 0.05 [get_clocks rclk_clk]

# ==============================================================================
# 3. ASYNCHRONOUS CLOCK GROUPS (CDC CUT)
# ==============================================================================
# Disables standard setup/hold checks between the unrelated write and read domains.
set_clock_groups -asynchronous -group {wclk_clk} -group {rclk_clk}

# ==============================================================================
# 4. INPUT DELAYS (Signals entering the chip)
# ==============================================================================
# Write Domain Inputs (referenced to wclk)
set_input_delay 1.0 -clock wclk_clk [get_ports wtr_en]
set_input_delay 1.0 -clock wclk_clk [get_ports data_in[*]]
set_input_delay 1.0 -clock wclk_clk [get_ports wrst_n]

# Read Domain Inputs (referenced to rclk)
set_input_delay 1.5 -clock rclk_clk [get_ports rd_en]
set_input_delay 1.5 -clock rclk_clk [get_ports rrst_n]

# ==============================================================================
# 5. OUTPUT DELAYS (Signals leaving the chip)
# ==============================================================================
# Write Domain Outputs
set_output_delay 1.0 -clock wclk_clk [get_ports full]

# Read Domain Outputs
set_output_delay 1.5 -clock rclk_clk [get_ports empty]
set_output_delay 1.5 -clock rclk_clk [get_ports data_out[*]]

# ==============================================================================
# 6. ADVANCED CDC CONSTRAINTS (Max Delay / Skew Control)
# ==============================================================================
# Tightened up max delays to match the new faster clock periods.
# This ensures the Gray code pointers travel quickly across the chip physical layout.

# Write-to-Read pointer crossing (Must arrive within one source clock cycle: 5.0ns)
set_max_delay 5.0 -from [get_cells -hierarchical wtr_g_ptr*] -to [get_cells -hierarchical wtr_g_ptr_ff*] -datapath_only

# Read-to-Write pointer crossing (Must arrive within one source clock cycle: 8.0ns)
set_max_delay 8.0 -from [get_cells -hierarchical rd_g_ptr*] -to [get_cells -hierarchical rd_g_ptr_ff*] -datapath_only