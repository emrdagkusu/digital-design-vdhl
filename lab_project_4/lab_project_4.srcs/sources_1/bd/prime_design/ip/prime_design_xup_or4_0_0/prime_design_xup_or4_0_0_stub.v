// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Nov  7 23:56:02 2020
// Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/E.D/AppData/Roaming/Xilinx/Vivado/lab_project_4/lab_project_4.srcs/sources_1/bd/prime_design/ip/prime_design_xup_or4_0_0/prime_design_xup_or4_0_0_stub.v
// Design      : prime_design_xup_or4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_or4,Vivado 2019.2" *)
module prime_design_xup_or4_0_0(a, b, c, d, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,c,d,y" */;
  input a;
  input b;
  input c;
  input d;
  output y;
endmodule
