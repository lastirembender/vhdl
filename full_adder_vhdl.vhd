----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.02.2021 08:34:10
-- Design Name: 
-- Module Name: full_adder_vhdl - Behavioral
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
