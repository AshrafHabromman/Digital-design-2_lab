----------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity multiplier_tb is
--  Port ( );
end  multiplier_tb;

architecture Behavioral of multiplier_tb is
component Main 
    Port ( clk : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           P : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal  CLK : std_logic:='0'; 
signal A, B : STD_LOGIC_VECTOR (3 downto 0); 
signal P : STD_LOGIC_VECTOR (7 downto 0);
constant period : time := 10 ns; 
begin
u1: Main 
port map(clk=>clk,
 A=>A, 
 B=>B,
 P=>P);

clk_gen: process 
begin
clk<='0';
wait for period/2;
clk<='1';
wait for period/2;
end process clk_gen;

stimulus: process 
begin

A<="0000";
B<="0000";

wait for period*20;

	for i in 0 to 15 loop
        	for j in 0 to 15 loop
                A<= A + '1';
                wait for period*20 ;
	        end loop;
	        B<= B + '1';
	        wait for period*20;
	end loop;
wait;
end process stimulus;
end Behavioral;
