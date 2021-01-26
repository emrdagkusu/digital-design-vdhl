-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jan  3 23:10:13 2021
-- Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_lab_8_xup_and2_0_0 -prefix
--               design_lab_8_xup_and2_0_0_ design_lab_8_xup_and2_0_1_sim_netlist.vhdl
-- Design      : design_lab_8_xup_and2_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab_8_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_lab_8_xup_and2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_lab_8_xup_and2_0_0 : entity is "design_lab_8_xup_and2_0_1,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_lab_8_xup_and2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_lab_8_xup_and2_0_0 : entity is "xup_and2,Vivado 2019.2";
end design_lab_8_xup_and2_0_0;

architecture STRUCTURE of design_lab_8_xup_and2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
