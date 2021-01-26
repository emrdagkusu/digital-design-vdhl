--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Jan  8 01:13:02 2021
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target project_design_1_wrapper.bd
--Design      : project_design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_design_1_wrapper is
  port (
    AT0 : out STD_LOGIC;
    AT1 : out STD_LOGIC;
    AT2 : out STD_LOGIC;
    CMD : out STD_LOGIC;
    CMU : out STD_LOGIC;
    Clk : in STD_LOGIC;
    DRC : out STD_LOGIC;
    DRO : out STD_LOGIC;
    EN : in STD_LOGIC;
    FC0 : in STD_LOGIC;
    FC2 : in STD_LOGIC;
    FCD1 : in STD_LOGIC;
    FCU1 : in STD_LOGIC;
    GT0 : in STD_LOGIC;
    GT1 : in STD_LOGIC;
    GT2 : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Temp : in STD_LOGIC
  );
end project_design_1_wrapper;

architecture STRUCTURE of project_design_1_wrapper is
  component project_design_1 is
  port (
    Temp : in STD_LOGIC;
    FC0 : in STD_LOGIC;
    FCU1 : in STD_LOGIC;
    FCD1 : in STD_LOGIC;
    FC2 : in STD_LOGIC;
    GT0 : in STD_LOGIC;
    GT1 : in STD_LOGIC;
    GT2 : in STD_LOGIC;
    Reset : in STD_LOGIC;
    EN : in STD_LOGIC;
    Clk : in STD_LOGIC;
    CMU : out STD_LOGIC;
    CMD : out STD_LOGIC;
    AT0 : out STD_LOGIC;
    AT1 : out STD_LOGIC;
    AT2 : out STD_LOGIC;
    DRO : out STD_LOGIC;
    DRC : out STD_LOGIC
  );
  end component project_design_1;
begin
project_design_1_i: component project_design_1
     port map (
      AT0 => AT0,
      AT1 => AT1,
      AT2 => AT2,
      CMD => CMD,
      CMU => CMU,
      Clk => Clk,
      DRC => DRC,
      DRO => DRO,
      EN => EN,
      FC0 => FC0,
      FC2 => FC2,
      FCD1 => FCD1,
      FCU1 => FCU1,
      GT0 => GT0,
      GT1 => GT1,
      GT2 => GT2,
      Reset => Reset,
      Temp => Temp
    );
end STRUCTURE;
