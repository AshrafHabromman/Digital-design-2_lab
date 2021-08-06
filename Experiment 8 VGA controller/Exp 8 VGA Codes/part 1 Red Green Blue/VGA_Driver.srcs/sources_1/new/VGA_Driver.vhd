----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_Driver is
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC_VECTOR (3 downto 0);
           green : out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0);
           HS : out STD_LOGIC;
           VS : out STD_LOGIC);
end VGA_Driver;

architecture Behavioral of VGA_Driver is
signal counter_v,counter_h : integer :=0;
begin

process(clk)
begin
    if(clk'event and clk = '1')then 
        counter_h <= counter_h + 1;
        if(counter_h > 0 and counter_h <= 640)then 
            HS <= '1';
            if(counter_v > 0 and counter_v <= 160)then 
                red <= "1111";
                green<= "0000";
                blue <= "0000";
            elsif(counter_v > 160 and counter_v <= 320)then
                red <= "0000";
                green<= "1111";
                blue <= "0000";
            elsif(counter_v > 320 and counter_v <= 480)then
                red <= "0000";
                green<= "0000";
                blue <= "1111";
            end if;
            
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
