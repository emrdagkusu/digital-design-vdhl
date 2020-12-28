// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Nov 15 12:44:55 2020
// Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_2_design_1_wrapper_0_1 -prefix
//               design_2_design_1_wrapper_0_1_ design_2_design_1_wrapper_0_0_sim_netlist.v
// Design      : design_2_design_1_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_design_1_wrapper_0_1_design_1
   (D0,
    D1,
    D2,
    D3,
    EN,
    A2,
    A1);
  output D0;
  output D1;
  output D2;
  output D3;
  input EN;
  input A2;
  input A1;

  wire A1;
  wire A2;
  wire D0;
  wire D1;
  wire D2;
  wire D3;
  wire EN;
  wire xup_and2_4_y;
  wire xup_and2_5_y;
  wire xup_and2_6_y;
  wire xup_and2_7_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;

  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_0,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_0 xup_and2_0
       (.a(EN),
        .b(xup_and2_5_y),
        .y(D0));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_1,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_1 xup_and2_1
       (.a(EN),
        .b(xup_and2_6_y),
        .y(D1));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_2,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_2 xup_and2_2
       (.a(EN),
        .b(xup_and2_7_y),
        .y(D2));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_3,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_3 xup_and2_3
       (.a(EN),
        .b(xup_and2_4_y),
        .y(D3));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_4,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_4 xup_and2_4
       (.a(A2),
        .b(A1),
        .y(xup_and2_4_y));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_5,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_5 xup_and2_5
       (.a(xup_inv_0_y),
        .b(xup_inv_1_y),
        .y(xup_and2_5_y));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_6,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_6 xup_and2_6
       (.a(xup_inv_0_y),
        .b(A1),
        .y(xup_and2_6_y));
  (* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_7,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_and2_0_7 xup_and2_7
       (.a(A2),
        .b(xup_inv_1_y),
        .y(xup_and2_7_y));
  (* CHECK_LICENSE_TYPE = "design_1_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_inv_0_0 xup_inv_0
       (.a(A2),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "design_1_xup_inv_0_1,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2019.2" *) 
  design_2_design_1_wrapper_0_1_design_1_xup_inv_0_1 xup_inv_1
       (.a(A1),
        .y(xup_inv_1_y));
endmodule

module design_2_design_1_wrapper_0_1_design_1_wrapper
   (D0,
    D1,
    D2,
    D3,
    EN,
    A2,
    A1);
  output D0;
  output D1;
  output D2;
  output D3;
  input EN;
  input A2;
  input A1;

  wire A1;
  wire A2;
  wire D0;
  wire D1;
  wire D2;
  wire D3;
  wire EN;

  design_2_design_1_wrapper_0_1_design_1 design_1_i
       (.A1(A1),
        .A2(A2),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .EN(EN));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_0,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_1,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_1
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_2,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_2
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_3,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_3
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_4,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_5,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_6,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_and2_0_7,xup_and2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_and2,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_and2_0_7
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_inv_0_0,xup_inv,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_inv,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_inv_0_0
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_xup_inv_0_1,xup_inv,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xup_inv,Vivado 2019.2" *) 
module design_2_design_1_wrapper_0_1_design_1_xup_inv_0_1
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_design_1_wrapper_0_0,design_1_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "design_1_wrapper,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_2_design_1_wrapper_0_1
   (A1,
    A2,
    D0,
    D1,
    D2,
    D3,
    EN);
  input A1;
  input A2;
  output D0;
  output D1;
  output D2;
  output D3;
  input EN;

  wire A1;
  wire A2;
  wire D0;
  wire D1;
  wire D2;
  wire D3;
  wire EN;

  design_2_design_1_wrapper_0_1_design_1_wrapper U0
       (.A1(A1),
        .A2(A2),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .EN(EN));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
