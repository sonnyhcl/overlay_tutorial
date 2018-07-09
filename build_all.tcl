cd ip
foreach script [glob */script.tcl] { exec vivado_hls -f $script }

cd ..

source build_scalar_add.tcl
close_project

source build_mult_constant.tcl
close_project
