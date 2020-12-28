library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project is
    Port ( I : in STD_LOGIC_VECTOR(0 to 2);
           A : out STD_LOGIC_VECTOR(3 downto 0));
end project;

architecture Behavioral of project is
component Second is
     Port ( I : in STD_LOGIC_VECTOR(0 to 2);
           A : out STD_LOGIC_VECTOR(3 downto 0));
end component;
begin
    S1 : Second PORT MAP (I, A);

end Behavioral;
