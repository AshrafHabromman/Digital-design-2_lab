
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity toplevelcounter is
    Port ( RESET : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end toplevelcounter;

architecture Behavioral of toplevelcounter is
component counter 
   Port ( 
           CLK : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component ;          
component clock_divider
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component; 
signal clkod : std_logic;
begin
u1: clock_divider port map (CLK_IN=>CLK,CLK_OUT=>clkod);
u2: counter port map(CLK=>clkod,RESET=>RESET,ENABLE=>ENABLE,Q=>Q);
end Behavioral;
