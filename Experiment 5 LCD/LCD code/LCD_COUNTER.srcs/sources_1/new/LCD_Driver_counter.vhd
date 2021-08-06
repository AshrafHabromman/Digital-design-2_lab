----------------------------------------------------------------------------


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

entity LCD_Driver_counter is
    Port ( digit0 : in STD_LOGIC_VECTOR (3 downto 0);
           digit1 : in STD_LOGIC_VECTOR (3 downto 0);
           digit2 : in STD_LOGIC_VECTOR (3 downto 0);
           Sign_dig: in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           enable : out STD_LOGIC;
           rg_s : out STD_LOGIC;
           r_w : out STD_LOGIC;
           data_bus : out STD_LOGIC_VECTOR (7 downto 0));
end LCD_Driver_counter;

architecture Behavioral of LCD_Driver_counter is
signal counter : integer:=0;
signal counter_2 : integer:=0;
--signal flag : std_logic:='0';

begin

process(clk)
variable flag : std_logic:='0';
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
                    data_bus <= "00000110"; -- entry mode set 
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
					rg_s <= '0'; 		-- 0 means address
					data_bus <= "10000000";  -- address 0 
					if(counter> 2180000 and counter<= 2180100)then
						enable <= '1';
					else enable <= '0';
					end if;
				elsif(counter > 2184000 and counter <= 2188000)then
					rg_s <= '1'; 		-- 1 means data
					data_bus <= ("0011" & digit2);  -- data  digit2 x00 
					if(counter > 2184000  and counter <= 2184100)then
						enable <= '1';
					else enable <= '0';
					end if;
				-- digit 1 , 0x0 
				elsif(counter > 2188000 and counter <= 2192000)then --(2192000 was 2188000 !!!! )
					rg_s <= '1'; 		-- 1 means data
					data_bus <= ("0011" & digit1);  -- data  digit1 0x0 
					if(counter > 2188000  and counter <= 2188100)then
						enable <= '1';
					else enable <= '0';
					end if;

				elsif(counter > 2192000 and counter <= 2196000)then
					rg_s <= '1'; 		-- 1 means data
					data_bus <= ("0011" & digit0);  -- data  digit1 0x0 
					if(counter > 2192000  and counter <= 2192100)then
						enable <= '1';
					else enable <= '0';
					end if;
				-- digit 0 , 00x				
				else counter <=2176000;	-- it was 2176100 (wrong one)
				end if;
                end if;
	

end process;


end Behavioral;
