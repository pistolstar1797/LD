
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Final -dir "/csehome/pistolstar1797/Final/planAhead_run_3" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/csehome/pistolstar1797/Final/microprocessor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/csehome/pistolstar1797/Final} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "microprocessor.ucf" [current_fileset -constrset]
add_files [list {microprocessor.ucf}] -fileset [get_property constrset [current_run]]
link_design
