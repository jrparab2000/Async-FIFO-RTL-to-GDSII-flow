# ==============================================================================
# Yosys Synthesis Tcl Script
# ==============================================================================

# Enable standard Yosys commands inside this Tcl script
yosys -import

# ------------------------------------------------------------------------------
# 1. Pull variables from the Makefile (passed via environment)
# ------------------------------------------------------------------------------
set top_module $::env(TOP_MODULE)
set lib_slow   $::env(LIB)
set out_dir    $::env(OUT_DIR)
set out_file   $::env(CURRENT_NETLIST)
set view_format $::env(VIEW_FORMAT)
set out_sch $::env(OUT_SCH)
set file_list  $::env(FILE_LIST)

puts "\n\[INFO\] Starting Yosys Synthesis for $top_module..."
puts "\[INFO\] Using Library: $lib_slow"

# ------------------------------------------------------------------------------
# 2. Parse files.f and read all RTL files
# ------------------------------------------------------------------------------
# We open the file list (located in the root directory, one level up)
set fp [open "$file_list" r]
set file_data [read $fp]
close $fp

# Loop through each line in files.f
foreach line [split $file_data "\n"] {
    set line [string trim $line]
    
    # Ignore empty lines and comments starting with // or #
    if {$line eq "" || [string match "//*" $line] || [string match "#*" $line]} {
        continue
    }
    
    # Read the Verilog file (path is relative to the root directory)
    puts "\[INFO\] Reading RTL: $line"
    read_verilog -sv "$line"
}

# ------------------------------------------------------------------------------
# 3. The Core Synthesis Flow
# ------------------------------------------------------------------------------
puts "\n\[INFO\] Checking hierarchy..."
hierarchy -check -top $top_module

puts "\[INFO\] Loading timing library for technology mapping..."
read_liberty -lib $lib_slow

puts "\[INFO\] Running generic synthesis..."
synth -top $top_module

puts "\[INFO\] Mapping flip-flops (dfflibmap)..."
dfflibmap -liberty $lib_slow

puts "\[INFO\] Mapping combinational logic (abc)..."
abc -liberty $lib_slow
# stat -liberty $lib_slow

puts "\[INFO\] Generating area statistics..."
tee -o logs/area_report_$out_file.txt stat -liberty $lib_slow

puts "\[INFO\] Purging unused cells and wires..."
opt -purge

# ------------------------------------------------------------------------------
# 4. Write out the final Netlist
# ------------------------------------------------------------------------------
puts "\[INFO\] Writing final gate-level netlist to $out_dir/$out_file..."
write_verilog -noattr -noexpr $out_dir/$out_file

puts "\[INFO\] Visualizing $top_module from $out_file..."
show -format $view_format -prefix $out_sch/($out_file)_sch $top_module
# tee -o area_report_$out_file.txt

puts "\[SUCCESS\] Yosys Synthesis Complete!\n"