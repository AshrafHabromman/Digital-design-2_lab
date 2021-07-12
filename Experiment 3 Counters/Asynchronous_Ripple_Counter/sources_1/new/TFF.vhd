------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TFF is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           Q : out STD_LOGIC;
           QBAR : out STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
signal temp : std_logic := '0';
begin
  Process (CLK, CLR)
begin
  if ( CLR = '0') then
	temp <= '0' ;
	elsif ( CLK' event and CLK = '1' ) then
  if T='0' then 
	temp <= temp;
  elsif T='1' then 
  temp<= not(temp);
	end if ;
end if;
end process;
Q<=temp;
QBAR<=not(temp) ;
end Behavioral;



