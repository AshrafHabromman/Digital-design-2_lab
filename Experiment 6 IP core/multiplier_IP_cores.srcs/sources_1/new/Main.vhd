----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main is
    Port ( clk : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           P : out STD_LOGIC_VECTOR (7 downto 0));
end Main;

architecture Behavioral of Main is

COMPONENT mult_gen
  PORT (
    CLK : IN STD_LOGIC;
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
begin
mult1 : mult_gen
  PORT MAP (
    CLK => CLK,
    A => A,
    B => B,
    P => P
  );

end Behavioral;
