// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jan  3 23:10:14 2021
// Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/E.D/lab_project_8/lab_project_8.srcs/sources_1/bd/design_lab_8/ip/design_lab_8_xup_dff_en_reset_0_2/design_lab_8_xup_dff_en_reset_0_2_stub.v
// Design      : design_lab_8_xup_dff_en_reset_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_dff_en_reset,Vivado 2019.2" *)
module design_lab_8_xup_dff_en_reset_0_2(d, clk, en, reset, q)
/* synthesis syn_black_box black_box_pad_pin="d,clk,en,reset,q" */;
  input d;
  input clk;
  input en;
  input reset;
  output q;
endmodule