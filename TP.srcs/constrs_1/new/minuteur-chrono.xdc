#######################################
# Basys3 Pin Assignments              #
#######################################

# pour Disp1Digit.vhd
# version du 24/11/2016

############################
# On-board Slide Switches  #
############################


# Connection: Ain(2) 
set_property PACKAGE_PIN R2 [get_ports {Ain[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Ain[2]}]

# Connection: Ain(1) 
set_property PACKAGE_PIN T1 [get_ports {Ain[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Ain[1]}]

# Connection: Ain(0) 
set_property PACKAGE_PIN U1 [get_ports {Ain[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Ain[0]}]

# Connection: Bin[3] 
set_property PACKAGE_PIN W2 [get_ports {Bin[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Bin[3]}]

# Connection: Bin[2] 
set_property PACKAGE_PIN R3 [get_ports {Bin[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Bin[2]}]

# Connection: Bin[1] 
set_property PACKAGE_PIN T2 [get_ports {Bin[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Bin[1]}]

# Connection: Bin[0] 
set_property PACKAGE_PIN T3 [get_ports {Bin[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Bin[0]}]

# Connection: Cin[2]
set_property PACKAGE_PIN V2 [get_ports {Cin[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Cin[2]}]

# Connection: Cin[1]
set_property PACKAGE_PIN W13 [get_ports {Cin[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Cin[1]}]

# Connection: Cin[0]
set_property PACKAGE_PIN W14 [get_ports {Cin[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Cin[0]}]

# Connection: Din[3]
set_property PACKAGE_PIN V15 [get_ports {Din[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Din[3]}]

# Connection: Din[2]
set_property PACKAGE_PIN W15 [get_ports {Din[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Din[2]}]

# Connection: Din[1]
set_property PACKAGE_PIN W17 [get_ports {Din[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Din[1]}]

# Connection: Din[0]
set_property PACKAGE_PIN W16 [get_ports {Din[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {Din[0]}]



# Connection: EN de Disp1Digit sur V17
set_property PACKAGE_PIN V17 [get_ports {EN}]	
set_property IOSTANDARD LVCMOS33 [get_ports {EN}]

# Connection: UP de Disp1Digit sur V16
set_property PACKAGE_PIN V16 [get_ports {UP}]	
set_property IOSTANDARD LVCMOS33 [get_ports {UP}]
###############################
#   On-board  Elect  Switch   #
###############################

# Connection: Load de Disp1Digit sur ?? => ??
set_property PACKAGE_PIN T18 [get_ports {load}]
set_property IOSTANDARD LVCMOS33 [get_ports {load}]

set_property PACKAGE_PIN W5 [get_ports {CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]

###############################
# On-board 7-segment Display  #
###############################

# SEGMENTS

# Connection: S(7) de Disp1Digit sur V7 => DP
set_property PACKAGE_PIN V7 [get_ports {S[7]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[7]}]

# Connection: S(6) de Disp1Digit sur U7 => CG
set_property PACKAGE_PIN U7 [get_ports {S[6]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[6]}]

# Connection: S(5) de Disp1Digit sur V5 => CF
set_property PACKAGE_PIN V5 [get_ports {S[5]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[5]}]

# Connection: S(4) de Disp1Digit sur U5 => CE
set_property PACKAGE_PIN U5 [get_ports {S[4]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[4]}]

# Connection: S(3) de Disp1Digit sur V8 => CD
set_property PACKAGE_PIN V8 [get_ports {S[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[3]}]

# Connection: S(2) de Disp1Digit sur U8 => CC
set_property PACKAGE_PIN U8 [get_ports {S[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]

# Connection: S(1) de Disp1Digit sur W6 => CB
set_property PACKAGE_PIN W6 [get_ports {S[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

# Connection: S(0) de Disp1Digit sur W7 => CA
set_property PACKAGE_PIN W7 [get_ports {S[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

# ENABLE

# Connection: ENAN(3) de Disp1Digit sur AN3 => W4
set_property PACKAGE_PIN W4 [get_ports {ENAN[3]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[3]}]

# Connection: ENAN(2) de Disp1Digit sur AN2 => V4
set_property PACKAGE_PIN V4 [get_ports {ENAN[2]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[2]}]

# Connection: ENAN(1) de Disp1Digit sur AN1 => U4
set_property PACKAGE_PIN U4 [get_ports {ENAN[1]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[1]}]

# Connection: ENAN(0) de Disp1Digit sur AN0 => U2
set_property PACKAGE_PIN U2 [get_ports {ENAN[0]}]			
set_property IOSTANDARD LVCMOS33 [get_ports {ENAN[0]}]

# Connection: ENAN(0) de Disp1Digit sur AN0 => U2
set_property PACKAGE_PIN A14 [get_ports {beep}]			
set_property IOSTANDARD LVCMOS33 [get_ports {beep}]









# Connection: RED[0] 
set_property PACKAGE_PIN G19 [get_ports {RGB[11]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[11]}]

# Connection: RED(1) 
set_property PACKAGE_PIN H19 [get_ports {RGB[10]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[10]}]

# Connection: RED(2) 
set_property PACKAGE_PIN J19 [get_ports {RGB[9]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[9]}]

# Connection: RED(3) 
set_property PACKAGE_PIN N19 [get_ports {RGB[8]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[8]}]

# Connection: RED(4) 
set_property PACKAGE_PIN J17 [get_ports {RGB[7]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[7]}]

set_property PACKAGE_PIN H17 [get_ports {RGB[6]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[6]}]

set_property PACKAGE_PIN G17 [get_ports {RGB[5]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[5]}]

set_property PACKAGE_PIN D17 [get_ports {RGB[4]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[4]}]

set_property PACKAGE_PIN N18 [get_ports {RGB[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[3]}]

set_property PACKAGE_PIN L18 [get_ports {RGB[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[2]}]

set_property PACKAGE_PIN K18 [get_ports {RGB[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[1]}]

set_property PACKAGE_PIN J18 [get_ports {RGB[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {RGB[0]}]

set_property PACKAGE_PIN P19 [get_ports {hsync}]	
set_property IOSTANDARD LVCMOS33 [get_ports {hsync}]

set_property PACKAGE_PIN R19 [get_ports {vsync}]	
set_property IOSTANDARD LVCMOS33 [get_ports {vsync}]