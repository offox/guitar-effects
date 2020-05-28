vsim -L work work.altp_sub_ge  work.altfp_conv_float_to_int_ge work.altfp_conv_int_to_float_ge work.altfp_exp_ge work.altfp_mult_ge work.distorcion_tb work.distortion lpm_ver.lpm_add_sub lpm_ver.lpm_compare -voptargs=+acc -t 1ps
add wave -position insertpoint sim:/distorcion_tb/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_conv_int_to_float_ge_inst/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_mult_ge_inst/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_mult_ge_inst_1/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_exp_ge_inst/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_sub_ge_inst/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_mult_ge_inst_3/*
add wave -position insertpoint sim:/distorcion_tb/distortion_inst/altfp_conv_float_to_int_ge_inst/*
run -all

