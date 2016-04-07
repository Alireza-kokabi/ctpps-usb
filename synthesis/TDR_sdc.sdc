# Written by Synplify Pro version mapact, Build 1659R. Synopsys Run ID: sid1457094299 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {TDR|ifclk} [get_ports {ifclk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {TDR|clk} [get_ports {clk}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_1 [list TDR|clk]
set Inferred_clkgroup_0 [list TDR|ifclk]
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_0


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

