#######################################
# Basys3 Pin Assignments              #
#######################################

# pour Disp1Digit.vhd
# version du 24/11/2016

############################
# On-board Slide Switches  #
############################

# Connection: A(3) de Disp1Digit sur SW3 => W17
set_property PACKAGE_PIN W17 [get_ports {A[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

# Connection: A(2) de Disp1Digit sur SW2 => W16
set_property PACKAGE_PIN W16 [get_ports {A[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

# Connection: A(1) de Disp1Digit sur SW1 => V16
set_property PACKAGE_PIN V16 [get_ports {A[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

# Connection: A(0) de Disp1Digit sur SW0 => V17
set_property PACKAGE_PIN V17 [get_ports {A[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]


# Connection: B(3) de Disp1Digit sur SW3 => W17
set_property PACKAGE_PIN W13 [get_ports {B[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

# Connection: B(2) de Disp1Digit sur SW2 => W16
set_property PACKAGE_PIN W14 [get_ports {B[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

# Connection: B(1) de Disp1Digit sur SW1 => V16
set_property PACKAGE_PIN V15 [get_ports {B[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

# Connection: B(0) de Disp1Digit sur SW0 => V17
set_property PACKAGE_PIN W15 [get_ports {B[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]



# Connection: C(3) de Disp1Digit sur SW3 => W17
set_property PACKAGE_PIN R3 [get_ports {C[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {C[3]}]

# Connection: C(2) de Disp1Digit sur SW2 => W16
set_property PACKAGE_PIN T2 [get_ports {C[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {C[2]}]

# Connection: C(1) de Disp1Digit sur SW1 => V16
set_property PACKAGE_PIN T3 [get_ports {C[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {C[1]}]

# Connection: C(0) de Disp1Digit sur SW0 => V17
set_property PACKAGE_PIN V2 [get_ports {C[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {C[0]}]



# Connection: D(3) de Disp1Digit sur SW3 => W17
set_property PACKAGE_PIN R2 [get_ports {D[3]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {D[3]}]

# Connection: D(2) de Disp1Digit sur SW2 => W16
set_property PACKAGE_PIN T1 [get_ports {D[2]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {D[2]}]

# Connection: D(1) de Disp1Digit sur SW1 => V16
set_property PACKAGE_PIN U1 [get_ports {D[1]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]

# Connection: D(0) de Disp1Digit sur SW0 => V17
set_property PACKAGE_PIN W2 [get_ports {D[0]}]	
set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]

###############################
#   On-board  Elect  Switch   #
###############################

# Connection: N(1) de Disp1Digit sur ?? => ??
#set_property PACKAGE_PIN W19 [get_ports {N[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {N[1]}]

# Connection: N(0) de Disp1Digit sur ?? => ??
#set_property PACKAGE_PIN T18 [get_ports {N[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {N[0]}]

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

