----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
    Port ( RESET : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           CLK : in STD_LOGIC;
           COUNT : out STD_LOGIC_VECTOR (3 downto 0));
end toplevel;

architecture Behavioral of toplevel is
component updowncounter
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component clock_divider
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component; 
signal clkod : std_logic;
begin
u1: clock_divider port map (CLK_IN=>CLK,CLK_OUT=>clkod);
u2: updowncounter port map(clk=>clkod,reset=>RESET,updown=>UpDown,count=>COUNT);
end Behavioral;
