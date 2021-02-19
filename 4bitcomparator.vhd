entity fourbitcomparator is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC;
           L : out STD_LOGIC;
           E : out STD_LOGIC);
end fourbitcomparator;

architecture Behavioral of fourbitcomparator is
signal x0,x1,x2,x3 : std_logic;

begin
x0<= (A(0)and B(0))or ((not A(0)) and (not B(0)));
x1<= (A(1)and B(1))or ((not A(1)) and (not B(1)));
x2<= (A(2)and B(2))or ((not A(2)) and (not B(2)));
x3<= (A(3)and B(3))or ((not A(3)) and (not B(3)));

--Eşitlik durumu E, büyüklük durumu G ve küçüklük durumu L ile gösterilmiştir

E<=x3 and x2 and x1 and x0;
G<=(A(3) and (not B(3))) or (x3 and A(2) and (not B(2))) or (x3 and x2 and A(1) and (not B(1))) or (x3 and x2 and x1 and A(0) and (not B(0)));
L<=((not A(3)) and B(3)) or (x3 and (not A(2)) and B(2)) or (x3 and x2 and (not A(1)) and B(1)) or (x3 and x2 and x1 and (not A(0)) and B(0));

end Behavioral;
