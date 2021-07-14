----------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity binary_multiplier_asm_tb is
--  Port ( );
end binary_multiplier_asm_tb;

architecture Behavioral of binary_multiplier_asm_tb is
component Binary_Multiplier_ASM 
    Port ( S : in STD_LOGIC;
           Reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           number1 : in STD_LOGIC_VECTOR (3 downto 0);
           number2 : in STD_LOGIC_VECTOR (3 downto 0);
           R : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal S, Reset, CLK : std_logic:='0'; 
signal number1, number2 : STD_LOGIC_VECTOR (3 downto 0); 
signal R : STD_LOGIC_VECTOR (7 downto 0);
constant period : time := 10 ns; 
begin
u1: Binary_Multiplier_ASM 
port map(S=>S,
 CLK=>CLK, 
 Reset=>Reset,
 number1=>number1,number2=>number2,R=>R);

clk_gen: process 
begin
clk<='0';
wait for period/2;
clk<='1';
wait for period/2;
end process clk_gen;

stimulus: process 
begin
reset <= '1';
number1<="0000";
number2<="0000";
S<= '0';
wait for period*20;

reset <= '0';
S<= '1';

wait for 10 ns;
	for i in 0 to 15 loop
        	for j in 0 to 15 loop
                number1<= number1 + '1';
                wait for period*20 ;
	        end loop;
	        number2<= number2 + '1';
	        wait for period*20;
	end loop;
wait;
end process stimulus;
end Behavioral;
