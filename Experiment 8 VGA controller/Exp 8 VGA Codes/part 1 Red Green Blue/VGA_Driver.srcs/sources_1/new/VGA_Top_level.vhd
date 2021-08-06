----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_Top_level is
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC_VECTOR (3 downto 0);
           green : out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0);
           HS : out STD_LOGIC;
           VS : out STD_LOGIC);
end VGA_Top_level;

architecture Behavioral of VGA_Top_level is

component clock_divider Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component;

component  VGA_Driver_Vertical
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC_VECTOR (3 downto 0);
           green : out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0);
           HS : out STD_LOGIC;
           VS : out STD_LOGIC);
end component;
signal clk_out_s : std_logic := '0';
begin
clock_divider_1 : clock_divider port map(clk_in=>clk, clk_out=>clk_out_s );

VGA_Driver_1 : VGA_Driver_Vertical port map (clk=>clk_out_s, red=>red, green=>green, blue=>blue, HS=>HS, VS=>VS );

end Behavioral;
