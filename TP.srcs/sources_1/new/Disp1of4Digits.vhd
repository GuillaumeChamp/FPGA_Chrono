library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Disp1of4Digits is
 Port (
        EN : in std_logic;
        UP : in std_logic;
        CLK : in std_logic;
        ENAN : out STD_LOGIC_VECTOR (3 downto 0);
        S : out STD_LOGIC_VECTOR (7 downto 0);
        Bin,Din: in std_logic_vector(3 downto 0);
        Ain,Cin: in std_logic_vector(2 downto 0);
        beep : out std_logic;
        load : in std_logic;
        RGB : out std_logic_vector(11 downto 0);
        hsync : out std_logic;
        vsync : out std_logic
--Enable : active le comptage
--UP : sens du compte (1 pour +)
--ENAN et s correspond aux sortie pour l'afficheur
        );
end Disp1of4Digits;

architecture Behavioral of Disp1of4Digits is
    signal V: STD_LOGIC_VECTOR(3 downto 0);
    signal N : std_logic_vector (1 downto 0);
    signal A : STD_LOGIC_VECTOR (3 downto 0);
    signal B : STD_LOGIC_VECTOR (3 downto 0);
    signal C : STD_LOGIC_VECTOR (3 downto 0);
    signal D : STD_LOGIC_VECTOR (3 downto 0);
    signal Ai : STD_LOGIC_VECTOR (3 downto 0);
    signal Bi : STD_LOGIC_VECTOR (3 downto 0);
    signal Ci : STD_LOGIC_VECTOR (3 downto 0);
    signal Di : STD_LOGIC_VECTOR (3 downto 0);
-- A,B,C,D sont les sorties du [compteur] qui rentre dans l'afficheur
    signal rc_s : STD_LOGIC;
    signal rc_10s : STD_LOGIC;
    signal rc_m : STD_LOGIC;
    signal rc_10m : STD_LOGIC;
    signal sig_enable : std_logic;
-- rc_x correspond aux retenue
begin
    u0 : entity work.compteur port map (clk => CLK, cpt=>N);
    
    u1 : entity work.MUX4x4v1x4
    port map (
    A=> A, B=> B, C=>C, D=>D, Sel => N , O => V
    ) ;
    u2 : entity work.Disp1Digit
    port map ( S => S, N => N ,ENAN => ENAN, V=>V
    ) ;
    u3 : entity work.cmpt_conf
    generic map(modulo => 100000000,size => 27)
    port map ( clk => CLK, en=> sig_enable, rc=> rc_s, up => '1',setup => (others=>'0'),load => '0');
    
    sig_enable <= '1' when (up='1' and EN='1')or (EN='1' and not (A&B&C&D=x"0000")) else '0' ;
    beep <= '1' when (EN='1' and (A&B&C&D=x"0000")) and up='0' else '0' ;
    
    u4 : entity work.cmpt_conf
    generic map(modulo => 10,size => 4)
    port map ( clk => CLK, en=> rc_s, rc=> rc_10s, q=>D, up => UP,setup =>Di, load => load);

    u5 : entity work.cmpt_conf
    generic map(modulo => 6,size => 4)
    port map ( clk => CLK, en=> rc_10s, rc=> rc_m,q=>C,up => UP, load => load,setup => Ci);
    
    u6 : entity work.cmpt_conf
    generic map(modulo => 10,size => 4)
    port map ( clk => CLK, en=> rc_m, rc=> rc_10m ,q=>B, up => UP, load => load,setup => Bi);
    
    u7 : entity work.cmpt_conf
    generic map(modulo => 10,size => 4)
    port map ( clk => CLK, en=> rc_10m ,q=>A, up => UP, load => load,setup => Ai);
        
    u9: entity work.convertisseur
    port map(Ain => Ain, Bin => Bin, Cin=> Cin, Din => Din ,A=> Ai, B=> Bi,C => Ci, D=> Di);
    
    u10: entity work.affiche
    port map(CLK,A,B,C,D,rgb,hsync,vsync); 
end Behavioral;