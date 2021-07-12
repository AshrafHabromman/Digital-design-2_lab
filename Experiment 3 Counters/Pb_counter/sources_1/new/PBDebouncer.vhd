----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity PBDebouncer is
    Port ( CLK : in STD_LOGIC;
           PB : in STD_LOGIC;
           PB_debounced : out STD_LOGIC);
end PBDebouncer;

architecture Behavioral of PBDebouncer is
begin
process(CLK)
variable Ton ,Pold : std_logic := '0';
variable Timer: integer := 1;
begin
if(CLK' event and CLK='1') then
    if(Ton='0') then 
        if(Pold/=PB)then
            Ton := '1';
            Timer := 1;
            Pold := not Pold;
         end if;
     elsif (Ton='1') then
        if(Timer=1000000) then 
            Ton:='0';
        else Timer:=Timer + 1;
        end if;
     end if;
end if;
PB_debounced<=Pold;
end process;
end Behavioral;
