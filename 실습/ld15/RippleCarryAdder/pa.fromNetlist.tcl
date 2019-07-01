
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name RippleCarryAdder -dir "/csehome/ld15/RippleCarryAdder/planAhead_run_2" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/csehome/ld15/RippleCarryAdder/RippleCarryAdder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/csehome/ld15/RippleCarryAdder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "RippleCarryAdder.ucf" [current_fileset -constrset]
add_files [list {RippleCarryAdder.ucf}] -fileset [get_property constrset [current_run]]
link_design
