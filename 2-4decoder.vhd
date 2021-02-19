library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0));
end decoder;

architecture Behavioral of decoder is

begin

D(0)<= (not A(0)) and (not A(1));
D(1)<= (not A(1)) and A(0); 
D(2)<= A(1) and (not A(0));
D(3)<= A(0) and A(1);

end Behavioral;
