----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2020 13:46:29
-- Design Name: 
-- Module Name: cmpt_conf - Behavioral
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cmpt_conf is
    generic(modulo : integer := 10;
            size : integer := 4);
    port(
        setup: in std_logic_vector(size-1 downto 0);
        load :in std_logic;
--permet de charger une valeur au démarage du compteur
        clk : in std_logic ;
        en : in std_logic;
        up : in std_logic;
        q : out std_logic_vector(size-1 downto 0);
        rc : out std_logic
        );
end cmpt_conf;

architecture Behavioral of cmpt_conf is
    signal present : std_logic_vector(size-1 downto 0);
    signal futur : std_logic_vector(size-1 downto 0);
begin
    rc <= '1' when (present = modulo-1 and en = '1' and up = '1') or (present = 0 and en = '1' and up = '0')
        else '0';
    process(clk)
    begin
        if load = '1' then
            present <= setup;
        else
            if rising_edge(clk) then
                present <= futur;
            end if;
        end if;
    end process;
    futur <=    conv_std_logic_vector(0,size) when present = modulo-1 and en='1' and up= '1'
                else present + conv_std_logic_vector(1,size) when en='1' and up = '1'
                else conv_std_logic_vector(modulo-1,size)when present = 0 and en='1' and up='0'
                else present - conv_std_logic_vector(1,size) when en='1' and up='0'
                else present;
    q <= present;
end Behavioral;
