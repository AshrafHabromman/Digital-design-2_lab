----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_level_entity is
    Port ( reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           clk : in STD_LOGIC;
           seven_seg_code : out STD_LOGIC_VECTOR (6 downto 0);
           c : out STD_LOGIC);
end top_level_entity;

architecture Behavioral of top_level_entity is

component clock_divider
 Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component;

component BCD_Counter 
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           Digit0 : out STD_LOGIC_VECTOR (3 downto 0);
           Digit1 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component time_mux 
    Port ( clk : in STD_LOGIC;
           Digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           Digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           BCD_Value : out STD_LOGIC_VECTOR (3 downto 0);
           DigSelect : out STD_LOGIC);
end component;

component BCD_To_SevenSeg 
    Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
           AA : out STD_LOGIC;
           AB : out STD_LOGIC;
           AC : out STD_LOGIC;
           AD : out STD_LOGIC;
           AE : out STD_LOGIC;
           AF : out STD_LOGIC;
           AG : out STD_LOGIC);
end component;
signal sclk_out: std_logic;
signal sDigit0,sDigit1,sBCD : STD_LOGIC_VECTOR (3 downto 0):= "0000";

begin

u1: clock_divider port map(CLK_IN=>clk,CLK_OUT=>sclk_out);

u2: BCD_Counter port map(reset=>reset, updown=>updown, clk=>sclk_out, Digit0=>sDigit0,Digit1=>sDigit1);

u3: time_mux port map(clk=>clk,Digit0=>sDigit0,Digit1=>sDigit1,BCD_Value=>sBCD,DigSelect=>c);

u4: BCD_To_SevenSeg port map(BCD=>sBCD,AA=>seven_seg_code(6), AB=>seven_seg_code(5), AC=>seven_seg_code(4),
 AD=>seven_seg_code(3), AE=>seven_seg_code(2), AF=>seven_seg_code(1), AG=>seven_seg_code(0));

end Behavioral;
