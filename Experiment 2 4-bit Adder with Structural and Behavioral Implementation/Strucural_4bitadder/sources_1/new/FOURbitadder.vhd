----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 03:08:58 PM
-- Design Name: 
-- Module Name: 4bitadder - Behavioral
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

entity FOURbitadder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end FOURbitadder;

architecture Behavioral of FOURbitadder is
component fulladder  is

Port ( fa,fb,fcin : in STD_LOGIC;

       fs,fcout : out STD_LOGIC);

end component;
signal cF1,cF2,cF3 : std_logic;

begin

U1:fulladder PORT MAP(fa=>A(0),fb=>B(0),fs=>S(0),fcin=>'0',fcout=>cF1);

U2:fulladder PORT MAP(fa=>A(1),fb=>B(1),fs=>S(1),fcin=>cF1,fcout=>cF2);

U3:fulladder PORT MAP(fa=>A(2),fb=>B(2),fs=>S(2),fcin=>cF2,fcout=>cF3);

U4:fulladder PORT MAP(fa=>A(3),fb=>B(3),fs=>S(3),fcin=>cF3,fcout=>Cout);


end Behavioral;