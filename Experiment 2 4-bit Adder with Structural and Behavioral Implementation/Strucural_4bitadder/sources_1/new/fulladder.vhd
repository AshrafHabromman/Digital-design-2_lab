----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 02:23:08 PM
-- Design Name: 
-- Module Name: fulladder - Behavioral
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

entity fulladder is
    Port ( fa : in STD_LOGIC;
           fb : in STD_LOGIC;
           fcin : in STD_LOGIC;
           fs : out STD_LOGIC;
           fcout : out STD_LOGIC);
end fulladder;

architecture structural of fulladder is
component halfadder  is

Port ( a,b : in STD_LOGIC;

       s,c : out STD_LOGIC);

end component;

signal cH1,sH1,cH2: STD_LOGIC; 

begin

U1:halfadder PORT MAP(a=>fa,b=>fb,s=>sH1,c=>cH1);

U2:halfadder PORT MAP(a=>sH1,b=>fcin,s=>fs,c=>cH2);

fcout <= cH1 or cH2;


end structural;
