--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat Nov  7 23:53:45 2020
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target prime_design.bd
--Design      : prime_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prime_design is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of prime_design : entity is "prime_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=prime_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of prime_design : entity is "prime_design.hwdef";
end prime_design;

architecture STRUCTURE of prime_design is
  component prime_design_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_and2_0_0;
  component prime_design_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_and2_1_0;
  component prime_design_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_and2_2_0;
  component prime_design_xup_and3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_and3_0_0;
  component prime_design_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_inv_0_0;
  component prime_design_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_inv_1_0;
  component prime_design_xup_inv_2_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_inv_2_0;
  component prime_design_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component prime_design_xup_or4_0_0;
  signal A0_1 : STD_LOGIC;
  signal A1_1 : STD_LOGIC;
  signal A2_1 : STD_LOGIC;
  signal A3_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and3_0_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_inv_2_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
begin
  A0_1 <= A0;
  A1_1 <= A1;
  A2_1 <= A2;
  A3_1 <= A3;
  O <= xup_or4_0_y;
xup_and2_0: component prime_design_xup_and2_0_0
     port map (
      a => A2_1,
      b => xup_inv_0_y,
      y => xup_and2_0_y
    );
xup_and2_1: component prime_design_xup_and2_1_0
     port map (
      a => xup_inv_1_y,
      b => xup_inv_2_y,
      y => xup_and2_1_y
    );
xup_and2_2: component prime_design_xup_and2_2_0
     port map (
      a => A3_1,
      b => xup_inv_0_y,
      y => xup_and2_2_y
    );
xup_and3_0: component prime_design_xup_and3_0_0
     port map (
      a => A3_1,
      b => A2_1,
      c => A1_1,
      y => xup_and3_0_y
    );
xup_inv_0: component prime_design_xup_inv_0_0
     port map (
      a => A0_1,
      y => xup_inv_0_y
    );
xup_inv_1: component prime_design_xup_inv_1_0
     port map (
      a => A2_1,
      y => xup_inv_1_y
    );
xup_inv_2: component prime_design_xup_inv_2_0
     port map (
      a => A1_1,
      y => xup_inv_2_y
    );
xup_or4_0: component prime_design_xup_or4_0_0
     port map (
      a => xup_and2_1_y,
      b => xup_and2_0_y,
      c => xup_and2_2_y,
      d => xup_and3_0_y,
      y => xup_or4_0_y
    );
end STRUCTURE;
