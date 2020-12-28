-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 17.10.2020 19:29:53 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_project is
end tb_project;

architecture tb of tb_project is

    component project
        port (SS : in std_logic_vector (5 downto 0);
              DD : out std_logic);
    end component;

    signal SS : std_logic_vector (5 downto 0);
    signal DD : std_logic;

begin

    dut : project
    port map (SS => SS,
              DD => DD);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        SS <= (others => '0');
        wait for 10 ns;
        
        SS(5) <= '0';
        SS(4) <= '0';
        SS(3) <= '0';
        SS(2) <= '0';
        SS(1) <= '0';
        SS(0) <= '1';
        wait for 10 ns;
        
        SS(5) <= '1';
        SS(4) <= '0';
        SS(3) <= '0';
        SS(2) <= '1';
        SS(1) <= '1';
        SS(0) <= '1';
        wait for 10 ns;
        
        SS(5) <= '1';
        SS(4) <= '0';
        SS(3) <= '0';
        SS(2) <= '0';
        SS(1) <= '0';
        SS(0) <= '0';
        wait for 10 ns;
        
        SS(5) <= '1';
        SS(4) <= '1';
        SS(3) <= '1';
        SS(2) <= '1';
        SS(1) <= '1';
        SS(0) <= '1';
        wait for 10 ns;
        

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_project of tb_project is
    for tb
    end for;
end cfg_tb_project;
