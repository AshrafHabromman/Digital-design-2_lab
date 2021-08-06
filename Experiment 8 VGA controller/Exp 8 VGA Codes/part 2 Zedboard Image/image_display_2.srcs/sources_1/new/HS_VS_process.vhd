----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2021 02:12:26 PM
-- Design Name: 
-- Module Name: HS_VS_process - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HS_VS_process is
    Port ( clk25 : in STD_LOGIC;-- the input from clock divider 
           HS : out STD_LOGIC;
           VS : out STD_LOGIC;
	   counter_v : out INTEGER;
	   counter_h : out INTEGER);
end HS_VS_process ;

architecture Behavioral of HS_VS_process is
signal counter_v_s,counter_h_s : integer :=0;
begin

process(clk25)
begin
    if(clk25'event and clk25 = '1')then 
        counter_h_s <= counter_h_s + 1;
        if(counter_h_s > 0 and counter_h_s <= 656)then 
            HS <= '1';
        elsif(counter_h_s > 656 and counter_h_s <= 752)then
            HS <= '0';
        elsif(counter_h_s > 752 and counter_h_s <= 800)then
            HS <= '1';
        elsif(counter_h_s > 800)then
            counter_h_s <= 0;
            counter_v_s <= counter_v_s + 1;
        end if;
        
        if(counter_v_s > 0 and counter_v_s <= 490)then 
            VS <= '1';
        elsif(counter_v_s > 490 and counter_v_s <= 492)then
            VS <= '0';
        elsif(counter_v_s > 492 and counter_v_s <= 525)then
            VS <= '1';
        elsif(counter_v_s > 525)then
            counter_v_s <= 0;
        end if;
    end if; 

counter_v <= counter_v_s;
counter_h <= counter_h_s;
	
end process;

end Behavioral;
