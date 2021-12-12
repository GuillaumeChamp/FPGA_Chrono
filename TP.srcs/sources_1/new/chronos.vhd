library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity Chronos is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           CLR : in STD_LOGIC;
           T : out STD_LOGIC_VECTOR (27 downto 0));
end Chronos;

architecture Behavioral of Chronos is
    signal Ti : STD_LOGIC_VECTOR (37 downto 0);
begin
    process(CLK) begin
        if RISING_EDGE (CLK)then 
            if (CLR = '1') then 
                Ti <= (others => '0'); 
            else 
                if (EN = '1') then 
                    Ti <= Ti + 1;
                else 
                    Ti<=Ti;
                end if;
            end if;
        end if;
    end process;
    T(3 downto 0) <= "0"&Ti(2+17 downto 0+17); 
    T(7 downto 4) <= "0"&Ti(5+17 downto 3+17);
    T(11 downto 8) <= "0"&Ti(8+17 downto 6+17);
    T(15 downto 12) <= "0"&Ti(11+17 downto 9+17);
    T(19 downto 16) <= "0"&Ti(14+17 downto 12+17);
    T(23 downto 20) <= "0"&Ti(17+17 downto 15+17);
    T(27 downto 24) <= "0"&Ti(20+17 downto 18+17);
    
end Behavioral;