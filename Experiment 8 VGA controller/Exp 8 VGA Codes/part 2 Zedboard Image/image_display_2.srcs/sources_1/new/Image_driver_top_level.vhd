----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2021 02:23:16 PM
-- Design Name: 
-- Module Name: Image_driver_top_level - Behavioral
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

entity Image_driver_top_level is
    Port ( clk : in STD_LOGIC;
           red : out STD_LOGIC_VECTOR (3 downto 0);
           green : out STD_LOGIC_VECTOR (3 downto 0);
           blue : out STD_LOGIC_VECTOR (3 downto 0);
           HS : out STD_LOGIC;
           VS : out STD_LOGIC);
end Image_driver_top_level;

architecture Behavioral of Image_driver_top_level is

component clock_divider 
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component clock_divider;

component HS_VS_process 
    Port ( clk25 : in STD_LOGIC; -- the input from clock divider 
           HS : out STD_LOGIC;
           VS : out STD_LOGIC;
	   counter_v : out INTEGER;
	   counter_h : out INTEGER);
end  component HS_VS_process ;

component VGA_Driver_image 
    Port ( clk25 : in STD_LOGIC;
           counter_h : in integer;
           counter_v : in integer;
           data_FM : in STD_LOGIC_VECTOR (11 downto 0);
	       address : out STD_LOGIC_VECTOR (18 downto 0);
           Red : out STD_LOGIC_VECTOR (3 downto 0);
           Green : out STD_LOGIC_VECTOR (3 downto 0);
           Blue : out STD_LOGIC_VECTOR (3 downto 0));
end component VGA_Driver_image;

COMPONENT image_memory
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;

signal clk25_s : std_logic;
signal counter_h_s, counter_v_s : integer;
signal address_s : std_logic_vector(18 downto 0);
signal data_FM_s : std_logic_vector(11 downto 0);

begin
clk_div : clock_divider port map (CLK_IN => clk, CLK_OUT => clk25_s);
hs_vs_process_1 : HS_VS_process port map (clk25 => clk25_s, HS=>HS, VS=>VS, counter_v => counter_v_s, counter_h => counter_h_s );
vga_driver_1 : VGA_Driver_image port map (clk25 => clk25_s, counter_h => counter_h_s, counter_v => counter_v_s, data_FM => data_FM_s,
 address => address_s, Red => red, Green => green, Blue => blue);
memory : image_memory PORT MAP (clka => clk, addra => address_s, douta => data_FM_s);

end Behavioral;
