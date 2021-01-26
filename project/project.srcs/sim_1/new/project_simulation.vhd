-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 7.1.2021 22:13:17 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_project_design_1_wrapper is
end tb_project_design_1_wrapper;

architecture tb of tb_project_design_1_wrapper is

    component project_design_1_wrapper
        port (AT0   : out std_logic;
              AT1   : out std_logic;
              AT2   : out std_logic;
              CMD   : out std_logic;
              CMU   : out std_logic;
              Clk   : in std_logic;
              DRC   : out std_logic;
              DRO   : out std_logic;
              EN    : in std_logic;
              FC0   : in std_logic;
              FC2   : in std_logic;
              FCD1  : in std_logic;
              FCU1  : in std_logic;
              GT0   : in std_logic;
              GT1   : in std_logic;
              GT2   : in std_logic;
              Reset : in std_logic;
              Temp  : in std_logic);
    end component;

    signal AT0   : std_logic;
    signal AT1   : std_logic;
    signal AT2   : std_logic;
    signal CMD   : std_logic;
    signal CMU   : std_logic;
    signal Clk   : std_logic;
    signal DRC   : std_logic;
    signal DRO   : std_logic;
    signal EN    : std_logic;
    signal FC0   : std_logic;
    signal FC2   : std_logic;
    signal FCD1  : std_logic;
    signal FCU1  : std_logic;
    signal GT0   : std_logic;
    signal GT1   : std_logic;
    signal GT2   : std_logic;
    signal Reset : std_logic;
    signal Temp  : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : project_design_1_wrapper
    port map (AT0   => AT0,
              AT1   => AT1,
              AT2   => AT2,
              CMD   => CMD,
              CMU   => CMU,
              Clk   => Clk,
              DRC   => DRC,
              DRO   => DRO,
              EN    => EN,
              FC0   => FC0,
              FC2   => FC2,
              FCD1  => FCD1,
              FCU1  => FCU1,
              GT0   => GT0,
              GT1   => GT1,
              GT2   => GT2,
              Reset => Reset,
              Temp  => Temp);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that Clk is really your main clock signal
    Clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        EN <= '0';
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        Temp <= '0';

        Reset <= '1';
        wait for TbPeriod;
        Reset <= '0';
        wait for TbPeriod;

-- Reset State
        EN <= '1';
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        Temp <= '1';
        wait for TbPeriod;
-- SSN1        
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '1';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        Temp <= '0';
        wait for 6 * TbPeriod;
-- SSN2        
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for 6 * TbPeriod;
-- SSN3        
        FC0 <= '0';
        FC2 <= '1';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 4 * TbPeriod;
-- SSN4         
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '1';
        GT1 <= '0';
        GT2 <= '0';
        wait for 8 * TbPeriod;
-- SSN5         
        FC0 <= '0';
        FC2 <= '1';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for TbPeriod;
        FC0 <= '0';
        FC2 <= '1';
        FCD1 <= '0';
        FCU1 <= '1';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 5 * TbPeriod;
        FC0 <= '0';
        FC2 <= '1';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 6 * TbPeriod;
-- SSN6 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '1';
        GT2 <= '0';
        wait for 6 * TbPeriod;
-- SSN7 
        FC0 <= '1';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 6 * TbPeriod;  
-- SSN8 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '1';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for 7 * TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '1';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 6 * TbPeriod;    
-- SSN9 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '1';
        GT1 <= '0';
        GT2 <= '1';
        wait for 6 * TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for 8 * TbPeriod;
-- SSN10 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '1';
        GT1 <= '0';
        GT2 <= '0';
        wait for TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '1';
        GT0 <= '1';
        GT1 <= '0';
        GT2 <= '0';
        wait for 7 * TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '1';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 6 * TbPeriod;
-- SSN11 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for 6 * TbPeriod;
-- SSN12 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '1';
        GT1 <= '1';
        GT2 <= '0';
        wait for 6 * TbPeriod;
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '1';
        GT1 <= '0';
        GT2 <= '0';
        wait for 6 * TbPeriod;
-- SSN13 
        FC0 <= '1';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 4 * TbPeriod;
-- SSN14 
        FC0 <= '0';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '1';
        GT2 <= '1';
        wait for TbPeriod;
        FC0 <= '1';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '1';
        GT2 <= '1';
        wait for 5 * TbPeriod;
        FC0 <= '1';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '1';
        wait for 6 * TbPeriod;
        FC0 <= '1';
        FC2 <= '0';
        FCD1 <= '0';
        FCU1 <= '0';
        GT0 <= '0';
        GT1 <= '0';
        GT2 <= '0';
        wait for 8 * TbPeriod;
        
        
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_project_design_1_wrapper of tb_project_design_1_wrapper is
    for tb
    end for;
end cfg_tb_project_design_1_wrapper;