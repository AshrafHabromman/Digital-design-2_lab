----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2021 03:03:56 PM
-- Design Name: 
-- Module Name: Main - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main is 
 Port ( CLK : in STD_LOGIC; 
 --Reset : in STD_LOGIC; 
 RXD : in STD_LOGIC; 
 TXD : out STD_LOGIC; 
 LED : out STD_LOGIC_VECTOR (7 downto 0)); 
end Main;

architecture Behavioral of Main is

component  Minimal_UART_CORE is
port( 
	  CLOCK 		:  in    std_logic;
	  EOC		   :  out   std_logic;
	  OUTP      :  inout std_logic_vector(7 downto 0) := "ZZZZZZZZ";
	  RXD       :  in	std_logic;	
	  TXD			: 	out std_logic;
	  EOT			:	out std_logic;
	  INP 		: in std_logic_vector(7 downto 0);	
	  READY     :  out   std_logic;
	  WR			:  in    std_logic	  
    );
end component Minimal_UART_CORE;
signal CLOCK  :  std_logic;
signal  EOC   :     std_logic;
signal  OUTP  :   std_logic_vector(7 downto 0) := "ZZZZZZZZ";
--signal  RXD_S :  	std_logic;	
--signal  TXD_S : 	 std_logic;
signal  EOT	  :	 std_logic;
signal  INP   :  std_logic_vector(7 downto 0);	
signal  READY :     std_logic;
signal  WR	  :    std_logic;
signal  flag: std_logic := '0';
signal OUTP_temp : std_logic_vector(7 downto 0);

begin
Minimal_UART_CORE_COMP1: Minimal_UART_CORE port map(CLOCK=>CLK,EOC=>EOC,OUTP=>OUTP,RXD=>RXD,TXD=>TXD,EOT=>EOT,INP=>INP,READY=>READY,WR=>WR);
OUTP_temp <= OUTP + '1';
process(CLK)
begin 
if(clk'event and clk='1') then
   if(EOC='1') THEN 
     LED<=OUTP;
   end if;
   if(READY='0') then
    INP<=OUTP_temp;
   end if;  
   if(READY='0' and WR = '0')then 
    WR <='1';
   end if;
   if(READY='0' and WR = '1')then 
    WR <='0';
   end if;
   
   
end if;
end process; 
end Behavioral;
