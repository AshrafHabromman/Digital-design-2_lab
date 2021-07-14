---------------------------------------------------------------


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

entity Binary_Multiplier_ASM is
    Port ( S : in STD_LOGIC;
           Reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           number1 : in STD_LOGIC_VECTOR (3 downto 0);
           number2 : in STD_LOGIC_VECTOR (3 downto 0);
           R : out STD_LOGIC_VECTOR (7 downto 0));
end Binary_Multiplier_ASM;

architecture Behavioral of Binary_Multiplier_ASM is
type state_type is (T0, T1, T2, T3);
signal current_state, next_state :state_type ;
signal p : integer ; 
signal flag : integer :=0 ; 
begin

state_register : process( clk, reset)
begin
    if(reset = '1') then
     current_state <= T0;
    elsif (clk'event and clk = '1') then
     current_State <= next_state;
    end if;
end process state_register;

next_state_process : process( s, current_State)
begin
case current_state is
when T0 =>
    if(S = '0')then
        next_state <= T0;
    elsif(S = '1') THEn next_state <= T1;
    end if;
when T1 =>  next_state <= T2;  
when T2 => next_state <= T3;
when T3 => 
    if(p = 0)then 
        flag<=1;
       next_state <= T0;
    else next_state <= T2;
    end if;
when others => NULL;
end case; 
end process next_state_process;


output_process : process( clk)
variable Q, B : STD_LOGIC_VECTOR (3 downto 0);
variable A : STD_LOGIC_VECTOR (3 downto 0):="0000";
variable c : STD_LOGIC :='0';
variable temp_a : STD_LOGIC_VECTOR (4 downto 0):="00000";
begin
if(clk'event and clk = '1') then
 case current_state is
 when T0=> 
     if(flag=1)then
     R <= (A & Q);
     end if;
       if(reset='1')then
     R<="00000000";
     end if;
 when T1 => 
    B := number1 ; 
    Q := number2 ; 
    A := "0000" ;
    c := '0';
    p <= 4;
 when T2 =>
    p <= p - 1 ;
        if(Q(0) = '1')then 
        temp_a := ('0'&A) + ('0'&B);
         A := temp_a(3 downto 0);
         c := temp_a(4);
    end if;
when T3 => 
    Q := A(0) & Q(3 downto 1);
    A := C & A(3 downto 1);
    C:='0';
    
when others => NULL;
END CASE;
end if;
end process output_process;


end Behavioral;
