----------------------------------------------------------------------------------
-- Company: ENSEA
-- Engineer: 
-- 
-- Create Date: 06.02.2017 17:41:05
-- Design Name: 
-- Module Name: chrono4BT_TI - Behavioral
-- Project Name: ENSEA
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity chrono4BT_TI is
    Port (  CLK : in STD_LOGIC;
            B_GO : in STD_LOGIC;
            B_STOP : in STD_LOGIC;
            B_INIT : in STD_LOGIC;
            B_TI : in STD_LOGIC;
            ENAN : out STD_LOGIC_VECTOR (3 downto 0);
            S : out STD_LOGIC_VECTOR (6 downto 0));
end chrono4BT_TI;

architecture Behavioral of chrono4BT_TI is
    signal A,B,C,D: STD_LOGIC_VECTOR(3 downto 0);
    signal TC,TM: STD_LOGIC_VECTOR(27 downto 0);
    signal chr_EN, chr_CLR: STD_LOGIC;
    signal pt: STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal m_WE,selDisp,B_TI_P: STD_LOGIC;
    signal pt_EN,pt_INIT,pt_RAZ,pt_MODE: STD_LOGIC;
    
    COMPONENT dist_mem_gen_0 IS
      PORT (
        a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
      );
    END COMPONENT;
begin
    dti : entity work.DFM
        port map ( CLK=>CLK,Btn=>B_TI,Detect=>B_TI_P);
    gst : entity work.gestionChrono
        port map (  CLK=>CLK,b_GO=>B_GO,b_STOP=>B_STOP,b_INIT=>B_INIT,b_TI=>B_TI_P,ch_EN=>chr_EN,ch_CLR=>chr_CLR,
                    m_WE=>m_WE,pt_EN=>pt_EN,pt_RAZ=>pt_RAZ,pt_INIT=>pt_INIT,pt_MODE=>pt_MODE,aff_SEL=>selDisp);
    chr : entity work.Chronos
        port map ( CLK=>CLK,EN=>chr_EN,CLR=>chr_CLR,T=>TC);
    ptr : entity work.Pointeur
            port map ( CLK=>CLK,INIT=>pt_INIT,RAZ_PT=>pt_RAZ,EN=>pt_EN,MODE=>pt_MODE,PTR=>pt);

     aff : entity work.Disp1of4Digits
        port map ( CLK=>CLK,UP=>'1',EN=>'0',load=>'1',Bin=>C,Din=>A,Ain=>D(2 downto 0),Cin=>B(2 downto 0),ENAN=>ENAN,S=>S);
    mem: dist_mem_gen_0
        port map (a=>pt,d=>TC,clk=>CLK,we=>m_WE,spo=>TM);
    mux : entity work.MUX2x16v4x4
        port map ( E=>TC(23 downto 8),F=>TM(23 downto 8),SEL=>selDisp,A=>A,B=>B,C=>C,D=>D);

end Behavioral;
