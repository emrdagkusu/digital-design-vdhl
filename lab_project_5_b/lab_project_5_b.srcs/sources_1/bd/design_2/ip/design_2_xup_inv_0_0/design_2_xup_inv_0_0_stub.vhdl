-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Nov 15 12:44:52 2020
-- Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/E.D/AppData/Roaming/Xilinx/Vivado/lab_project_5_b/lab_project_5_b.srcs/sources_1/bd/design_2/ip/design_2_xup_inv_0_0/design_2_xup_inv_0_0_stub.vhdl
-- Design      : design_2_xup_inv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_xup_inv_0_0 is
  Port ( 
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );

end design_2_xup_inv_0_0;

architecture stub of design_2_xup_inv_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_inv,Vivado 2019.2";
begin
end;
