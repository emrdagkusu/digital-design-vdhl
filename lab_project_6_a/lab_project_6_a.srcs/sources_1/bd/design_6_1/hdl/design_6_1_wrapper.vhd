--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Nov 21 14:42:17 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_6_1_wrapper.bd
--Design      : design_6_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_6_1_wrapper is
  port (
    A0 : out STD_LOGIC;
    A1 : out STD_LOGIC;
    D0 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    V : out STD_LOGIC
  );
end design_6_1_wrapper;

architecture STRUCTURE of design_6_1_wrapper is
  component design_6_1 is
  port (
    D0 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    A0 : out STD_LOGIC;
    A1 : out STD_LOGIC;
    V : out STD_LOGIC
  );
  end component design_6_1;
begin
design_6_1_i: component design_6_1
     port map (
      A0 => A0,
      A1 => A1,
      D0 => D0,
      D1 => D1,
      D2 => D2,
      D3 => D3,
      V => V
    );
end STRUCTURE;
