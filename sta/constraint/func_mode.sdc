# # ==============================================================================
# # Functional Mode Constraints (High Speed)
# # ==============================================================================
# # 1. Define a 100 MHz clock (10ns period)
# create_clock -name clk -period 10.0 [get_ports clk]

# # 2. Add realistic delays for signals entering/leaving the chip
# # Assume data arrives 2ns after the clock edge from the outside world
# set_input_delay 2.0 -clock clk [all_inputs]

# # Assume the outside world needs the data 2ns before the next clock edge
# set_output_delay 2.0 -clock clk [all_outputs]

# # 3. Add some basic uncertainty (jitter) to the clock
# set_clock_uncertainty 0.25 [get_clocks clk]

# ==============================================================================
# 1. CLOCK DEFINITIONS
# ==============================================================================
# Define the Write Clock (e.g., 100 MHz / 10ns period)
create_clock -name wclk_clk -period 10.0 [get_ports wclk]

# Define the Read Clock (e.g., 50 MHz / 20ns period)
create_clock -name rclk_clk -period 20.0 [get_ports rclk]

# ==============================================================================
# 2. CLOCK UNCERTAINTY & JITTER
# ==============================================================================
# Setup uncertainty (accounts for jitter and clock skew)
set_clock_uncertainty -setup 0.25 [get_clocks wclk_clk]
set_clock_uncertainty -setup 0.25 [get_clocks rclk_clk]

# Hold uncertainty (accounts for local clock skew)
set_clock_uncertainty -hold 0.05 [get_clocks wclk_clk]
set_clock_uncertainty -hold 0.05 [get_clocks rclk_clk]

# ==============================================================================
# 3. ASYNCHRONOUS CLOCK GROUPS (CDC CUT)
# ==============================================================================
# This tells the tool that wclk and rclk are completely independent.
# It disables standard setup/hold checks on paths crossing between these domains.
set_clock_groups -asynchronous -group {wclk_clk} -group {rclk_clk}

# ==============================================================================
# 4. INPUT DELAYS (Signals entering the chip)
# ==============================================================================
# Write Domain Inputs (referenced to wclk)
set_input_delay 2.0 -clock wclk_clk [get_ports wtr_en]
set_input_delay 2.0 -clock wclk_clk [get_ports data_in[*]]
set_input_delay 1.5 -clock wclk_clk [get_ports wrst_n]

# Read Domain Inputs (referenced to rclk)
set_input_delay 3.0 -clock rclk_clk [get_ports rd_en]
set_input_delay 2.0 -clock rclk_clk [get_ports rrst_n]

# ==============================================================================
# 5. OUTPUT DELAYS (Signals leaving the chip)
# ==============================================================================
# Write Domain Outputs
set_output_delay 2.0 -clock wclk_clk [get_ports full]

# Read Domain Outputs
set_output_delay 3.0 -clock rclk_clk [get_ports empty]
set_output_delay 3.0 -clock rclk_clk [get_ports data_out[*]]

# ==============================================================================
# 6. ADVANCED CDC CONSTRAINTS (Optional but Highly Recommended)
# ==============================================================================
# Even though we used 'set_clock_groups' to cut the domains, it is a best practice 
# to limit the max delay on the pointer-crossing nets (Gray code buses) to prevent 
# the layout tool from placing the synchronizer flip-flops miles apart.

# Max delay constraint for Write-to-Read pointer crossing (skew control)
set_max_delay 10.0 -from [get_cells -hierarchical wtr_g_ptr*] -to [get_cells -hierarchical wtr_g_ptr_ff*] -datapath_only

# Max delay constraint for Read-to-Write pointer crossing (skew control)
set_max_delay 20.0 -from [get_cells -hierarchical rd_g_ptr*] -to [get_cells -hierarchical rd_g_ptr_ff*] -datapath_only