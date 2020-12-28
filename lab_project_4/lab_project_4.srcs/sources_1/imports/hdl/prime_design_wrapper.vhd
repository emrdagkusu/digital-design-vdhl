--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Nov  7 23:44:40 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target prime_design_wrapper.bd
--Design      : prime_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prime_design_wrapper is
  port (
    A3 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    O : out STD_LOGIC
  );
end prime_design_wrapper;

architecture STRUCTURE of prime_design_wrapper is
  component prime_design is
  port (
    A3 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  end component prime_design;
begin
prime_design_i: component prime_design
     port map (
      A3 => A3,
      A2 => A2,
      A1 => A1,
      A0 => A0,
      O => O
    );
end STRUCTURE;
