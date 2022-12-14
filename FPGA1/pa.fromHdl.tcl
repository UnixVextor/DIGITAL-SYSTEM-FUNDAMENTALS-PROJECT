
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name FPGA1 -dir "D:/Digital Project/FPGA1/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "FPGA1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {FPGA1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top FPGA1 $srcset
add_files [list {FPGA1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
