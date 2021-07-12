----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/22/2021 03:54:18 PM
-- Design Name: 
-- Module Name: updowncounter - Behavioral
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

entity updowncounter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end updowncounter;

architecture Behavioral of updowncounter is
signal tmp : std_logic_vector (3 downto 0):= "0000";
begin
process (clk,reset)
begin 
    if(reset='0') then
        tmp<="0000";
    elsif (clk' event and clk='1') then
        if(updown ='1') then
        tmp <= tmp + '1';
        else tmp <= tmp - '1';
        
        end if;
    end if; 
    count <= tmp; 
    
end process;     
end Behavioral;
