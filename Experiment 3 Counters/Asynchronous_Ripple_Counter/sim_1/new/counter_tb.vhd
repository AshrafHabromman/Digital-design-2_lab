 ----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter
 Port ( 
            CLK : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0)
           );
end component;
signal CLK,ENABLE,RESET : std_logic ;
signal Q : STD_LOGIC_VECTOR (3 downto 0);
constant clk_period : time :=10 ns;
begin
uut : counter port map(
CLK=>CLK,
RESET=>RESET,
ENABLE=>ENABLE,
Q=>Q
);

clk_generation : process 
begin 
clk<='0';
wait for clk_period/2;
clk<='1';
wait for clk_period/2;
end process;

stimulus : process 
begin
RESET<='0';
ENABLE<='0';
wait for clk_period * 5;

RESET<='1';

ENABLE<='0';
wait for clk_period * 5;

ENABLE<='1';
wait for clk_period * 50;

ENABLE<='0';
wait for clk_period * 5;

RESET<='0';
wait for clk_period * 5;
wait;
end process;
end Behavioral;
