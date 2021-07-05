----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 02:55:12 PM
-- Design Name: 
-- Module Name: fulladder_tb - Behavioral
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

entity fulladder_tb is
--  Port ( );
end fulladder_tb;

architecture Behavioral of fulladder_tb is
component fulladder
port(
fa: in std_logic;
fb: in std_logic;
fs: out std_logic;
fcin: in std_logic;
fcout: out std_logic
);
end component;
signal fa : std_logic := '0';
signal fb : std_logic := '0';
signal fs : std_logic := '0';
signal fcin : std_logic := '0';
signal fcout : std_logic := '0';

begin
uut: fulladder port map(
fa=> fa,
fb=> fb,
fs=> fs,
fcout=>fcout,
fcin=>fcin);

stimulus: process

begin

fa<= '0';
fb<= '0';
fcin<='0';
wait for 10 ns;

fa<= '1';
fb<= '0';
fcin<='0';
wait for 10 ns;

fa<= '0';
fb<= '1';
fcin<='0';
wait for 10 ns;

fa<= '1';
fb<= '1';
fcin<='0';
wait for 10 ns;

fa<= '0';
fb<= '0';
fcin<='1';
wait for 10 ns;

fa<= '1';
fb<= '0';
fcin<='1';
wait for 10 ns;

fa<= '0';
fb<= '1';
fcin<='1';
wait for 10 ns;

fa<= '1';
fb<= '1';
fcin<='1';
wait for 10 ns;

fa<= '0';
fb<= '0';
fcin<='0';
wait ;
end process;

end Behavioral;
