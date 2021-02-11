library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_bit_adder_vhdl is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C3 : out STD_LOGIC);
end four_bit_adder_vhdl;

architecture Behavioral of four_bit_adder_vhdl is
COMPONENT full_adder_vhdl
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end COMPONENT;
signal C0,C1,C2: std_logic;
begin
FA1 : full_adder_vhdl port map (A(0),B(0),'0',S(0),C0);
FA2 : full_adder_vhdl port map (A(1),B(1),C0,S(0),C1);
FA3 : full_adder_vhdl port map (A(2),B(2),C1,S(2),C2);
FA4 : full_adder_vhdl port map (A(3),B(3),C2,S(3),C3);

end Behavioral;
