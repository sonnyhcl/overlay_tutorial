cd overlays
source tutorial_1.tcl
add_files -norecurse [make_wrapper -files [get_files "[current_bd_design].bd"] -top]
update_compile_order -fileset sources_1
set_property top tutorial_1_wrapper [current_fileset]
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
file copy -force tutorial_1/tutorial_1.runs/impl_1/tutorial_1_wrapper.bit tutorial_1.bit
close_project
cd ..