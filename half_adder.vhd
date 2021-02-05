library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity half_adder_vhdl is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           T : out STD_LOGIC;
           F : out STD_LOGIC);
end half_adder_vhdl;

architecture Behavioral of half_adder_vhdl is

begin
F<=A and B;
T<=A XOR B;

end Behavioral;
