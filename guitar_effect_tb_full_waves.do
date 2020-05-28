vsim -L work work.altp_sub_ge  work.altfp_exp_ge work.altfp_mult_ge work.distortion work.guitar_effect_tb work.guitar_effect work.ram_port_2 lpm_ver.lpm_add_sub lpm_ver.lpm_compare altera_mf_ver.altsyncram -voptargs=+acc -t 1ps
add wave -position insertpoint sim:/guitar_effect_tb/*
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/*
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/*
run -all

