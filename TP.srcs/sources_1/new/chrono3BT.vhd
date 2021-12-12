library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity chrono3BT is
    Port ( CLK : in STD_LOGIC;
       B_GO : in STD_LOGIC;
       B_STOP : in STD_LOGIC;
       B_INIT : in STD_LOGIC;
       ENAN : out STD_LOGIC_VECTOR (3 downto 0);
       S : out STD_LOGIC_VECTOR (7 downto 0));
end chrono3BT;

architecture Behavioral of chrono3BT is
    signal A,B,C,D: STD_LOGIC_VECTOR(3 downto 0);
    signal TC,TM: STD_LOGIC_VECTOR(27 downto 0);
    signal chr_EN, chr_CLR: STD_LOGIC;
begin
    gst : entity work.gestionChrono
        port map ( CLK=>CLK,b_GO=>B_GO,b_STOP=>B_STOP,b_INIT=>B_INIT,b_TI=>'0',ch_EN=>chr_EN,ch_CLR=>chr_CLR);
    chr : entity work.chronos
        port map ( CLK=>CLK,EN=>chr_EN,CLR=>chr_CLR,T=>TC);
        A<=TC(23 downto 20); -- unit? de minutes
        B<=TC(19 downto 16); -- dizaine de secondes
        C<=TC(15 downto 12); -- unit? de secondes
        D<=TC(11 downto 8); -- dixi?me de secondes
    aff : entity work.Disp1of4Digits
        port map ( CLK=>CLK,UP=>'1',EN=>'0',load=>'1',Bin=>C,Din=>A,Ain=>D(2 downto 0),Cin=>B(2 downto 0),ENAN=>ENAN,S=>S);

end Behavioral;