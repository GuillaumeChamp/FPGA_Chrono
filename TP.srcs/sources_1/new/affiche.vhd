----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2020 16:47:37
-- Design Name: 
-- Module Name: affiche - Behavioral
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

entity affiche is
  Port ( CLK : in STD_LOGIC;
        A,B,C,D : in std_logic_vector(3 downto 0);
        RGB : out std_logic_vector(11 downto 0);
        hsync : out std_logic;
        vsync : out std_logic);
end affiche;

architecture Behavioral of affiche is
signal x : std_logic_vector (9 downto 0);
signal y : std_logic_vector (9 downto 0);
begin
    u0 : entity work.vgaCTRL
    port map(clk => CLK,hsync =>hsync,vsync =>vsync,x =>x,y =>y);
    u1 : entity work.print_pixel
    port map(x=>x, y=>y,A=>D,B=>C,C=>B,D=>A, rgb=>RGB);

end Behavioral;
