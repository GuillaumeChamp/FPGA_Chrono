----------------------------------------------------------------------------------
-- Company: ENSEA
-- Engineer: 
-- 
-- Create Date: 02.02.2017 16:05:04
-- Design Name: 
-- Module Name: MUX2x16v4x4 - Behavioral
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

entity MUX2x16v4x4 is
    Port ( E : in STD_LOGIC_VECTOR (15 downto 0);
           F : in STD_LOGIC_VECTOR (15 downto 0);
           SEL : in STD_LOGIC;
           A : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0));
end MUX2x16v4x4;

architecture Behavioral of MUX2x16v4x4 is
    signal S:STD_LOGIC_VECTOR (15 downto 0);
begin
    S <=    E when SEL='0' else
            F;
    A <= S(15 downto 12);
    B <= S(11 downto 8);
    C <= S(7 downto 4);
    D <= S(3 downto 0);
    
end Behavioral;
