-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 22.10.2020 10:39:14 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_project is
end tb_project;

architecture tb of tb_project is

    component project
        port (a : in std_logic;
              b : in std_logic;
              c : in std_logic;
              x : out std_logic;
              y : out std_logic);
    end component;

    signal a : std_logic;
    signal b : std_logic;
    signal c : std_logic;
    signal x : std_logic;
    signal y : std_logic;

begin

    dut : project
    port map (a => a,
              b => b,
              c => c,
              x => x,
              y => y);

    stimuli : process
    begin
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 10 ns;
        
        a <= '0';
        b <= '0';
        c <= '1';
        wait for 10 ns;
        
        a <= '0';
        b <= '1';
        c <= '0';
        wait for 10 ns;
        
        a <= '0';
        b <= '1';
        c <= '1';
        wait for 10 ns;
        
        a <= '1';
        b <= '0';
        c <= '0';
        wait for 10 ns;
        
        a <= '1';
        b <= '0';
        c <= '1';
        wait for 10 ns;
        
        a <= '1';
        b <= '1';
        c <= '0';
        wait for 10 ns;
        
        a <= '1';
        b <= '1';
        c <= '1';
        wait for 10 ns;
    
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_project of tb_project is
    for tb
    end for;
end cfg_tb_project;