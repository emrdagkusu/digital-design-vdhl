--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun Nov 15 11:43:14 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_0;
  component design_1_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_1;
  component design_1_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_0;
  component design_1_xup_and2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_1;
  component design_1_xup_and2_0_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_2;
  component design_1_xup_and2_0_3 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_3;
  component design_1_xup_and2_0_4 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_4;
  component design_1_xup_and2_0_5 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_5;
  component design_1_xup_and2_0_6 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_6;
  component design_1_xup_and2_0_7 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_7;
  signal A1_1 : STD_LOGIC;
  signal A2_1 : STD_LOGIC;
  signal EN_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and2_6_y : STD_LOGIC;
  signal xup_and2_7_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
begin
  A1_1 <= A1;
  A2_1 <= A2;
  D0 <= xup_and2_0_y;
  D1 <= xup_and2_1_y;
  D2 <= xup_and2_2_y;
  D3 <= xup_and2_3_y;
  EN_1 <= EN;
xup_and2_0: component design_1_xup_and2_0_0
     port map (
      a => EN_1,
      b => xup_and2_5_y,
      y => xup_and2_0_y
    );
xup_and2_1: component design_1_xup_and2_0_1
     port map (
      a => EN_1,
      b => xup_and2_6_y,
      y => xup_and2_1_y
    );
xup_and2_2: component design_1_xup_and2_0_2
     port map (
      a => EN_1,
      b => xup_and2_7_y,
      y => xup_and2_2_y
    );
xup_and2_3: component design_1_xup_and2_0_3
     port map (
      a => EN_1,
      b => xup_and2_4_y,
      y => xup_and2_3_y
    );
xup_and2_4: component design_1_xup_and2_0_4
     port map (
      a => A2_1,
      b => A1_1,
      y => xup_and2_4_y
    );
xup_and2_5: component design_1_xup_and2_0_5
     port map (
      a => xup_inv_0_y,
      b => xup_inv_1_y,
      y => xup_and2_5_y
    );
xup_and2_6: component design_1_xup_and2_0_6
     port map (
      a => xup_inv_0_y,
      b => A1_1,
      y => xup_and2_6_y
    );
xup_and2_7: component design_1_xup_and2_0_7
     port map (
      a => A2_1,
      b => xup_inv_1_y,
      y => xup_and2_7_y
    );
xup_inv_0: component design_1_xup_inv_0_0
     port map (
      a => A2_1,
      y => xup_inv_0_y
    );
xup_inv_1: component design_1_xup_inv_0_1
     port map (
      a => A1_1,
      y => xup_inv_1_y
    );
end STRUCTURE;
