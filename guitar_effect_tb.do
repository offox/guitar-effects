vsim -L work work.fifo_ge work.altp_sub_ge work.altfp_exp_ge work.altfp_mult_ge work.distortion work.guitar_effect_tb work.guitar_effect lpm_ver.lpm_add_sub lpm_ver.lpm_compare altera_mf_ver.altsyncram -voptargs=+acc -t 1ps
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/*
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/fifo_ge_input/*
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/aclr
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/clk
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/bypass
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/distortion_gain
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/distortion_boost
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/result
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/count
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/calculate_first_value
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/input_
add wave -position insertpoint sim:/guitar_effect_tb/guitar_effect_inst/distortion_inst/out

run -all

