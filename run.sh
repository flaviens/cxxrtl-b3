mkdir -p cxxrtl_obj_dir
yosys -p 'read_verilog -sv wrapper_cxxrtl.sv top.sv; write_cxxrtl cxxrtl_obj_dir/cxxrtl.cpp'
