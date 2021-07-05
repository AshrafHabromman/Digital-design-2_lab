----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 03:25:50 PM
-- Design Name: 
-- Module Name: fourbit_tb - Behavioral
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

use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fourbit_tb is
--  Port ( );
end fourbit_tb;

architecture Behavioral of fourbit_tb is
component FOURbitadder
   Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end component;

signal A: STD_LOGIC_VECTOR (3 downto 0):="0000";
signal B :STD_LOGIC_VECTOR (3 downto 0):="0000";
signal S : STD_LOGIC_VECTOR (3 downto 0):="0000";
signal Cout : std_logic := '0';

begin
utt: FOURbitadder port map(
A=>A,
B=>B,
S=>S,
Cout=>Cout
);

stimulus: process

begin 
      wait for 10 ns;
	for i in 0 to 16 loop
        	for j in 0 to 16 loop
                B<= B + '1';
                wait for 10 ns;
	        end loop;
	        A<= A + '1';
	        wait for 20 ns;
	end loop;
	wait;
end process;

end Behavioral;
