--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun Nov 15 12:43:09 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    X0 : in STD_LOGIC;
    X1 : in STD_LOGIC;
    X2 : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC;
    Y5 : out STD_LOGIC;
    Y6 : out STD_LOGIC;
    Y7 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_design_1_wrapper_0_0 is
  port (
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component design_2_design_1_wrapper_0_0;
  component design_2_design_1_wrapper_0_1 is
  port (
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component design_2_design_1_wrapper_0_1;
  component design_2_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_2_xup_inv_0_0;
  signal X0_1 : STD_LOGIC;
  signal X1_1 : STD_LOGIC;
  signal X2_1 : STD_LOGIC;
  signal design_1_wrapper_0_D0 : STD_LOGIC;
  signal design_1_wrapper_0_D1 : STD_LOGIC;
  signal design_1_wrapper_0_D2 : STD_LOGIC;
  signal design_1_wrapper_0_D3 : STD_LOGIC;
  signal design_1_wrapper_1_D0 : STD_LOGIC;
  signal design_1_wrapper_1_D1 : STD_LOGIC;
  signal design_1_wrapper_1_D2 : STD_LOGIC;
  signal design_1_wrapper_1_D3 : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
begin
  X0_1 <= X0;
  X1_1 <= X1;
  X2_1 <= X2;
  Y0 <= design_1_wrapper_0_D0;
  Y1 <= design_1_wrapper_0_D1;
  Y2 <= design_1_wrapper_0_D2;
  Y3 <= design_1_wrapper_0_D3;
  Y4 <= design_1_wrapper_1_D0;
  Y5 <= design_1_wrapper_1_D1;
  Y6 <= design_1_wrapper_1_D2;
  Y7 <= design_1_wrapper_1_D3;
design_1_wrapper_0: component design_2_design_1_wrapper_0_0
     port map (
      A1 => X2_1,
      A2 => X1_1,
      D0 => design_1_wrapper_0_D0,
      D1 => design_1_wrapper_0_D1,
      D2 => design_1_wrapper_0_D2,
      D3 => design_1_wrapper_0_D3,
      EN => xup_inv_0_y
    );
design_1_wrapper_1: component design_2_design_1_wrapper_0_1
     port map (
      A1 => X2_1,
      A2 => X1_1,
      D0 => design_1_wrapper_1_D0,
      D1 => design_1_wrapper_1_D1,
      D2 => design_1_wrapper_1_D2,
      D3 => design_1_wrapper_1_D3,
      EN => X0_1
    );
xup_inv_0: component design_2_xup_inv_0_0
     port map (
      a => X0_1,
      y => xup_inv_0_y
    );
end STRUCTURE;
