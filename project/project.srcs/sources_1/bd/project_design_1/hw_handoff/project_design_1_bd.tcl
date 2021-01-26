
################################################################
# This is a generated script based on design: project_design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source project_design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1157-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name project_design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set AT0 [ create_bd_port -dir O AT0 ]
  set AT1 [ create_bd_port -dir O AT1 ]
  set AT2 [ create_bd_port -dir O AT2 ]
  set CMD [ create_bd_port -dir O CMD ]
  set CMU [ create_bd_port -dir O CMU ]
  set Clk [ create_bd_port -dir I Clk ]
  set DRC [ create_bd_port -dir O DRC ]
  set DRO [ create_bd_port -dir O DRO ]
  set EN [ create_bd_port -dir I EN ]
  set FC0 [ create_bd_port -dir I FC0 ]
  set FC2 [ create_bd_port -dir I FC2 ]
  set FCD1 [ create_bd_port -dir I FCD1 ]
  set FCU1 [ create_bd_port -dir I FCU1 ]
  set GT0 [ create_bd_port -dir I GT0 ]
  set GT1 [ create_bd_port -dir I GT1 ]
  set GT2 [ create_bd_port -dir I GT2 ]
  set Reset [ create_bd_port -dir I Reset ]
  set Temp [ create_bd_port -dir I Temp ]

  # Create instance: C1, and set properties
  set C1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 C1 ]

  # Create instance: C2, and set properties
  set C2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 C2 ]

  # Create instance: DC0, and set properties
  set DC0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DC0 ]

  # Create instance: DC1, and set properties
  set DC1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DC1 ]

  # Create instance: DC2, and set properties
  set DC2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DC2 ]

  # Create instance: DO0, and set properties
  set DO0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DO0 ]

  # Create instance: DO1, and set properties
  set DO1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DO1 ]

  # Create instance: DO2, and set properties
  set DO2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DO2 ]

  # Create instance: F0U1, and set properties
  set F0U1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 F0U1 ]

  # Create instance: F1D0, and set properties
  set F1D0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 F1D0 ]

  # Create instance: F1U2, and set properties
  set F1U2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 F1U2 ]

  # Create instance: F2D1, and set properties
  set F2D1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 F2D1 ]

  # Create instance: IDLE_C0, and set properties
  set IDLE_C0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 IDLE_C0 ]

  # Create instance: Wait0, and set properties
  set Wait0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Wait0 ]

  # Create instance: Wait1, and set properties
  set Wait1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Wait1 ]

  # Create instance: Wait2, and set properties
  set Wait2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Wait2 ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and2_1, and set properties
  set xup_and2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_1 ]

  # Create instance: xup_and2_2, and set properties
  set xup_and2_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_2 ]

  # Create instance: xup_and2_3, and set properties
  set xup_and2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_3 ]

  # Create instance: xup_and2_4, and set properties
  set xup_and2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_4 ]

  # Create instance: xup_and2_5, and set properties
  set xup_and2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_5 ]

  # Create instance: xup_and2_6, and set properties
  set xup_and2_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_6 ]

  # Create instance: xup_and2_7, and set properties
  set xup_and2_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_7 ]

  # Create instance: xup_and2_8, and set properties
  set xup_and2_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_8 ]

  # Create instance: xup_and3_0, and set properties
  set xup_and3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_0 ]

  # Create instance: xup_and4_0, and set properties
  set xup_and4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and4:1.0 xup_and4_0 ]

  # Create instance: xup_and5_0, and set properties
  set xup_and5_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and5:1.0 xup_and5_0 ]

  # Create instance: xup_inv_1, and set properties
  set xup_inv_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_1 ]

  # Create instance: xup_inv_2, and set properties
  set xup_inv_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_2 ]

  # Create instance: xup_inv_3, and set properties
  set xup_inv_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_3 ]

  # Create instance: xup_inv_4, and set properties
  set xup_inv_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_4 ]

  # Create instance: xup_inv_5, and set properties
  set xup_inv_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_5 ]

  # Create instance: xup_inv_6, and set properties
  set xup_inv_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_6 ]

  # Create instance: xup_inv_7, and set properties
  set xup_inv_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_7 ]

  # Create instance: xup_inv_8, and set properties
  set xup_inv_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_8 ]

  # Create instance: xup_or2_0, and set properties
  set xup_or2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_0 ]

  # Create instance: xup_or2_1, and set properties
  set xup_or2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_1 ]

  # Create instance: xup_or2_2, and set properties
  set xup_or2_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_2 ]

  # Create instance: xup_or2_3, and set properties
  set xup_or2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_3 ]

  # Create instance: xup_or2_4, and set properties
  set xup_or2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_4 ]

  # Create instance: xup_or2_5, and set properties
  set xup_or2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_5 ]

  # Create instance: xup_or2_6, and set properties
  set xup_or2_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_6 ]

  # Create instance: xup_or2_7, and set properties
  set xup_or2_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_7 ]

  # Create instance: xup_or2_8, and set properties
  set xup_or2_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_8 ]

  # Create instance: xup_or3_0, and set properties
  set xup_or3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_0 ]

  # Create instance: xup_or3_1, and set properties
  set xup_or3_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_1 ]

  # Create instance: xup_or3_2, and set properties
  set xup_or3_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_2 ]

  # Create instance: xup_or3_3, and set properties
  set xup_or3_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_3 ]

  # Create instance: xup_or3_4, and set properties
  set xup_or3_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_4 ]

  # Create instance: xup_or4_0, and set properties
  set xup_or4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_0 ]

  # Create instance: xup_or4_1, and set properties
  set xup_or4_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_1 ]

  # Create instance: xup_or4_2, and set properties
  set xup_or4_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_2 ]

  # Create instance: xup_or4_3, and set properties
  set xup_or4_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_3 ]

  # Create instance: xup_or4_4, and set properties
  set xup_or4_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_4 ]

  # Create port connections
  connect_bd_net -net C1_q [get_bd_pins C1/q] [get_bd_pins xup_and2_2/a] [get_bd_pins xup_and2_3/b] [get_bd_pins xup_and5_0/e] [get_bd_pins xup_or4_3/a]
  connect_bd_net -net C2_q [get_bd_pins C2/q] [get_bd_pins xup_and2_6/b] [get_bd_pins xup_and4_0/b] [get_bd_pins xup_or4_2/a]
  connect_bd_net -net Clk_1 [get_bd_ports Clk] [get_bd_pins C1/clk] [get_bd_pins C2/clk] [get_bd_pins DC0/clk] [get_bd_pins DC1/clk] [get_bd_pins DC2/clk] [get_bd_pins DO0/clk] [get_bd_pins DO1/clk] [get_bd_pins DO2/clk] [get_bd_pins F0U1/clk] [get_bd_pins F1D0/clk] [get_bd_pins F1U2/clk] [get_bd_pins F2D1/clk] [get_bd_pins IDLE_C0/clk] [get_bd_pins Wait0/clk] [get_bd_pins Wait1/clk] [get_bd_pins Wait2/clk]
  connect_bd_net -net DC0_q [get_bd_pins DC0/q] [get_bd_pins xup_or3_0/c] [get_bd_pins xup_or3_3/c] [get_bd_pins xup_or4_4/d]
  connect_bd_net -net DC1_q [get_bd_pins DC1/q] [get_bd_pins xup_or3_1/a] [get_bd_pins xup_or3_3/b] [get_bd_pins xup_or4_3/d]
  connect_bd_net -net DC2_q [get_bd_pins DC2/q] [get_bd_pins xup_or2_5/a] [get_bd_pins xup_or3_3/a] [get_bd_pins xup_or4_2/d]
  connect_bd_net -net DO0_q [get_bd_pins DO0/q] [get_bd_pins Wait0/d] [get_bd_pins xup_or3_4/c] [get_bd_pins xup_or4_4/b]
  connect_bd_net -net DO1_q [get_bd_pins DO1/q] [get_bd_pins Wait1/d] [get_bd_pins xup_or3_4/b] [get_bd_pins xup_or4_3/b]
  connect_bd_net -net DO2_q [get_bd_pins DO2/q] [get_bd_pins Wait2/d] [get_bd_pins xup_or3_4/a] [get_bd_pins xup_or4_2/b]
  connect_bd_net -net EN_1 [get_bd_ports EN] [get_bd_pins C1/en] [get_bd_pins C2/en] [get_bd_pins DC0/en] [get_bd_pins DC1/en] [get_bd_pins DC2/en] [get_bd_pins DO0/en] [get_bd_pins DO1/en] [get_bd_pins DO2/en] [get_bd_pins F0U1/en] [get_bd_pins F1D0/en] [get_bd_pins F1U2/en] [get_bd_pins F2D1/en] [get_bd_pins IDLE_C0/en] [get_bd_pins Wait0/en] [get_bd_pins Wait1/en] [get_bd_pins Wait2/en]
  connect_bd_net -net F0U1_q [get_bd_pins F0U1/q] [get_bd_pins xup_or2_8/b] [get_bd_pins xup_or3_1/c]
  connect_bd_net -net F1D0_q [get_bd_pins F1D0/q] [get_bd_pins xup_or2_7/b] [get_bd_pins xup_or3_0/b]
  connect_bd_net -net F1U2_q [get_bd_pins F1U2/q] [get_bd_pins xup_or2_5/b] [get_bd_pins xup_or2_8/a]
  connect_bd_net -net F2D1_q [get_bd_pins F2D1/q] [get_bd_pins xup_or2_7/a] [get_bd_pins xup_or3_1/b]
  connect_bd_net -net FC0_1 [get_bd_ports FC0] [get_bd_pins xup_and2_7/a] [get_bd_pins xup_inv_8/a] [get_bd_pins xup_or2_0/b] [get_bd_pins xup_or2_2/a] [get_bd_pins xup_or4_1/d]
  connect_bd_net -net FC2_1 [get_bd_ports FC2] [get_bd_pins xup_inv_6/a] [get_bd_pins xup_or2_3/a] [get_bd_pins xup_or2_4/a] [get_bd_pins xup_or2_6/b] [get_bd_pins xup_or4_0/d]
  connect_bd_net -net FCD1_1 [get_bd_ports FCD1] [get_bd_pins xup_and2_5/b] [get_bd_pins xup_or4_1/c]
  connect_bd_net -net FCU1_1 [get_bd_ports FCU1] [get_bd_pins xup_and2_4/b] [get_bd_pins xup_inv_7/a] [get_bd_pins xup_or4_0/c]
  connect_bd_net -net GT0_1 [get_bd_ports GT0] [get_bd_pins xup_inv_1/a] [get_bd_pins xup_or2_0/a] [get_bd_pins xup_or2_1/a] [get_bd_pins xup_or2_2/b] [get_bd_pins xup_or4_1/a]
  connect_bd_net -net GT1_1 [get_bd_ports GT1] [get_bd_pins xup_inv_4/a] [get_bd_pins xup_or3_2/a] [get_bd_pins xup_or4_0/a] [get_bd_pins xup_or4_1/b]
  connect_bd_net -net GT2_1 [get_bd_ports GT2] [get_bd_pins xup_inv_5/a] [get_bd_pins xup_or2_3/b] [get_bd_pins xup_or2_4/b] [get_bd_pins xup_or2_6/a] [get_bd_pins xup_or4_0/b]
  connect_bd_net -net IDLE_C0_q [get_bd_pins IDLE_C0/q] [get_bd_pins xup_and2_0/a] [get_bd_pins xup_and2_1/a] [get_bd_pins xup_or4_4/a]
  connect_bd_net -net Reset_1 [get_bd_ports Reset] [get_bd_pins C1/reset] [get_bd_pins C2/reset] [get_bd_pins DC0/reset] [get_bd_pins DC1/reset] [get_bd_pins DC2/reset] [get_bd_pins DO0/reset] [get_bd_pins DO1/reset] [get_bd_pins DO2/reset] [get_bd_pins F0U1/reset] [get_bd_pins F1D0/reset] [get_bd_pins F1U2/reset] [get_bd_pins F2D1/reset] [get_bd_pins IDLE_C0/reset] [get_bd_pins Wait0/reset] [get_bd_pins Wait1/reset] [get_bd_pins Wait2/reset]
  connect_bd_net -net Temp_1 [get_bd_ports Temp] [get_bd_pins xup_or3_0/a]
  connect_bd_net -net Wait0_q [get_bd_pins DC0/d] [get_bd_pins Wait0/q] [get_bd_pins xup_or4_4/c]
  connect_bd_net -net Wait1_q [get_bd_pins DC1/d] [get_bd_pins Wait1/q] [get_bd_pins xup_or4_3/c]
  connect_bd_net -net Wait2_q [get_bd_pins DC2/d] [get_bd_pins Wait2/q] [get_bd_pins xup_or4_2/c]
  connect_bd_net -net xup_and2_0_y [get_bd_pins DO0/d] [get_bd_pins xup_and2_0/y]
  connect_bd_net -net xup_and2_1_y [get_bd_pins F0U1/d] [get_bd_pins xup_and2_1/y]
  connect_bd_net -net xup_and2_2_y [get_bd_pins xup_and2_2/y] [get_bd_pins xup_and2_8/a]
  connect_bd_net -net xup_and2_3_y [get_bd_pins DO1/d] [get_bd_pins xup_and2_3/y]
  connect_bd_net -net xup_and2_4_y [get_bd_pins xup_and2_4/y] [get_bd_pins xup_or3_2/b]
  connect_bd_net -net xup_and2_5_y [get_bd_pins xup_and2_5/y] [get_bd_pins xup_or3_2/c]
  connect_bd_net -net xup_and2_6_y [get_bd_pins DO2/d] [get_bd_pins xup_and2_6/y]
  connect_bd_net -net xup_and2_7_y [get_bd_pins xup_and2_7/y] [get_bd_pins xup_or2_1/b]
  connect_bd_net -net xup_and2_8_y [get_bd_pins F1D0/d] [get_bd_pins xup_and2_8/y]
  connect_bd_net -net xup_and3_0_y [get_bd_pins xup_and2_1/b] [get_bd_pins xup_and3_0/y]
  connect_bd_net -net xup_and4_0_y [get_bd_pins F2D1/d] [get_bd_pins xup_and4_0/y]
  connect_bd_net -net xup_and5_0_y [get_bd_pins F1U2/d] [get_bd_pins xup_and5_0/y]
  connect_bd_net -net xup_inv_1_y [get_bd_pins xup_and3_0/b] [get_bd_pins xup_and5_0/b] [get_bd_pins xup_inv_1/y]
  connect_bd_net -net xup_inv_2_y [get_bd_pins xup_and2_4/a] [get_bd_pins xup_inv_2/y]
  connect_bd_net -net xup_inv_3_y [get_bd_pins xup_and2_5/a] [get_bd_pins xup_inv_3/y]
  connect_bd_net -net xup_inv_4_y [get_bd_pins xup_and2_8/b] [get_bd_pins xup_and5_0/d] [get_bd_pins xup_inv_4/y]
  connect_bd_net -net xup_inv_5_y [get_bd_pins xup_and2_7/b] [get_bd_pins xup_and4_0/d] [get_bd_pins xup_inv_5/y]
  connect_bd_net -net xup_inv_6_y [get_bd_pins xup_and4_0/c] [get_bd_pins xup_inv_6/y]
  connect_bd_net -net xup_inv_7_y [get_bd_pins xup_and5_0/c] [get_bd_pins xup_inv_7/y]
  connect_bd_net -net xup_inv_8_y [get_bd_pins xup_and3_0/a] [get_bd_pins xup_inv_8/y]
  connect_bd_net -net xup_or2_0_y [get_bd_pins xup_and2_0/b] [get_bd_pins xup_or2_0/y]
  connect_bd_net -net xup_or2_1_y [get_bd_pins xup_and2_2/b] [get_bd_pins xup_or2_1/y]
  connect_bd_net -net xup_or2_2_y [get_bd_pins xup_inv_2/a] [get_bd_pins xup_or2_2/y]
  connect_bd_net -net xup_or2_3_y [get_bd_pins xup_inv_3/a] [get_bd_pins xup_or2_3/y]
  connect_bd_net -net xup_or2_4_y [get_bd_pins xup_and5_0/a] [get_bd_pins xup_or2_4/y]
  connect_bd_net -net xup_or2_5_y [get_bd_pins C2/d] [get_bd_pins xup_or2_5/y]
  connect_bd_net -net xup_or2_6_y [get_bd_pins xup_and2_6/a] [get_bd_pins xup_or2_6/y]
  connect_bd_net -net xup_or2_7_y [get_bd_ports CMD] [get_bd_pins xup_or2_7/y]
  connect_bd_net -net xup_or2_8_y [get_bd_ports CMU] [get_bd_pins xup_or2_8/y]
  connect_bd_net -net xup_or3_0_y [get_bd_pins IDLE_C0/d] [get_bd_pins xup_or3_0/y]
  connect_bd_net -net xup_or3_1_y [get_bd_pins C1/d] [get_bd_pins xup_or3_1/y]
  connect_bd_net -net xup_or3_2_y [get_bd_pins xup_and2_3/a] [get_bd_pins xup_or3_2/y]
  connect_bd_net -net xup_or3_3_y [get_bd_ports DRC] [get_bd_pins xup_or3_3/y]
  connect_bd_net -net xup_or3_4_y [get_bd_ports DRO] [get_bd_pins xup_or3_4/y]
  connect_bd_net -net xup_or4_0_y [get_bd_pins xup_and3_0/c] [get_bd_pins xup_or4_0/y]
  connect_bd_net -net xup_or4_1_y [get_bd_pins xup_and4_0/a] [get_bd_pins xup_or4_1/y]
  connect_bd_net -net xup_or4_2_y [get_bd_ports AT2] [get_bd_pins xup_or4_2/y]
  connect_bd_net -net xup_or4_3_y [get_bd_ports AT1] [get_bd_pins xup_or4_3/y]
  connect_bd_net -net xup_or4_4_y [get_bd_ports AT0] [get_bd_pins xup_or4_4/y]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


