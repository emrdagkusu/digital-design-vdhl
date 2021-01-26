-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jan  3 23:13:16 2021
-- Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/E.D/lab_project_8/lab_project_8.srcs/sources_1/bd/design_lab_8/ip/design_lab_8_xup_and4_0_0/design_lab_8_xup_and4_0_0_sim_netlist.vhdl
-- Design      : design_lab_8_xup_and4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab_8_xup_and4_0_0_xup_and4 is
  port (
    y : out STD_LOGIC;
    d : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_lab_8_xup_and4_0_0_xup_and4 : entity is "xup_and4";
end design_lab_8_xup_and4_0_0_xup_and4;

architecture STRUCTURE of design_lab_8_xup_and4_0_0_xup_and4 is
begin
\y__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => d,
      I1 => a,
      I2 => b,
      I3 => c,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab_8_xup_and4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_lab_8_xup_and4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_lab_8_xup_and4_0_0 : entity is "design_lab_8_xup_and4_0_0,xup_and4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_lab_8_xup_and4_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_lab_8_xup_and4_0_0 : entity is "xup_and4,Vivado 2019.2";
end design_lab_8_xup_and4_0_0;

architecture STRUCTURE of design_lab_8_xup_and4_0_0 is
begin
inst: entity work.design_lab_8_xup_and4_0_0_xup_and4
     port map (
      a => a,
      b => b,
      c => c,
      d => d,
      y => y
    );
end STRUCTURE;
