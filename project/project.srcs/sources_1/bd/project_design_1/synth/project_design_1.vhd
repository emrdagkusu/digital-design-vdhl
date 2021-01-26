--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Jan  8 01:13:56 2021
--Host        : DESKTOP-R729N8N running 64-bit major release  (build 9200)
--Command     : generate_target project_design_1.bd
--Design      : project_design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_design_1 is
  port (
    AT0 : out STD_LOGIC;
    AT1 : out STD_LOGIC;
    AT2 : out STD_LOGIC;
    CMD : out STD_LOGIC;
    CMU : out STD_LOGIC;
    Clk : in STD_LOGIC;
    DRC : out STD_LOGIC;
    DRO : out STD_LOGIC;
    EN : in STD_LOGIC;
    FC0 : in STD_LOGIC;
    FC2 : in STD_LOGIC;
    FCD1 : in STD_LOGIC;
    FCU1 : in STD_LOGIC;
    GT0 : in STD_LOGIC;
    GT1 : in STD_LOGIC;
    GT2 : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Temp : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of project_design_1 : entity is "project_design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=project_design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=55,numReposBlks=55,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of project_design_1 : entity is "project_design_1.hwdef";
end project_design_1;

architecture STRUCTURE of project_design_1 is
  component project_design_1_xup_dff_en_reset_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_0;
  component project_design_1_xup_dff_en_reset_0_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_1;
  component project_design_1_xup_dff_en_reset_0_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_2;
  component project_design_1_xup_dff_en_reset_0_3 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_3;
  component project_design_1_xup_dff_en_reset_0_4 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_4;
  component project_design_1_xup_dff_en_reset_0_5 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_5;
  component project_design_1_xup_dff_en_reset_0_6 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_6;
  component project_design_1_xup_dff_en_reset_0_7 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_7;
  component project_design_1_xup_dff_en_reset_0_8 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_8;
  component project_design_1_xup_dff_en_reset_0_9 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_9;
  component project_design_1_xup_dff_en_reset_0_10 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_10;
  component project_design_1_xup_dff_en_reset_0_11 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_11;
  component project_design_1_xup_dff_en_reset_0_12 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_12;
  component project_design_1_xup_dff_en_reset_0_13 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_13;
  component project_design_1_xup_dff_en_reset_0_14 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_14;
  component project_design_1_xup_dff_en_reset_0_15 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component project_design_1_xup_dff_en_reset_0_15;
  component project_design_1_xup_or3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or3_0_0;
  component project_design_1_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or4_0_0;
  component project_design_1_xup_and3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and3_0_0;
  component project_design_1_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_0_0;
  component project_design_1_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_0_0;
  component project_design_1_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_1_0;
  component project_design_1_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_1_0;
  component project_design_1_xup_or2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_1_0;
  component project_design_1_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_2_0;
  component project_design_1_xup_or3_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or3_1_0;
  component project_design_1_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_3_0;
  component project_design_1_xup_or3_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or3_2_0;
  component project_design_1_xup_and2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_4_0;
  component project_design_1_xup_and2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_5_0;
  component project_design_1_xup_or2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_2_0;
  component project_design_1_xup_or2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_3_0;
  component project_design_1_xup_inv_2_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_2_0;
  component project_design_1_xup_inv_3_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_3_0;
  component project_design_1_xup_and5_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and5_0_0;
  component project_design_1_xup_or2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_4_0;
  component project_design_1_xup_inv_4_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_4_0;
  component project_design_1_xup_or2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_5_0;
  component project_design_1_xup_and2_6_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_6_0;
  component project_design_1_xup_or2_6_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_6_0;
  component project_design_1_xup_and4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and4_0_0;
  component project_design_1_xup_or4_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or4_1_0;
  component project_design_1_xup_inv_5_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_5_0;
  component project_design_1_xup_inv_6_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_6_0;
  component project_design_1_xup_or2_7_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_7_0;
  component project_design_1_xup_or2_8_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or2_8_0;
  component project_design_1_xup_or4_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or4_2_0;
  component project_design_1_xup_or4_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or4_3_0;
  component project_design_1_xup_or4_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or4_4_0;
  component project_design_1_xup_or3_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or3_3_0;
  component project_design_1_xup_or3_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_or3_4_0;
  component project_design_1_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_0_1;
  component project_design_1_xup_and2_8_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_8_0;
  component project_design_1_xup_and2_7_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_and2_7_1;
  component project_design_1_xup_inv_7_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component project_design_1_xup_inv_7_0;
  signal C1_q : STD_LOGIC;
  signal C2_q : STD_LOGIC;
  signal Clk_1 : STD_LOGIC;
  signal DC0_q : STD_LOGIC;
  signal DC1_q : STD_LOGIC;
  signal DC2_q : STD_LOGIC;
  signal DO0_q : STD_LOGIC;
  signal DO1_q : STD_LOGIC;
  signal DO2_q : STD_LOGIC;
  signal EN_1 : STD_LOGIC;
  signal F0U1_q : STD_LOGIC;
  signal F1D0_q : STD_LOGIC;
  signal F1U2_q : STD_LOGIC;
  signal F2D1_q : STD_LOGIC;
  signal FC0_1 : STD_LOGIC;
  signal FC2_1 : STD_LOGIC;
  signal FCD1_1 : STD_LOGIC;
  signal FCU1_1 : STD_LOGIC;
  signal GT0_1 : STD_LOGIC;
  signal GT1_1 : STD_LOGIC;
  signal GT2_1 : STD_LOGIC;
  signal IDLE_C0_q : STD_LOGIC;
  signal Reset_1 : STD_LOGIC;
  signal Temp_1 : STD_LOGIC;
  signal Wait0_q : STD_LOGIC;
  signal Wait1_q : STD_LOGIC;
  signal Wait2_q : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and2_6_y : STD_LOGIC;
  signal xup_and2_7_y : STD_LOGIC;
  signal xup_and2_8_y : STD_LOGIC;
  signal xup_and3_0_y : STD_LOGIC;
  signal xup_and4_0_y : STD_LOGIC;
  signal xup_and5_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_inv_2_y : STD_LOGIC;
  signal xup_inv_3_y : STD_LOGIC;
  signal xup_inv_4_y : STD_LOGIC;
  signal xup_inv_5_y : STD_LOGIC;
  signal xup_inv_6_y : STD_LOGIC;
  signal xup_inv_7_y : STD_LOGIC;
  signal xup_inv_8_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_or2_1_y : STD_LOGIC;
  signal xup_or2_2_y : STD_LOGIC;
  signal xup_or2_3_y : STD_LOGIC;
  signal xup_or2_4_y : STD_LOGIC;
  signal xup_or2_5_y : STD_LOGIC;
  signal xup_or2_6_y : STD_LOGIC;
  signal xup_or2_7_y : STD_LOGIC;
  signal xup_or2_8_y : STD_LOGIC;
  signal xup_or3_0_y : STD_LOGIC;
  signal xup_or3_1_y : STD_LOGIC;
  signal xup_or3_2_y : STD_LOGIC;
  signal xup_or3_3_y : STD_LOGIC;
  signal xup_or3_4_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
  signal xup_or4_1_y : STD_LOGIC;
  signal xup_or4_2_y : STD_LOGIC;
  signal xup_or4_3_y : STD_LOGIC;
  signal xup_or4_4_y : STD_LOGIC;
begin
  AT0 <= xup_or4_4_y;
  AT1 <= xup_or4_3_y;
  AT2 <= xup_or4_2_y;
  CMD <= xup_or2_7_y;
  CMU <= xup_or2_8_y;
  Clk_1 <= Clk;
  DRC <= xup_or3_3_y;
  DRO <= xup_or3_4_y;
  EN_1 <= EN;
  FC0_1 <= FC0;
  FC2_1 <= FC2;
  FCD1_1 <= FCD1;
  FCU1_1 <= FCU1;
  GT0_1 <= GT0;
  GT1_1 <= GT1;
  GT2_1 <= GT2;
  Reset_1 <= Reset;
  Temp_1 <= Temp;
C1: component project_design_1_xup_dff_en_reset_0_5
     port map (
      clk => Clk_1,
      d => xup_or3_1_y,
      en => EN_1,
      q => C1_q,
      reset => Reset_1
    );
C2: component project_design_1_xup_dff_en_reset_0_7
     port map (
      clk => Clk_1,
      d => xup_or2_5_y,
      en => EN_1,
      q => C2_q,
      reset => Reset_1
    );
DC0: component project_design_1_xup_dff_en_reset_0_10
     port map (
      clk => Clk_1,
      d => Wait0_q,
      en => EN_1,
      q => DC0_q,
      reset => Reset_1
    );
DC1: component project_design_1_xup_dff_en_reset_0_14
     port map (
      clk => Clk_1,
      d => Wait1_q,
      en => EN_1,
      q => DC1_q,
      reset => Reset_1
    );
DC2: component project_design_1_xup_dff_en_reset_0_1
     port map (
      clk => Clk_1,
      d => Wait2_q,
      en => EN_1,
      q => DC2_q,
      reset => Reset_1
    );
DO0: component project_design_1_xup_dff_en_reset_0_12
     port map (
      clk => Clk_1,
      d => xup_and2_0_y,
      en => EN_1,
      q => DO0_q,
      reset => Reset_1
    );
DO1: component project_design_1_xup_dff_en_reset_0_8
     port map (
      clk => Clk_1,
      d => xup_and2_3_y,
      en => EN_1,
      q => DO1_q,
      reset => Reset_1
    );
DO2: component project_design_1_xup_dff_en_reset_0_6
     port map (
      clk => Clk_1,
      d => xup_and2_6_y,
      en => EN_1,
      q => DO2_q,
      reset => Reset_1
    );
F0U1: component project_design_1_xup_dff_en_reset_0_3
     port map (
      clk => Clk_1,
      d => xup_and2_1_y,
      en => EN_1,
      q => F0U1_q,
      reset => Reset_1
    );
F1D0: component project_design_1_xup_dff_en_reset_0_2
     port map (
      clk => Clk_1,
      d => xup_and2_8_y,
      en => EN_1,
      q => F1D0_q,
      reset => Reset_1
    );
F1U2: component project_design_1_xup_dff_en_reset_0_4
     port map (
      clk => Clk_1,
      d => xup_and5_0_y,
      en => EN_1,
      q => F1U2_q,
      reset => Reset_1
    );
F2D1: component project_design_1_xup_dff_en_reset_0_13
     port map (
      clk => Clk_1,
      d => xup_and4_0_y,
      en => EN_1,
      q => F2D1_q,
      reset => Reset_1
    );
IDLE_C0: component project_design_1_xup_dff_en_reset_0_0
     port map (
      clk => Clk_1,
      d => xup_or3_0_y,
      en => EN_1,
      q => IDLE_C0_q,
      reset => Reset_1
    );
Wait0: component project_design_1_xup_dff_en_reset_0_11
     port map (
      clk => Clk_1,
      d => DO0_q,
      en => EN_1,
      q => Wait0_q,
      reset => Reset_1
    );
Wait1: component project_design_1_xup_dff_en_reset_0_9
     port map (
      clk => Clk_1,
      d => DO1_q,
      en => EN_1,
      q => Wait1_q,
      reset => Reset_1
    );
Wait2: component project_design_1_xup_dff_en_reset_0_15
     port map (
      clk => Clk_1,
      d => DO2_q,
      en => EN_1,
      q => Wait2_q,
      reset => Reset_1
    );
xup_and2_0: component project_design_1_xup_and2_0_0
     port map (
      a => IDLE_C0_q,
      b => xup_or2_0_y,
      y => xup_and2_0_y
    );
xup_and2_1: component project_design_1_xup_and2_1_0
     port map (
      a => IDLE_C0_q,
      b => xup_and3_0_y,
      y => xup_and2_1_y
    );
xup_and2_2: component project_design_1_xup_and2_2_0
     port map (
      a => C1_q,
      b => xup_or2_1_y,
      y => xup_and2_2_y
    );
xup_and2_3: component project_design_1_xup_and2_3_0
     port map (
      a => xup_or3_2_y,
      b => C1_q,
      y => xup_and2_3_y
    );
xup_and2_4: component project_design_1_xup_and2_4_0
     port map (
      a => xup_inv_2_y,
      b => FCU1_1,
      y => xup_and2_4_y
    );
xup_and2_5: component project_design_1_xup_and2_5_0
     port map (
      a => xup_inv_3_y,
      b => FCD1_1,
      y => xup_and2_5_y
    );
xup_and2_6: component project_design_1_xup_and2_6_0
     port map (
      a => xup_or2_6_y,
      b => C2_q,
      y => xup_and2_6_y
    );
xup_and2_7: component project_design_1_xup_and2_7_1
     port map (
      a => FC0_1,
      b => xup_inv_5_y,
      y => xup_and2_7_y
    );
xup_and2_8: component project_design_1_xup_and2_8_0
     port map (
      a => xup_and2_2_y,
      b => xup_inv_4_y,
      y => xup_and2_8_y
    );
xup_and3_0: component project_design_1_xup_and3_0_0
     port map (
      a => xup_inv_8_y,
      b => xup_inv_1_y,
      c => xup_or4_0_y,
      y => xup_and3_0_y
    );
xup_and4_0: component project_design_1_xup_and4_0_0
     port map (
      a => xup_or4_1_y,
      b => C2_q,
      c => xup_inv_6_y,
      d => xup_inv_5_y,
      y => xup_and4_0_y
    );
xup_and5_0: component project_design_1_xup_and5_0_0
     port map (
      a => xup_or2_4_y,
      b => xup_inv_1_y,
      c => xup_inv_7_y,
      d => xup_inv_4_y,
      e => C1_q,
      y => xup_and5_0_y
    );
xup_inv_1: component project_design_1_xup_inv_1_0
     port map (
      a => GT0_1,
      y => xup_inv_1_y
    );
xup_inv_2: component project_design_1_xup_inv_2_0
     port map (
      a => xup_or2_2_y,
      y => xup_inv_2_y
    );
xup_inv_3: component project_design_1_xup_inv_3_0
     port map (
      a => xup_or2_3_y,
      y => xup_inv_3_y
    );
xup_inv_4: component project_design_1_xup_inv_4_0
     port map (
      a => GT1_1,
      y => xup_inv_4_y
    );
xup_inv_5: component project_design_1_xup_inv_5_0
     port map (
      a => GT2_1,
      y => xup_inv_5_y
    );
xup_inv_6: component project_design_1_xup_inv_6_0
     port map (
      a => FC2_1,
      y => xup_inv_6_y
    );
xup_inv_7: component project_design_1_xup_inv_0_1
     port map (
      a => FCU1_1,
      y => xup_inv_7_y
    );
xup_inv_8: component project_design_1_xup_inv_7_0
     port map (
      a => FC0_1,
      y => xup_inv_8_y
    );
xup_or2_0: component project_design_1_xup_or2_0_0
     port map (
      a => GT0_1,
      b => FC0_1,
      y => xup_or2_0_y
    );
xup_or2_1: component project_design_1_xup_or2_1_0
     port map (
      a => GT0_1,
      b => xup_and2_7_y,
      y => xup_or2_1_y
    );
xup_or2_2: component project_design_1_xup_or2_2_0
     port map (
      a => FC0_1,
      b => GT0_1,
      y => xup_or2_2_y
    );
xup_or2_3: component project_design_1_xup_or2_3_0
     port map (
      a => FC2_1,
      b => GT2_1,
      y => xup_or2_3_y
    );
xup_or2_4: component project_design_1_xup_or2_4_0
     port map (
      a => FC2_1,
      b => GT2_1,
      y => xup_or2_4_y
    );
xup_or2_5: component project_design_1_xup_or2_5_0
     port map (
      a => DC2_q,
      b => F1U2_q,
      y => xup_or2_5_y
    );
xup_or2_6: component project_design_1_xup_or2_6_0
     port map (
      a => GT2_1,
      b => FC2_1,
      y => xup_or2_6_y
    );
xup_or2_7: component project_design_1_xup_or2_7_0
     port map (
      a => F2D1_q,
      b => F1D0_q,
      y => xup_or2_7_y
    );
xup_or2_8: component project_design_1_xup_or2_8_0
     port map (
      a => F1U2_q,
      b => F0U1_q,
      y => xup_or2_8_y
    );
xup_or3_0: component project_design_1_xup_or3_0_0
     port map (
      a => Temp_1,
      b => F1D0_q,
      c => DC0_q,
      y => xup_or3_0_y
    );
xup_or3_1: component project_design_1_xup_or3_1_0
     port map (
      a => DC1_q,
      b => F2D1_q,
      c => F0U1_q,
      y => xup_or3_1_y
    );
xup_or3_2: component project_design_1_xup_or3_2_0
     port map (
      a => GT1_1,
      b => xup_and2_4_y,
      c => xup_and2_5_y,
      y => xup_or3_2_y
    );
xup_or3_3: component project_design_1_xup_or3_3_0
     port map (
      a => DC2_q,
      b => DC1_q,
      c => DC0_q,
      y => xup_or3_3_y
    );
xup_or3_4: component project_design_1_xup_or3_4_0
     port map (
      a => DO2_q,
      b => DO1_q,
      c => DO0_q,
      y => xup_or3_4_y
    );
xup_or4_0: component project_design_1_xup_or4_0_0
     port map (
      a => GT1_1,
      b => GT2_1,
      c => FCU1_1,
      d => FC2_1,
      y => xup_or4_0_y
    );
xup_or4_1: component project_design_1_xup_or4_1_0
     port map (
      a => GT0_1,
      b => GT1_1,
      c => FCD1_1,
      d => FC0_1,
      y => xup_or4_1_y
    );
xup_or4_2: component project_design_1_xup_or4_2_0
     port map (
      a => C2_q,
      b => DO2_q,
      c => Wait2_q,
      d => DC2_q,
      y => xup_or4_2_y
    );
xup_or4_3: component project_design_1_xup_or4_3_0
     port map (
      a => C1_q,
      b => DO1_q,
      c => Wait1_q,
      d => DC1_q,
      y => xup_or4_3_y
    );
xup_or4_4: component project_design_1_xup_or4_4_0
     port map (
      a => IDLE_C0_q,
      b => DO0_q,
      c => Wait0_q,
      d => DC0_q,
      y => xup_or4_4_y
    );
end STRUCTURE;
