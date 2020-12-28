library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Second is
    Port ( I : in STD_LOGIC_VECTOR(0 to 1);
           EN : in STD_LOGIC;
           A : out STD_LOGIC_VECTOR(3 downto 0));
end Second;

architecture Behavioral of Second is

begin
with I select
A <= "1000" when "100",
     "0100" when "101",
     "0010" when "110",
     "0001" when "111",
     "0000" when "000",
     "0000" when "001",
     "0000" when "010",
     "0000" when "011",
     "0000" when others;

end Behavioral;

