--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Nov 21 14:42:17 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_6_1.bd
--Design      : design_6_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_6_1 is
  port (
    A0 : out STD_LOGIC;
    A1 : out STD_LOGIC;
    D0 : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    D3 : in STD_LOGIC;
    V : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_6_1 : entity is "design_6_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_6_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_6_1 : entity is "design_6_1.hwdef";
end design_6_1;

architecture STRUCTURE of design_6_1 is
  component design_6_1_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_6_1_xup_or2_0_0;
  component design_6_1_xup_or2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_6_1_xup_or2_0_1;
  component design_6_1_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_6_1_xup_or4_0_0;
  component design_6_1_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_6_1_xup_and2_0_0;
  component design_6_1_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_6_1_xup_inv_0_0;
  signal D0_1 : STD_LOGIC;
  signal D1_1 : STD_LOGIC;
  signal D2_1 : STD_LOGIC;
  signal D3_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_or2_1_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
begin
  A0 <= xup_or2_0_y;
  A1 <= xup_or2_1_y;
  D0_1 <= D0;
  D1_1 <= D1;
  D2_1 <= D2;
  D3_1 <= D3;
  V <= xup_or4_0_y;
xup_and2_0: component design_6_1_xup_and2_0_0
     port map (
      a => xup_inv_0_y,
      b => D1_1,
      y => xup_and2_0_y
    );
xup_inv_0: component design_6_1_xup_inv_0_0
     port map (
      a => D2_1,
      y => xup_inv_0_y
    );
xup_or2_0: component design_6_1_xup_or2_0_0
     port map (
      a => D3_1,
      b => xup_and2_0_y,
      y => xup_or2_0_y
    );
xup_or2_1: component design_6_1_xup_or2_0_1
     port map (
      a => D3_1,
      b => D2_1,
      y => xup_or2_1_y
    );
xup_or4_0: component design_6_1_xup_or4_0_0
     port map (
      a => D3_1,
      b => D2_1,
      c => D1_1,
      d => D0_1,
      y => xup_or4_0_y
    );
end STRUCTURE;
