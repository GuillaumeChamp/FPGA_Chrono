----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2020 17:24:45
-- Design Name: 
-- Module Name: compteur - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteur is
    Port ( cpt: out std_logic_vector (1 downto 0);
            clk : in std_logic );
end compteur;

architecture Behavioral of compteur is
    signal q: std_logic_vector(20 downto 0);
begin
    cpt <= q(20 downto 19);
    process(clk) 
    begin
        if (rising_edge(clk)) then
            q <= q + conv_std_logic_vector(1,20);
        end if;
    end process;

end Behavioral;
