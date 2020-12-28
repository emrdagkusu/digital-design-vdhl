-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.11.2020 09:42:36 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_design_2_wrapper is
end tb_design_2_wrapper;

architecture tb of tb_design_2_wrapper is

    component design_2_wrapper
        port (X0 : in std_logic;
              X1 : in std_logic;
              X2 : in std_logic;
              Y0 : out std_logic;
              Y1 : out std_logic;
              Y2 : out std_logic;
              Y3 : out std_logic;
              Y4 : out std_logic;
              Y5 : out std_logic;
              Y6 : out std_logic;
              Y7 : out std_logic);
    end component;

    signal X0 : std_logic;
    signal X1 : std_logic;
    signal X2 : std_logic;
    signal Y0 : std_logic;
    signal Y1 : std_logic;
    signal Y2 : std_logic;
    signal Y3 : std_logic;
    signal Y4 : std_logic;
    signal Y5 : std_logic;
    signal Y6 : std_logic;
    signal Y7 : std_logic;

begin

    dut : design_2_wrapper
    port map (X0 => X0,
              X1 => X1,
              X2 => X2,
              Y0 => Y0,
              Y1 => Y1,
              Y2 => Y2,
              Y3 => Y3,
              Y4 => Y4,
              Y5 => Y5,
              Y6 => Y6,
              Y7 => Y7);

    stimuli : process
    begin
        X0 <= '0';
        X1 <= '0';
        X2 <= '0';
        wait for 10 ns;
        
        X0 <= '1';
        X1 <= '0';
        X2 <= '0';
        wait for 10 ns;
        
        X0 <= '1';
        X1 <= '0';
        X2 <= '1';
        wait for 10 ns;
        
        X0 <= '1';
        X1 <= '1';
        X2 <= '0';
        wait for 10 ns;
        
        X0 <= '1';
        X1 <= '1';
        X2 <= '1';
        wait for 10 ns;
        
        X0 <= '0';
        X1 <= '0';
        X2 <= '1';
        wait for 10 ns;


        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_design_2_wrapper of tb_design_2_wrapper is
    for tb
    end for;
end cfg_tb_design_2_wrapper;