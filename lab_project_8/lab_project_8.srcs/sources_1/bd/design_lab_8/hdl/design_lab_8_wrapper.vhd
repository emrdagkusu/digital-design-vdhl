--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun Jan  3 23:07:36 2021
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_lab_8_wrapper.bd
--Design      : design_lab_8_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab_8_wrapper is
  port (
    I : in STD_LOGIC;
    Z : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_lab_8_wrapper;

architecture STRUCTURE of design_lab_8_wrapper is
  component design_lab_8 is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    I : in STD_LOGIC;
    Z : out STD_LOGIC
  );
  end component design_lab_8;
begin
design_lab_8_i: component design_lab_8
     port map (
      I => I,
      Z => Z,
      clk => clk,
      en => en,
      reset => reset
    );
end STRUCTURE;
