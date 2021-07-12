----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
    Port ( reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           clk : in STD_LOGIC;
           pb : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR (3 downto 0));
end toplevel;

architecture Behavioral of toplevel is
component PBDebouncer 
    Port ( CLK : in STD_LOGIC;
           PB : in STD_LOGIC;
           PB_debounced : out STD_LOGIC);
end component;
component updowncounter 
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal pb_out:std_logic:='0';
begin
u1: PBDebouncer port map(clk=>clk,pb=>pb,pb_debounced=>pb_out);
u2: updowncounter port map (reset=>reset,updown=>updown,clk=>pb_out,count=>cnt);

end Behavioral;
