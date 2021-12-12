library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity print_pixel is
    port(x,y: in std_logic_vector(9 downto 0);
        A,B,C,D : in std_logic_vector(3 downto 0);
        rgb: out std_logic_vector(11 downto 0)
        );
end print_pixel;

architecture Behavioral of print_pixel is

begin
    rgb <= "111100000000" when (x>168-20 and x<178-20) and (y>190 and y<200)                --Les deux points
            else "111100000000" when (x>168-20 and x<178-20) and (y>190+30 and y<200+30)
            else "111100000000" when (x>105-75 and x<125-75) and (y>165 and y<175) and not(D = "0001" or D = "0100")   --10minutes 0
            else "111100000000" when (x>125-75 and x<135-75) and (y>175 and y<205)  and not(D = "0101" or D = "0110")   --10minutes 1
            else "111100000000" when (x>125-75 and x<135-75) and (y>215 and y<245)  and not(D = "0010")    --10minutes 2
            else "111100000000" when (x>105-75 and x<125-75) and (y>245 and y<255)  and not(D = "0001" or D = "0100" or D = "0111")   --10minutes 3
            else "111100000000" when (x>95-75 and x<105-75) and (y>215 and y<245) and not(D="0001" or D = "0111" or D = "0101" or D="0011" or D = "1001" or D="0100")     --10minutes 4
            else "111100000000" when (x>95-75 and x<105-75) and (y>175 and y<205) and not(D="0001" or D="0010" or D="0011" or D = "0111")     --10minutes 5
            else "111100000000" when (x>105-75 and x<125-75) and (y>205 and y<215)and not(D="0000" or D = "0001" or D = "0111")    --10minutes 6
            else "111100000000" when (x>105 and x<125) and (y>165 and y<175)  and not(C = "0001" or C = "0100")  --minutes 0
            else "111100000000" when (x>125 and x<135) and (y>175 and y<205)  and not(C = "0101" or C = "0110")   --minutes 1
            else "111100000000" when (x>125 and x<135) and (y>215 and y<245)  and not(C = "0010")     --minutes 2
            else "111100000000" when (x>105 and x<125) and (y>245 and y<255)  and not(C = "0001" or C = "0100" or C = "0111")   --minutes 3
            else "111100000000" when (x>95 and x<105) and (y>215 and y<245) and not(C="0001" or C = "0111" or C = "0101" or C="0011" or C = "1001" or C = "0100")    --minutes 4
            else "111100000000" when (x>95 and x<105) and (y>175 and y<205) and not(C="0001" or C="0010" or C="0011" or C = "0111")     --minutes 5
            else "111100000000" when (x>105 and x<125) and (y>205 and y<215) and not(C="0000" or C = "0001" or C = "0111")    --minutes 6
            else "111100000000" when (x>180 and x<125+75) and (y>165 and y<175) and not(B = "0001" or B = "0100")   --10sec 0
            else "111100000000" when (x>125+75 and x<135+75) and (y>175 and y<205)  and not(B = "0101" or B = "0110")   --10sec 1
            else "111100000000" when (x>125+75 and x<135+75) and (y>215 and y<245)  and not(B = "0010")     --10sec 2
            else "111100000000" when (x>105+75 and x<125+75) and (y>245 and y<255) and not(B = "0001" or B = "0100" or B = "0111")    --10sec 3
            else "111100000000" when (x>95+75 and x<105+75) and (y>215 and y<245) and not(B="0001" or B = "0111" or B = "0101" or B="0011" or B = "1001" or B = "0100")    --10sec 4
            else "111100000000" when (x>95+75 and x<105+75) and (y>175 and y<205) and not(B="0001" or B="0010" or B="0011" or B = "0111")    --10sec 5
            else "111100000000" when (x>105+75 and x<125+75) and (y>205 and y<215)and not(B="0000" or B = "0001" or B = "0111")    --10sec 6
            else "111100000000" when (x>180+75 and x<125+75+75) and (y>165 and y<175) and not(A = "0001" or A = "0100")   --sec 0
            else "111100000000" when (x>125+75+75 and x<135+75+75) and (y>175 and y<205) and not(A = "0101" or A = "0110")   --sec 1
            else "111100000000" when (x>125+75+75 and x<135+75+75) and (y>215 and y<245) and not(A = "0010")   --sec 2
            else "111100000000" when (x>105+75+75 and x<125+75+75) and (y>245 and y<255) and not(A = "0001" or A = "0100" or A = "0111")   --sec 3
            else "111100000000" when (x>95+75+75 and x<105+75+75) and (y>215 and y<245) and not(A="0001" or A = "0111" or A = "0101" or A="0011" or A = "1001" or A="0100")    --sec 4
            else "111100000000" when (x>95+75+75 and x<105+75+75) and (y>175 and y<205) and not(A="0001" or A="0010" or A="0011" or A = "0111")   --sec 5
            else "111100000000" when (x>105+75+75 and x<125+75+75) and (y>205 and y<215) and not(A="0000" or A = "0001" or A = "0111")    --sec 6
            
           else "000000000000";
end Behavioral;
