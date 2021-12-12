----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2020 17:10:28
-- Design Name: 
-- Module Name: loader - Behavioral
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

entity convertisseur is
  Port ( A,B,C,D  : out std_logic_vector(3 downto 0);
         Ain,Cin : in std_logic_vector(2 downto 0);
         Bin,Din : in std_logic_vector(3 downto 0)
         )  ;  
end convertisseur;

architecture Behavioral of convertisseur is

begin
    A(3)<= '0';
    A(2 downto 0) <= Ain;
    B<=Bin;
    C(3) <= '0';
    C(2 downto 0)<=Cin;
    D<=Din;

end Behavioral;
