----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2020 13:54:03
-- Design Name: 
-- Module Name: Disp1Digit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Disp1Digit is
    Port ( V : in STD_LOGIC_VECTOR (3 downto 0);
           N : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           ENAN : out STD_LOGIC_VECTOR (3 downto 0));
end Disp1Digit;

architecture Behavioral of Disp1Digit is
    type tt is array(0 to 3) of std_logic_vector(3 downto 0);
    constant table:tt:=("0111","1011","1101","1110");
begin
    S <= "11000000" when V="0000" else
         "11111001" when V="0001" else
         "10100100" when V="0010" else
         "10110000" when V="0011" else
         "10010010" when V="0101" else
         "10011001" when V="0100" else
         "10000010" when V="0110" else
         "11111000" when V="0111" else
         "10000000" when V="1000" else
         "10010000" when V="1001" else
         "10000110" ;
    ENAN <= table(to_integer(unsigned(N)));

end Behavioral;
