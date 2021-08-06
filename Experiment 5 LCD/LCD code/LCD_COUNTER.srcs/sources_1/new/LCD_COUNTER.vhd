----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2021 03:28:08 PM
-- Design Name: 
-- Module Name: LCD_COUNTER - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_COUNTER is
    Port ( CLK : in STD_LOGIC;
           DIGIT0 : out STD_LOGIC_VECTOR (3 downto 0);
           DIGIT1 : out STD_LOGIC_VECTOR (3 downto 0);
           DIGIT2 : out STD_LOGIC_VECTOR (3 downto 0);
           Sign_dig : out STD_LOGIC_VECTOR (1 downto 0));
end LCD_COUNTER;

architecture Behavioral of LCD_COUNTER is
signal dig0,dig1,dig2:std_logic_vector (3 downto 0);
begin

process(clk)

begin
if(clk' event and clk='1') then
    if(dig0="1001") then
       dig0<="0000";
        if(dig1="1001")then
          dig1<="0000";
          if(dig2="1001")then
           dig2<="0000";
          else Sign_dig<="10"; dig2<=dig2+'1';
          end if;
        else Sign_dig<="01"; dig1<=dig1+'1';
        end if; 
     else Sign_dig<="00"; dig0<=dig0+'1';
     end if;
end if;
end process;

end Behavioral;
