----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2017 12:01:18
-- Design Name: 
-- Module Name: Pointeur - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pointeur is
    Port ( CLK : in STD_LOGIC;
           INIT : in STD_LOGIC;
           RAZ_PT : in STD_LOGIC;
           EN : in STD_LOGIC;
           MODE : in STD_LOGIC;
           PTR : out STD_LOGIC_VECTOR (3 downto 0));
end Pointeur;

architecture Behavioral of Pointeur is
    signal lm,pt : STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
begin

    process(CLK) begin
        if RISING_EDGE (CLK)then
    	   if INIT='1' then
    	       lm <= (others => '0');
    	       pt <= (others => '0');
    	   else
    	       if RAZ_PT='1' then
        	        lm <= lm;
                    pt <= (others => '0');
       	       else
       	            if EN='1' then
       	                if MODE ='1' then -- 1=Write mode
       	                    if pt < 15 then
           	                    lm <= lm+1;
                                pt <= pt+1;
                            else
           	                    lm <= lm;
                                pt <= pt;
                            end if;
                        else -- 0= Read mode
                            if pt < lm then
                                lm <= lm;
                                pt <= pt +1;
                            else
                                lm <= lm;
                                pt <= (others => '0');
                            end if;
                        end if;
                    else
                        lm <= lm;
                        pt <= pt;
                    end if;
    	       end if;
    	   end if;   
        end if;
    end process;
    
    PTR <= pt;

end Behavioral;