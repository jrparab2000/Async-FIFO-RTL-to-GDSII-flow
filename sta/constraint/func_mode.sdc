# ==============================================================================
# Functional Mode Constraints (High Speed)
# ==============================================================================
# 1. Define a 100 MHz clock (10ns period)
create_clock -name clk -period 10.0 [get_ports clk]

# 2. Add realistic delays for signals entering/leaving the chip
# Assume data arrives 2ns after the clock edge from the outside world
set_input_delay 2.0 -clock clk [all_inputs]

# Assume the outside world needs the data 2ns before the next clock edge
set_output_delay 2.0 -clock clk [all_outputs]

# 3. Add some basic uncertainty (jitter) to the clock
set_clock_uncertainty 0.25 [get_clocks clk]