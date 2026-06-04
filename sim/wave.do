# ==============================================================================
# Questa Sim / ModelSim Waveform Configuration File
# ==============================================================================
onerror {resume}
quietly WaveActivateNextPane {} 0

# --- Window Layout Configuration ---
configure wave -namecolwidth 220
configure wave -valuecolwidth 120
configure wave -justifyvalue left
configure wave -signalnamewidth 1; # Shows 'data_in' instead of 'async_fifo_tb/dut/data_in'
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update

# ==============================================================================
# WRITE DOMAIN SIGNALS (Fast Clock)
# ==============================================================================
add wave -noupdate -divider {WRITE DOMAIN}
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/wclk
add wave -noupdate -color {Red}         -radix binary      /async_fifo_tb/wrst_n
add wave -noupdate -color {Cyan}        -radix binary      /async_fifo_tb/wtr_en
add wave -noupdate -color {Orange}      -radix hexadecimal /async_fifo_tb/data_in
add wave -noupdate -color {Red}         -radix binary      /async_fifo_tb/full
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/dut/rd_g_ptr_ff
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/dut/wtr_g_ptr



# ==============================================================================
# READ DOMAIN SIGNALS (Slow Clock)
# ==============================================================================
add wave -noupdate -divider {READ DOMAIN}
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/rclk
add wave -noupdate -color {Red}         -radix binary      /async_fifo_tb/rrst_n
add wave -noupdate -color {Cyan}        -radix binary      /async_fifo_tb/rd_en
add wave -noupdate -color {Cyan}        -radix binary      /async_fifo_tb/flag
add wave -noupdate -color {Cyan}        -radix hexadecimal      /async_fifo_tb/expected_data
add wave -noupdate -color {Cyan}        -radix binary      /async_fifo_tb/scoreboard_q_wave
add wave -noupdate -color {Yellow}      -radix hexadecimal /async_fifo_tb/data_out
add wave -noupdate -color {Red}         -radix binary      /async_fifo_tb/empty
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/dut/wtr_g_ptr_ff
add wave -noupdate -color {Light Blue}  -radix binary      /async_fifo_tb/dut/rd_g_ptr

# ==============================================================================
# INTERNAL STATUS (Bonus: Essential for Async FIFO Debugging)
# ==============================================================================
add wave -noupdate -divider {INTERNAL POINTERS}
add wave -noupdate -color {Magenta}     -radix hexadecimal /async_fifo_tb/dut/wptr
add wave -noupdate -color {Magenta}     -radix hexadecimal /async_fifo_tb/dut/rptr
add wave -noupdate -color {Purple}      -radix hexadecimal /async_fifo_tb/dut/wptr_sync
add wave -noupdate -color {Purple}      -radix hexadecimal /async_fifo_tb/dut/rptr_sync

# --- Final Window Refresh ---
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
echo ">>> wave.do configuration successfully loaded!"