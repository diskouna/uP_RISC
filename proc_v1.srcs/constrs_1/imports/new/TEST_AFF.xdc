set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

# Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 }   [get_ports clk]
create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports clk] 

#7 Segment Display

set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {aff[0]}]  
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {aff[1]}]  
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {aff[2]}]  
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {aff[3]}]  
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {aff[4]}]  
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {aff[5]}]  
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {aff[6]}]  

set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports aff[7]]    

set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {aff[8]}] 
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {aff[9]}]  
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {aff[10]}] 
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {aff[11]}] 



# Switches
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {debug_address[0]}]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {debug_address[1]}]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {debug_address[2]}]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {debug_address[3]}]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {debug_address[4]}]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {debug_address[5]}]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {debug_address[6]}]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {debug_address[7]}]


set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports {debug_unit_select}]
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports {rst}]