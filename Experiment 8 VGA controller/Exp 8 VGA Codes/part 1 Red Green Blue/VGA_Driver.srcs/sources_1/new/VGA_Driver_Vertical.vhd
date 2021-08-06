-------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_Driver_Vertical is
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC_VECTOR (3 downto 0);
           green : out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0);
           HS : out STD_LOGIC;
           VS : out STD_LOGIC);
end VGA_Driver_Vertical;

architecture Behavioral of VGA_Driver_Vertical is
signal counter_v,counter_h : integer :=0;
begin

process(clk)
begin
    if(clk'event and clk = '1')then 
        counter_h <= counter_h + 1;
        if(counter_h > 0 and counter_h <= 213)then 
            HS <= '1';
            red <= "0000";
            green<= "1111";
            blue <= "0000";
        elsif(counter_h > 213 and counter_h <= 427)then
            HS <= '1';
            red <= "1111";
            green<= "1111";
            blue <= "1111";
        elsif(counter_h > 427 and counter_h <= 640)then
            HS <= '1';
            red <= "1111";
            green<= "0000";
            blue <= "0000";
            
        elsif(counter_h > 640 and counter_h <= 656)then 
            red <= "0000";
            green<= "0000";
            blue <= "0000";
        elsif(counter_h > 656 and counter_h <= 752)then
            HS <= '0';
        elsif(counter_h > 752 and counter_h <= 800)then
            HS <= '1';
        elsif(counter_h > 800)then
            counter_h <= 0;
            counter_v <= counter_v + 1;
        end if;
        
        if(counter_v > 0 and counter_v <= 480)then 
            VS <= '1';
        elsif(counter_v > 480 and counter_v <= 490)then
            red <= "0000";
            green<= "0000";
            blue <= "0000";
        elsif(counter_v > 490 and counter_v <= 492)then
            VS <= '0';
        elsif(counter_v > 492 and counter_v <= 525)then
            VS <= '1';
        elsif(counter_v > 525)then
            counter_v <= 0;
        end if;
    end if; 

end process;

end Behavioral;