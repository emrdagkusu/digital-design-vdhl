// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Jan  3 23:10:14 2021
// Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/E.D/lab_project_8/lab_project_8.srcs/sources_1/bd/design_lab_8/ip/design_lab_8_xup_dff_en_reset_0_2/design_lab_8_xup_dff_en_reset_0_2_sim_netlist.v
// Design      : design_lab_8_xup_dff_en_reset_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_lab_8_xup_dff_en_reset_0_2,xup_dff_en_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_dff_en_reset,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_lab_8_xup_dff_en_reset_0_2
   (d,
    clk,
    en,
    reset,
    q);
  input d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output q;

  wire clk;
  wire d;
  wire en;
  wire q;
  wire reset;

  design_lab_8_xup_dff_en_reset_0_2_xup_dff_en_reset inst
       (.clk(clk),
        .d(d),
        .en(en),
        .q(q),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "xup_dff_en_reset" *) 
module design_lab_8_xup_dff_en_reset_0_2_xup_dff_en_reset
   (q,
    clk,
    en,
    d,
    reset);
  output q;
  input clk;
  input en;
  input d;
  input reset;

  wire clk;
  wire d;
  wire en;
  wire q;
  wire q_i_1_n_0;
  wire reset;

  LUT4 #(
    .INIT(16'h00E2)) 
    q_i_1
       (.I0(q),
        .I1(en),
        .I2(d),
        .I3(reset),
        .O(q_i_1_n_0));
  FDRE q_reg
       (.C(clk),
        .CE(1'b1),
        .D(q_i_1_n_0),
        .Q(q),
        .R(1'b0));
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
