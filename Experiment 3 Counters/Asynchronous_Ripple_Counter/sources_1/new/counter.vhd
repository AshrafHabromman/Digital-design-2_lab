
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( 
           CLK : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is
component TFF
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           Q : out STD_LOGIC;
           QBAR : out STD_LOGIC);
end component;
SIGNAL SQ1,SQ2,SQ3:STD_LOGIC;
begin 
    u1: TFF PORT MAP(T=>ENABLE,CLK=>CLK,CLR=>RESET,Q=>Q(0),QBAR=>SQ1);
    u2: TFF PORT MAP(T=>ENABLE,CLK=>SQ1,CLR=>RESET,Q=>Q(1),QBAR=>SQ2);
    u3: TFF PORT MAP(T=>ENABLE,CLK=>SQ2,CLR=>RESET,Q=>Q(2),QBAR=>SQ3);
    u4: TFF PORT MAP(T=>ENABLE,CLK=>SQ3,CLR=>RESET,Q=>Q(3));
end Behavioral;
