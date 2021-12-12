----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2020 16:15:57
-- Design Name: 
-- Module Name: vgaCTRL - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgaCTRL is
    Port ( clk : in STD_LOGIC;
           hSync : out STD_LOGIC;
           vSync : out STD_LOGIC;
           x : out std_logic_vector (9 downto 0);
           y : out std_logic_vector (9 downto 0)
           );
end vgaCTRL;

architecture Behavioral of vgaCTRL is
signal q_x : std_logic_vector (11 downto 0);
signal q_y : std_logic_vector (9 downto 0);
signal ripple_x, ripple_y : std_logic;
begin
    u0 : entity work.cmpt_conf generic map (size =>12, modulo => 800*4)
                port map ((others=>'0'), '0', clk, '1', '1', q_x, ripple_x);

    u1 : entity work.cmpt_conf generic map (size =>10, modulo=> 521)
                port map((others=>'0'), '0', clk, ripple_x, '1', q_y, ripple_y);

    x<=q_x(11 downto 2);
    y<=q_y; 
    hSync <= '0' when (q_x>(640+16)*4) and (q_x <(640+16+96+1)*4) else '1';
    vSync <= '0' when (q_y>(480+10)) and (q_y <(480+10+3)) else '1';

end Behavioral;