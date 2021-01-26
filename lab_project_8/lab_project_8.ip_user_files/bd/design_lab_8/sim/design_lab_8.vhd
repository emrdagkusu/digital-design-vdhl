--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun Jan  3 23:07:36 2021
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target design_lab_8.bd
--Design      : design_lab_8
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab_8 is
  port (
    I : in STD_LOGIC;
    Z : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_lab_8 : entity is "design_lab_8,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_lab_8,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_lab_8 : entity is "design_lab_8.hwdef";
end design_lab_8;

architecture STRUCTURE of design_lab_8 is
  component design_lab_8_xup_dff_en_reset_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_lab_8_xup_dff_en_reset_0_0;
  component design_lab_8_xup_dff_en_reset_0_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_lab_8_xup_dff_en_reset_0_1;
  component design_lab_8_xup_dff_en_reset_0_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_lab_8_xup_dff_en_reset_0_2;
  component design_lab_8_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_inv_0_0;
  component design_lab_8_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_inv_0_1;
  component design_lab_8_xup_inv_0_2 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_inv_0_2;
  component design_lab_8_xup_inv_0_3 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_inv_0_3;
  component design_lab_8_xup_and4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and4_0_0;
  component design_lab_8_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_0_0;
  component design_lab_8_xup_and2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_0_1;
  component design_lab_8_xup_or3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_or3_0_0;
  component design_lab_8_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_1_0;
  component design_lab_8_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_3_0;
  component design_lab_8_xup_and2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_4_0;
  component design_lab_8_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_or4_0_0;
  component design_lab_8_xup_and2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_lab_8_xup_and2_5_0;
  signal DA_q : STD_LOGIC;
  signal DB_q : STD_LOGIC;
  signal DC_q : STD_LOGIC;
  signal I_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and4_0_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_inv_2_y : STD_LOGIC;
  signal xup_inv_3_y : STD_LOGIC;
  signal xup_or3_0_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
begin
  I_1 <= I;
  Z <= xup_and2_5_y;
  clk_1 <= clk;
  en_1 <= en;
  reset_1 <= reset;
DA: component design_lab_8_xup_dff_en_reset_0_0
     port map (
      clk => clk_1,
      d => xup_and4_0_y,
      en => en_1,
      q => DA_q,
      reset => reset_1
    );
DB: component design_lab_8_xup_dff_en_reset_0_1
     port map (
      clk => clk_1,
      d => xup_or3_0_y,
      en => en_1,
      q => DB_q,
      reset => reset_1
    );
DC: component design_lab_8_xup_dff_en_reset_0_2
     port map (
      clk => clk_1,
      d => xup_or4_0_y,
      en => en_1,
      q => DC_q,
      reset => reset_1
    );
xup_and2_0: component design_lab_8_xup_and2_0_0
     port map (
      a => DA_q,
      b => xup_inv_3_y,
      y => xup_and2_0_y
    );
xup_and2_1: component design_lab_8_xup_and2_0_1
     port map (
      a => DC_q,
      b => xup_inv_3_y,
      y => xup_and2_1_y
    );
xup_and2_2: component design_lab_8_xup_and2_1_0
     port map (
      a => xup_inv_0_y,
      b => I_1,
      y => xup_and2_2_y
    );
xup_and2_3: component design_lab_8_xup_and2_3_0
     port map (
      a => xup_inv_0_y,
      b => DC_q,
      y => xup_and2_3_y
    );
xup_and2_4: component design_lab_8_xup_and2_4_0
     port map (
      a => DC_q,
      b => I_1,
      y => xup_and2_4_y
    );
xup_and2_5: component design_lab_8_xup_and2_5_0
     port map (
      a => DA_q,
      b => I_1,
      y => xup_and2_5_y
    );
xup_and4_0: component design_lab_8_xup_and4_0_0
     port map (
      a => xup_inv_2_y,
      b => DB_q,
      c => xup_inv_1_y,
      d => I_1,
      y => xup_and4_0_y
    );
xup_inv_0: component design_lab_8_xup_inv_0_0
     port map (
      a => DB_q,
      y => xup_inv_0_y
    );
xup_inv_1: component design_lab_8_xup_inv_0_1
     port map (
      a => DC_q,
      y => xup_inv_1_y
    );
xup_inv_2: component design_lab_8_xup_inv_0_2
     port map (
      a => DA_q,
      y => xup_inv_2_y
    );
xup_inv_3: component design_lab_8_xup_inv_0_3
     port map (
      a => I_1,
      y => xup_inv_3_y
    );
xup_or3_0: component design_lab_8_xup_or3_0_0
     port map (
      a => xup_and4_0_y,
      b => xup_and2_0_y,
      c => xup_and2_1_y,
      y => xup_or3_0_y
    );
xup_or4_0: component design_lab_8_xup_or4_0_0
     port map (
      a => DA_q,
      b => xup_and2_2_y,
      c => xup_and2_3_y,
      d => xup_and2_4_y,
      y => xup_or4_0_y
    );
end STRUCTURE;
