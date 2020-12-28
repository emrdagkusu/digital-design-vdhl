-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.11.2020 08:43:43 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_design_1_wrapper is
end tb_design_1_wrapper;

architecture tb of tb_design_1_wrapper is

    component design_1_wrapper
        port (A1 : in std_logic;
              A2 : in std_logic;
              D0 : out std_logic;
              D1 : out std_logic;
              D2 : out std_logic;
              D3 : out std_logic;
              EN : in std_logic);
    end component;

    signal A1 : std_logic;
    signal A2 : std_logic;
    signal D0 : std_logic;
    signal D1 : std_logic;
    signal D2 : std_logic;
    signal D3 : std_logic;
    signal EN : std_logic;

begin

    dut : design_1_wrapper
    port map (A1 => A1,
              A2 => A2,
              D0 => D0,
              D1 => D1,
              D2 => D2,
              D3 => D3,
              EN => EN);

    stimuli : process
    begin
        EN <= '0';
        A1 <= '0';
        A2 <= '0';
        wait for 10 ns;
        
        EN <= '1';
        A1 <= '0';
        A2 <= '0';
        wait for 10 ns;
        
        EN <= '1';
        A1 <= '0';
        A2 <= '1';
        wait for 10 ns;
        
        EN <= '1';
        A1 <= '1';
        A2 <= '0';
        wait for 10 ns;
        
        EN <= '1';
        A1 <= '1';
        A2 <= '1';
        wait for 10 ns;
        
        EN <= '0';
        A1 <= '0';
        A2 <= '1';
        wait for 10 ns;

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_design_1_wrapper of tb_design_1_wrapper is
    for tb
    end for;
end cfg_tb_design_1_wrapper;