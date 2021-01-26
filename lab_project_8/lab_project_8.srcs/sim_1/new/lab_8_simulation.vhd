-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 3.1.2021 20:09:45 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_design_lab_8_wrapper is
end tb_design_lab_8_wrapper;

architecture tb of tb_design_lab_8_wrapper is

    component design_lab_8_wrapper
        port (I     : in std_logic;
              Z     : out std_logic;
              clk   : in std_logic;
              en    : in std_logic;
              reset : in std_logic);
    end component;

    signal I     : std_logic;
    signal Z     : std_logic;
    signal clk   : std_logic;
    signal en    : std_logic;
    signal reset : std_logic;

    constant TbPeriod : time := 2000 ms; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';
    
    constant Period : time := 1550 ms;

begin

    dut : design_lab_8_wrapper
    port map (I     => I,
              Z     => Z,
              clk   => clk,
              en    => en,
              reset => reset);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        I <= '0';
        en <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        wait for TbPeriod;

        EN <= '1';
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        
        I <= '0';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '1';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        
        I <= '0';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '0';
        wait for Period;
        
        I <= '1';
        wait for Period;
        I <= '1';
        wait for Period;
        I <= '0';
        wait for Period;
        I <= '0';
        wait for Period;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_design_lab_8_wrapper of tb_design_lab_8_wrapper is
    for tb
    end for;
end cfg_tb_design_lab_8_wrapper;