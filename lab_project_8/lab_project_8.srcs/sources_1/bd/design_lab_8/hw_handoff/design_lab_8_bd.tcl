
################################################################
# This is a generated script based on design: design_lab_8
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
# source design_lab_8_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1157-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_lab_8

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
  set I [ create_bd_port -dir I I ]
  set Z [ create_bd_port -dir O Z ]
  set clk [ create_bd_port -dir I clk ]
  set en [ create_bd_port -dir I en ]
  set reset [ create_bd_port -dir I reset ]

  # Create instance: DA, and set properties
  set DA [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DA ]

  # Create instance: DB, and set properties
  set DB [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DB ]

  # Create instance: DC, and set properties
  set DC [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 DC ]

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

  # Create instance: xup_and4_0, and set properties
  set xup_and4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and4:1.0 xup_and4_0 ]

  # Create instance: xup_inv_0, and set properties
  set xup_inv_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_0 ]

  # Create instance: xup_inv_1, and set properties
  set xup_inv_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_1 ]

  # Create instance: xup_inv_2, and set properties
  set xup_inv_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_2 ]

  # Create instance: xup_inv_3, and set properties
  set xup_inv_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 xup_inv_3 ]

  # Create instance: xup_or3_0, and set properties
  set xup_or3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_0 ]

  # Create instance: xup_or4_0, and set properties
  set xup_or4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_0 ]

  # Create port connections
  connect_bd_net -net DA_q [get_bd_pins DA/q] [get_bd_pins xup_and2_0/a] [get_bd_pins xup_and2_5/a] [get_bd_pins xup_inv_2/a] [get_bd_pins xup_or4_0/a]
  connect_bd_net -net DB_q [get_bd_pins DB/q] [get_bd_pins xup_and4_0/b] [get_bd_pins xup_inv_0/a]
  connect_bd_net -net DC_q [get_bd_pins DC/q] [get_bd_pins xup_and2_1/a] [get_bd_pins xup_and2_3/b] [get_bd_pins xup_and2_4/a] [get_bd_pins xup_inv_1/a]
  connect_bd_net -net I_1 [get_bd_ports I] [get_bd_pins xup_and2_2/b] [get_bd_pins xup_and2_4/b] [get_bd_pins xup_and2_5/b] [get_bd_pins xup_and4_0/d] [get_bd_pins xup_inv_3/a]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins DA/clk] [get_bd_pins DB/clk] [get_bd_pins DC/clk]
  connect_bd_net -net en_1 [get_bd_ports en] [get_bd_pins DA/en] [get_bd_pins DB/en] [get_bd_pins DC/en]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins DA/reset] [get_bd_pins DB/reset] [get_bd_pins DC/reset]
  connect_bd_net -net xup_and2_0_y [get_bd_pins xup_and2_0/y] [get_bd_pins xup_or3_0/b]
  connect_bd_net -net xup_and2_1_y [get_bd_pins xup_and2_1/y] [get_bd_pins xup_or3_0/c]
  connect_bd_net -net xup_and2_2_y [get_bd_pins xup_and2_2/y] [get_bd_pins xup_or4_0/b]
  connect_bd_net -net xup_and2_3_y [get_bd_pins xup_and2_3/y] [get_bd_pins xup_or4_0/c]
  connect_bd_net -net xup_and2_4_y [get_bd_pins xup_and2_4/y] [get_bd_pins xup_or4_0/d]
  connect_bd_net -net xup_and2_5_y [get_bd_ports Z] [get_bd_pins xup_and2_5/y]
  connect_bd_net -net xup_and4_0_y [get_bd_pins DA/d] [get_bd_pins xup_and4_0/y] [get_bd_pins xup_or3_0/a]
  connect_bd_net -net xup_inv_0_y [get_bd_pins xup_and2_2/a] [get_bd_pins xup_and2_3/a] [get_bd_pins xup_inv_0/y]
  connect_bd_net -net xup_inv_1_y [get_bd_pins xup_and4_0/c] [get_bd_pins xup_inv_1/y]
  connect_bd_net -net xup_inv_2_y [get_bd_pins xup_and4_0/a] [get_bd_pins xup_inv_2/y]
  connect_bd_net -net xup_inv_3_y [get_bd_pins xup_and2_0/b] [get_bd_pins xup_and2_1/b] [get_bd_pins xup_inv_3/y]
  connect_bd_net -net xup_or3_0_y [get_bd_pins DB/d] [get_bd_pins xup_or3_0/y]
  connect_bd_net -net xup_or4_0_y [get_bd_pins DC/d] [get_bd_pins xup_or4_0/y]

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


