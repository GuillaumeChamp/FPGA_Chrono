----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2020 16:58:02
-- Design Name: 
-- Module Name: End_game - Behavioral
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

entity End_game is
 Port (
        EN : in std_logic;
        UP : in std_logic;
        CLK : in std_logic;
        ENAN : out STD_LOGIC_VECTOR (3 downto 0);
        S : out STD_LOGIC_VECTOR (7 downto 0);
        Bin,Din: in std_logic_vector(3 downto 0);
        Ain,Cin: in std_logic_vector(2 downto 0);
        beep : out std_logic;
        load : in std_logic
--Enable : active le comptage
--UP : sens du compte (1 pour +)
--ENAN et s correspond aux sortie pour l'afficheur
        );
end End_game;

architecture Behavioral of End_game is

begin
    u0 :entity work.Disp1of4Digits
    port map(EN,UP,CLK,ENAN,S,Bin,Din,Ain,Cin,beep,load);
    
    u1 :entity work.affiche
    port map();

end Behavioral;
