----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2021 02:56:07 PM
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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

entity clock_divider is
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
signal count: integer := 1;
signal tmp : std_logic :='0';
begin
process(CLK_IN)
begin
    if(CLK_IN'event and CLK_IN = '1') then
        count <= count+1;
       if (count = 50000000) then
        tmp <= not(tmp);
        count <= 1;
       end if;
    end if;
       CLK_OUT <= tmp;
end process;
end Behavioral;
