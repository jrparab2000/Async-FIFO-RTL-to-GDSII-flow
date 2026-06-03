# ==============================================================================
# Test Mode Constraints (Slow Speed / Factory Test)
# ==============================================================================
# 1. Define a 20 MHz clock (50ns period) - testers run slower
create_clock -name clk -period 50.0 [get_ports clk]

# 2. Relax the I/O delays since the clock is so slow
set_input_delay 5.0 -clock clk [all_inputs]
set_output_delay 5.0 -clock clk [all_outputs]

# 3. (Optional) If you have a test_enable pin, force it to '1' so STA 
# knows test logic is active and ignores normal functional paths.
# set_case_analysis 1 [get_ports test_en]