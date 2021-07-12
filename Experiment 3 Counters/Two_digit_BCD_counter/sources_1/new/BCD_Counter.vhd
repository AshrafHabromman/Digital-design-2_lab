library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity BCD_Counter is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           UpDown : in STD_LOGIC;
           Digit0 : out STD_LOGIC_VECTOR (3 downto 0);
           Digit1 : out STD_LOGIC_VECTOR (3 downto 0));
end BCD_Counter;

architecture Behavioral of BCD_Counter is
signal temp0,temp1:STD_LOGIC_VECTOR (3 downto 0):="0000";
begin
process(clk,Reset)
begin
if(Reset='0') then
temp0<="0000";
temp1<="0000";
elsif(clk' event and clk='1') then
    if(Updown='1') then
     if(temp0="1001") then
        temp0<="0000";
        if(temp1="1001")then
          temp1<="0000";
        else  temp1<=temp1+'1';
        end if; 
     else temp0<=temp0+'1';
        end if;
    elsif (Updown='0') then
   if(temp0="0000") then
        temp0<="1001";
        if(temp1="0000")then
          temp1<="1001";
        else  temp1<=temp1-'1';
        end if; 
     else temp0<=temp0-'1';
        end if;
      end if; 
     end if; 
end process;
Digit0<=temp0;
Digit1<=temp1;
end Behavioral;
