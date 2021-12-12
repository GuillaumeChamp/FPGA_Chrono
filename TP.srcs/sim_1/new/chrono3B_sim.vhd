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

entity chrono3BT_sim is
end chrono3BT_sim;

architecture tb of chrono3BT_sim is
	signal tb_CLK, tb_B_GO,tb_B_STOP,tb_B_INIT : std_logic;
	signal tb_ENAN : std_logic_vector(3 downto 0);
	signal tb_S : std_logic_vector(6 downto 0);
	signal finished : boolean := false;
	constant PERIOD : time := 100 ns;
    --signal b_TI_tb : STD_LOGIC;
    signal ch_CLR_tb, ch_EN_tb : STD_LOGIC;
    --signal aff_SEL_tb : STD_LOGIC;
    --signal m_WE_tb : STD_LOGIC;
    --signal pt_EN_tb, pt_MODE_tb, pt_RAZ, pt_CLR, pt_INIT : STD_LOGIC;
begin
	gestionChrono_inst: entity work.gestionChrono
		port map (
		    b_ti => '0',
			CLK => tb_CLK,
			B_GO => tb_B_GO,
			B_STOP => tb_B_STOP,
			B_INIT => tb_B_INIT,
			ch_EN => ch_EN_tb,
			ch_CLR => ch_CLR_tb
		);

	p_clk : process
	begin
	while finished = false loop
                tb_CLK <= '0';
                wait for PERIOD/2;
                tb_clk <= '1';
                wait for PERIOD/2;
            end loop;
        end process;
    p_tb : process
    begin
        tb_B_INIT <= '0';
        tb_B_GO <= '0';
        tb_B_STOP <= '0';
        wait for 50 ns;
		tb_B_INIT <= '1';
		wait for PERIOD;
		tb_B_INIT <= '0';
        tb_B_STOP <= '1';
		wait for PERIOD;
        tb_B_STOP <= '0';
        tb_B_GO <= '1';
		wait for PERIOD;
        tb_B_GO <= '0';
        tb_B_INIT <= '1';
		wait for PERIOD;
        tb_B_INIT <= '0';
        tb_B_STOP <= '1';
		wait for PERIOD;
        tb_B_STOP <= '0';
        tb_B_GO <= '1';
		wait for PERIOD;
        tb_B_GO <= '0';
        tb_B_INIT <= '1';
        wait for 1000 ns;
        finished <= true;
        wait;
    end process;
end tb;
