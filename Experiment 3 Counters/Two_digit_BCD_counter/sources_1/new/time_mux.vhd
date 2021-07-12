----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity time_mux is
    Port ( clk : in STD_LOGIC;
           Digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           Digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           BCD_Value : out STD_LOGIC_VECTOR (3 downto 0);
           DigSelect : out STD_LOGIC);
end time_mux;

architecture Behavioral of time_mux is
    
signal counter: integer:=1;
signal temp_digit: STD_LOGIC_VECTOR (3 downto 0);
signal flag : std_logic := '0';
begin

process(clk)
begin
  if(clk'event and clk='1')then 
      counter <= counter +1; 

      if(counter = 1000000)then
          counter <= 0; 
          if(flag = '0')then 
              temp_digit <= Digit1;
          else temp_digit <= Digit0;
          end if;

          flag <= not flag;   
      end if;

  end if;
  BCD_Value <= temp_digit;
  DigSelect <= flag; 
end process;

end Behavioral;