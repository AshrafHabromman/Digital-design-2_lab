
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LCD_Counter_top_level_entity is
    Port ( clk : in STD_LOGIC;
           data_bus : out STD_LOGIC_VECTOR(7 downto 0);
           enable : out STD_LOGIC;
           rg_s : out STD_LOGIC;
           r_w : out STD_LOGIC);
end LCD_Counter_top_level_entity;

architecture struct of LCD_Counter_top_level_entity is 

component clock_divider 
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component;

component LCD_COUNTER 
     Port ( CLK : in STD_LOGIC;
           DIGIT0 : out STD_LOGIC_VECTOR (3 downto 0);
           DIGIT1 : out STD_LOGIC_VECTOR (3 downto 0);
           DIGIT2 : out STD_LOGIC_VECTOR (3 downto 0);
           Sign_dig : out STD_LOGIC_VECTOR (1 downto 0));
end component;

component LCD_Driver_counter 
    Port ( digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           digit2 : in STD_LOGIC_VECTOR (3 downto 0);
           Sign_dig: in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           enable : out STD_LOGIC;
           rg_s : out STD_LOGIC;
           r_w : out STD_LOGIC;
           data_bus : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal digit0_s, digit1_s, digit2_s : std_logic_vector(3 downto 0);
signal clk_one_sec :std_logic;
signal sign_dig_s : std_logic_vector(1 downto 0);
				 
begin
clk_divider : clock_divider port map (CLK_IN => clk, CLK_OUT =>clk_one_sec);
counter : LCD_COUNTER port map (CLK =>clk_one_sec, DIGIT0 => digit0_s, DIGIT1 => digit1_s, DIGIT2 => digit2_s,Sign_dig=> Sign_dig_s);
driver : LCD_Driver_counter port map(digit0 =>digit0_s, digit1 =>digit1_s, digit2 =>digit2_s, Sign_dig=>Sign_dig_s, clk=>clk, enable =>enable, rg_s=> rg_s, r_w=>r_w, data_bus=>data_bus );
end struct;