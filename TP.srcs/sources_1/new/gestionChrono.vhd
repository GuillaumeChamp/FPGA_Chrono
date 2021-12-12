----------------------------------------------------------------------------------
-- Company: ENSEA
-- Engineer: 
-- 
-- Create Date: 02.02.2017 22:18:49
-- Design Name: 
-- Module Name: gestionChrono - Behavioral
-- Project Name: 
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

entity gestionChrono is
    Port ( CLK : in STD_LOGIC;
           b_GO, b_STOP, b_INIT : in STD_LOGIC;
           b_TI : in STD_LOGIC;
           ch_CLR, ch_EN : out STD_LOGIC;
           aff_SEL : out STD_LOGIC;
           m_WE : out STD_LOGIC;
           pt_EN, pt_MODE, pt_RAZ, pt_CLR, pt_INIT : out STD_LOGIC
           );
end gestionChrono;

architecture Behavioral of gestionChrono is
		type liste_etat is (REPOS,MARCHE,AFFICH_TI,AFFICH);
		signal ETAT_PR,ETAT_FU : liste_etat:=REPOS;
		--?autres signaux
begin
-- bloc de synchronisation de l'état présent
	process(CLK)begin
		if rising_edge(CLK) then
			ETAT_PR <= ETAT_FU;
      end if;
	end process;
-- COMBINATOIRES?: calcul de l??tat futur
	process (ETAT_PR,b_GO,b_STOP,b_INIT,b_TI) begin
		case ETAT_PR is
			when REPOS =>
				if b_GO='1' then
					ETAT_FU <= MARCHE;
				else 
					ETAT_FU <= REPOS;
				end if;
			when MARCHE =>
			     if b_STOP='1' then
			         ETAT_FU <= AFFICH;
			     else
			         ETAT_FU <= MARCHE;
			     end if;
			when AFFICH =>
			     if b_INIT='1' then
                     ETAT_FU <= REPOS;
                 else if b_TI='1' then
                     ETAT_FU <= AFFICH_TI;
                 else
                     ETAT_FU <= AFFICH;
                 end if;
                 end if;
            when AFFICH_TI =>
                if b_INIT='1' then
                    ETAT_FU <= REPOS;
                else
                    ETAT_FU <= AFFICH_TI;
                end if;
			when others =>
				ETAT_FU <= REPOS; -- ? ne pas oublier
		end case;
	end process;	
-- le codage des sorties
	ch_EN <='1' when ETAT_PR=MARCHE else
			'0'; 
	ch_CLR <='1' when ETAT_PR=REPOS else
	        '0';
end Behavioral;