----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

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
