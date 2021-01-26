-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Jan  3 23:10:13 2021
-- Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_lab_8_xup_dff_en_reset_0_1 -prefix
--               design_lab_8_xup_dff_en_reset_0_1_ design_lab_8_xup_dff_en_reset_0_2_stub.vhdl
-- Design      : design_lab_8_xup_dff_en_reset_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_lab_8_xup_dff_en_reset_0_1 is
  Port ( 
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );

end design_lab_8_xup_dff_en_reset_0_1;

architecture stub of design_lab_8_xup_dff_en_reset_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d,clk,en,reset,q";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_dff_en_reset,Vivado 2019.2";
begin
end;
