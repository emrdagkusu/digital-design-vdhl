library ieee;
use ieee.std_logic_1164.all;

entity tb_project is
end tb_project;

architecture tb of tb_project is

    component project
        port (I : in std_logic_vector (0 to 2);
              A : out std_logic_vector (3 downto 0));
    end component;

    signal I : std_logic_vector (0 to 2);
    signal A : std_logic_vector (3 downto 0);

begin

    dut : project
    port map (I => I,
              A => A);

    stimuli : process
    begin
        I <= "100";
        wait for 10 ns;
        
        I <= "101";
        wait for 10 ns;
        
        I <= "110";
        wait for 10 ns;
        
        I <= "111";
        wait for 10 ns;
        
        I <= "000";
        wait for 10 ns;
        
        I <= "001";
        wait for 10 ns;
        
        I <= "010";
        wait for 10 ns;
        
        I <= "011";
        wait for 10 ns;


        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_project of tb_project is
    for tb
    end for;
end cfg_tb_project;