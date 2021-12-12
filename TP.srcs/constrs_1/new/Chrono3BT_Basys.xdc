#######################################
# Basys3 Pin Assignments              #
#######################################

# pour chrono3BT.vhd
# version du 09/02/2017

# Connection: CLK on W5
set_property PACKAGE_PIN W5 [get_ports {CLK}]	
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]

############################
# On-board Push Buttons  #
############################

set_property PACKAGE_PIN W19 [get_ports {B_GO}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B_GO}]

set_property PACKAGE_PIN T17 [get_ports {B_STOP}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B_STOP}]

set_property PACKAGE_PIN T18 [get_ports {B_INIT}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B_INIT}]

############################
# On-board Slide Switches  #
############################

###############################
# On-board 7-segment Display  #
###############################

# SEGMENTS
# Connection: S(7) de Disp1Digit sur V7 => DP
set_property PACKAGE_PIN V7 [get_ports {S[7]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[7]}]
# Connection: S(6)
set_property PACKAGE_PIN U7 [get_ports {S[6]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[6]}]

# Connection: S(5) 
set_property PACKAGE_PIN V5 [get_ports {S[5]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[5]}]

# Connection: S(4) 
set_property PACKAGE_PIN U5 [get_ports {S[4]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[4]}]

# Connection: S(3)
set_property PACKAGE_PIN V8 [get_ports {S[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[3]}]

# Connection: S(2)
set_property PACKAGE_PIN U8 [get_ports {S[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]

# Connection: S(1)
set_property PACKAGE_PIN W6 [get_ports {S[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

# Connection: S(0) 
set_property PACKAGE_PIN W7 [get_ports {S[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

# ENABLE ANODES

# Connection: ENAN(3) 
set_property PACKAGE_PIN U2 [get_ports {ENAN[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[3]}]

# Connection: ENAN(2) 
set_property PACKAGE_PIN U4 [get_ports {ENAN[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[2]}]

# Connection: ENAN(1) 
set_property PACKAGE_PIN V4 [get_ports {ENAN[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[1]}]

# Connection: ENAN(0) 
set_property PACKAGE_PIN W4 [get_ports {ENAN[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[0]}]