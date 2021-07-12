----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BCD_To_SevenSeg is
    Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
           AA : out STD_LOGIC;
           AB : out STD_LOGIC;
           AC : out STD_LOGIC;
           AD : out STD_LOGIC;
           AE : out STD_LOGIC;
           AF : out STD_LOGIC;
           AG : out STD_LOGIC);
end BCD_To_SevenSeg;

architecture Behavioral of BCD_To_SevenSeg is
signal seven_temp: std_logic_VECTOR(6 downto 0);
begin
	process(BCD)
    begin
    	case BCD is
        	when "0000"=>			-- 0 
        		seven_temp <="1111110"; 
        	when "0001"=>			-- 1
        		seven_temp <="0110000";
  			when "0010"=>			-- 2 
        		seven_temp <="1101101";
			when "0011"=>			-- 3
        		seven_temp <="1111001";
			when "0100"=>			-- 4
        		seven_temp <="0110011";
			when "0101"=>			-- 5
        		seven_temp <="1011011";
			when "0110"=>			-- 6
        		seven_temp <="1011111";
			when "0111"=>			-- 7
        		seven_temp <="1110001";
            when "1000"=>			-- 8
        		seven_temp <="1111111";
            when "1001"=>			-- 9
        		seven_temp <="1110011";
  			when others => 
            	seven_temp <="0000000";
        end case;

    end process;
    	AA <= seven_temp(6);
        AB <= seven_temp(5);
        AC <= seven_temp(4);
        AD <= seven_temp(3);
        AE <= seven_temp(2);
        AF <= seven_temp(1);
        AG <= seven_temp(0);   

end Behavioral;
