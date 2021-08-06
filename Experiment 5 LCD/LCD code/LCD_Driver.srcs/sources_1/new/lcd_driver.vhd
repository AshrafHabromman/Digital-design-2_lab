----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/06/2021 03:44:04 PM
-- Design Name: 
-- Module Name: lcd_driver - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity lcd_driver is
    Port ( clk : in STD_LOGIC;
           data_bus : out STD_LOGIC_VECTOR(7 downto 0);
           enable : out STD_LOGIC;
           rg_s : out STD_LOGIC;
           r_w : out STD_LOGIC);
end lcd_driver;

architecture Behavioral of lcd_driver is 

signal counter : integer:=0;

begin

process(clk)
    begin 
        if(clk'event and clk = '1')then
            counter<= counter + 1; 
            if(counter < 2000000)then
                enable <= '0';
                rg_s <= '0';
                r_w <= '0';
            elsif(counter >= 2000000 and counter <= 2004000)then               
                data_bus <= "00111000";
                if(counter >= 2000000 and counter <= 2000100)then 
                    enable <= '1';
                else enable <= '0';
                end if;           
            elsif(counter > 2004000 and counter <= 2008000)then 
                data_bus <= "00000110";
                if(counter >= 2004000 and counter <= 2004100)then 
                    enable <= '1';
                else enable <= '0';
                end if;   
            elsif(counter > 2008000 and counter <= 2012000 ) then 
                data_bus <= "00001100";
                if(counter >= 2008000 and counter <= 2008100)then 
                    enable <= '1';
                else enable <= '0';
                end if;
            elsif(counter > 2012000 and counter <= 2176000)then 
                data_bus <= "00000001"; -- finish config
                if(counter >= 2012000 and counter <= 2012100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
            elsif(counter > 2176000 and counter <= 2180000)then
                data_bus <= "10000000"; -- address
                if(counter >= 2176000 and counter <= 2176100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;

            elsif(counter > 2180000 and counter <= 2184000)then
                rg_s <= '1';
                data_bus <= "01000001"; -- A char 
                if(counter >= 2180000 and counter <= 2180100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
	       elsif(counter > 2184000 and counter <= 2188000)then
                rg_s <= '1';
                data_bus <= "01010011"; -- S char 
                if(counter >= 2184000 and counter <= 2184100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
            elsif(counter > 2188000 and counter <= 2192000)then
                rg_s <= '1';
                data_bus <= "01001000"; -- H char 
                if(counter >= 2188000 and counter <= 2188100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
           elsif(counter > 2192000 and counter <= 2196000)then
                rg_s <= '1';
                data_bus <= "01010010"; -- R char 
                if(counter >= 2192000 and counter <= 2192100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
           elsif(counter > 2196000 and counter <= 2200000)then
                rg_s <= '1';
                data_bus <= "01000001"; -- A char 
                if(counter >= 2196000 and counter <= 2196100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
	       elsif(counter > 2200000 and counter <= 2204000)then
                rg_s <= '1';
                data_bus <= "01000110"; -- F char 
                if(counter >= 2200000 and counter <= 2200100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
            elsif(counter > 2204000 and counter <= 2208000)then
                rg_s <= '1';
                data_bus <= "01011111"; -- _ char 
                if(counter >= 2204000 and counter <= 2204100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
           elsif(counter > 2208000 and counter <= 2212000)then
                rg_s <= '1';
                data_bus <= "01010010"; -- R char 
                if(counter >= 2208000 and counter <= 2208100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
                
          elsif(counter > 2212000 and counter <= 2216000)then
                rg_s <= '1';
                data_bus <= "01000001"; -- A char 
                if(counter >= 2212000 and counter <= 2212100)then 
                    enable <= '1';
                else enable <= '0';
                end if ;
            
          end if;
        end if;
        
        
end process; 


end Behavioral;
