----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2021 02:15:29 PM
-- Design Name: 
-- Module Name: VGA_Driver_image - Behavioral
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

entity VGA_Driver_image is
    Port ( clk25 : in STD_LOGIC;
           counter_h : in integer;
           counter_v : in integer;
           data_FM : in STD_LOGIC_VECTOR (11 downto 0);
	   address : out STD_LOGIC_VECTOR (18 downto 0);
           Red : out STD_LOGIC_VECTOR (3 downto 0);
           Green : out STD_LOGIC_VECTOR (3 downto 0);
           Blue : out STD_LOGIC_VECTOR (3 downto 0));
end VGA_Driver_image;

architecture Behavioral of VGA_Driver_image is
signal address_s : std_logic_vector(18 downto 0);
begin

process(clk25)
begin
    if(clk25'event and clk25 = '1')then 
    	if(address_s >= x"4B000")then
		  address_s <= (others =>'0');
	   end if;
	
	if(counter_h > 0 and counter_h <= 640)then 
		if(counter_v > 0 and counter_v <= 480)then 
			address_s <= address_s + 1;
			Blue <= data_FM(11 downto 8);
			Green <= data_FM(7 downto 4);
			Red <= data_FM(3 downto 0);
		end if;
	else 
		Red <= "0000";
		Green <= "0000";
		Blue <= "0000";
	end if;
    end if; 
	
address <= address_s; 
end process;

end Behavioral;
