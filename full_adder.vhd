
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_vhdl is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           T : out STD_LOGIC;
           F : out STD_LOGIC);
end full_adder_vhdl;

architecture Behavioral of full_adder_vhdl is
signal X:std_logic;
signal Y:std_logic;
signal Z:std_logic;
begin
X<=A XOR B;
T<=X XOR C;
Y<=A and B;
Z<=X and C;
F<=Y or Z;

end Behavioral;
