----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2020 15:41:27
-- Design Name: 
-- Module Name: MUX4x4v1x4_tb - Behavioral
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

entity MUX4x4v1x4_tb is
end MUX4x4v1x4_tb;

architecture tb of MUX4x4v1x4_tb is
	signal tb_A, tb_B,tb_C, tb_D : std_logic_vector(3 downto 0);
	signal tb_O : std_logic_vector(3 downto 0);
	signal tb_sel : std_logic_vector(1 downto 0);
begin
	MUX4x4v1x4_inst: entity work.MUX4x4v1x4
		port map (
			A => tb_A,
			B => tb_B,
			C => tb_C,
			D => tb_D,
			O => tb_O,
			sel => tb_sel
		);

	p_tb : process
	begin
		tb_A <= "0010";
		tb_B <= "0110";
        tb_C <= "0111";
        tb_D <= "1001";
        tb_Sel <= "00";
		wait for 100 ns;
        tb_Sel <= "01";
		wait for 100 ns;
        tb_Sel <= "10";
		wait for 100 ns;
        tb_Sel <= "11";
		wait for 100 ns;
		wait;
	end process;
end tb;

