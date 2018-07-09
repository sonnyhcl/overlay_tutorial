cd ip
foreach script [glob */script.tcl] { exec vivado_hls -f $script }
cd ..