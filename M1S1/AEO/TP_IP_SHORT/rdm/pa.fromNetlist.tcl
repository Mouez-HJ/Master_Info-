
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name rdm -dir "E:/Travail/TP Informatique/M1S1/AEO/TP_IP_SHORT/rdm/planAhead_run_4" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/Travail/TP Informatique/M1S1/AEO/TP_IP_SHORT/rdm/rdm.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/Travail/TP Informatique/M1S1/AEO/TP_IP_SHORT/rdm} }
set_param project.paUcfFile  "const.ucf"
add_files "const.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
