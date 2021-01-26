@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Jan 03 23:29:46 +0300 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim cfg_tb_design_lab_8_wrapper_behav -key {Behavioral:sim_1:Functional:cfg_tb_design_lab_8_wrapper} -tclbatch cfg_tb_design_lab_8_wrapper.tcl -protoinst "protoinst_files/design_lab_8.protoinst" -log simulate.log"
call xsim  cfg_tb_design_lab_8_wrapper_behav -key {Behavioral:sim_1:Functional:cfg_tb_design_lab_8_wrapper} -tclbatch cfg_tb_design_lab_8_wrapper.tcl -protoinst "protoinst_files/design_lab_8.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
