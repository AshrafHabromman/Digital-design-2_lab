----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 02:25:50 PM
-- Design Name: 
-- Module Name: halfadder_tb - Behavioral
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

entity halfadder_tb is
--  Port ( );
end halfadder_tb;

architecture Behavioral of halfadder_tb is
component halfadder
port(
a: in std_logic;
b: in std_logic;
s: out std_logic;
c: out std_logic
);
end component;
signal a : std_logic := '0';
signal b : std_logic := '0';
signal s : std_logic := '0';
signal c : std_logic := '0';
begin
uut: halfadder port map(
a=> a,
b=> b,
s=> s,
c=>c);
stimulus: process

begin

a<= '0';
b<= '0';
wait for 10 ns;

a<= '1';
b<= '0';
wait for 10 ns;

a<= '0';
b<= '1';
wait for 10 ns;

a<= '1';
b<= '1';
wait for 10 ns;

a<= '0';
b<= '0';
wait ;
end process;

end Behavioral;
