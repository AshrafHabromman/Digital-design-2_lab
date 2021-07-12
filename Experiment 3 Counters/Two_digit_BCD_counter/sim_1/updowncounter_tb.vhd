library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity updowncounter_tb is

end updowncounter_tb;

architecture Behavioral of updowncounter_tb is

component BCD_Counter is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           Digit0 : out STD_LOGIC_VECTOR (3 downto 0);
           Digit1 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal clk,Reset,UpDown:STD_LOGIC;
signal Digit0,Digit1 : STD_LOGIC_VECTOR (3 downto 0);
constant clk_period : time :=10 ns;
begin

uut: BCD_Counter port map (clk=> clk, Reset=>Reset , UpDown=> UpDown, Digit0=> Digit0,Digit1=>Digit1);


clk_generation : process 
begin 
clk<='0';
wait for clk_period/2;
clk<='1';
wait for clk_period/2;
end process;

stimulus : process 
begin
reset<='0';
updown<='0';
wait for clk_period * 5;

reset<='1';
updown<='1'; -- increment 
wait for clk_period * 100;

reset<='0';
wait for clk_period * 5;

reset<='1';
updown<='0';    -- decrement 
wait for clk_period * 100;

reset<='0';
wait;
end process;

end Behavioral;
