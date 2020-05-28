module distortion (
	input 		  			clk,
	input         			bypass,
	input	 		[31:0] 	distortion_gain,
	input			[31:0]	distortion_boost,
	input  		[31:0] 	input_,
	output reg 	[31:0]  	out
);

wire 	[31:0] 	conv_result;
wire 	[31:0] 	exp_result;
wire 	[15:0] 	result;
wire 	[31:0] 	mult_result_1;
wire 	[31:0] 	mult_result_2;
wire 	[31:0] 	mult_result_3;
wire 	[31:0] 	sub_result;
reg	[31:0]  sgn;


altfp_conv_int_to_float_ge	altfp_conv_int_to_float_ge_inst (
	.clock ( clk ),
	.dataa ( input_ ),
	.result ( conv_result )
	);
	
altfp_mult_ge	altfp_mult_ge_inst (
	.clock ( clk ),
	.dataa ( distortion_gain ),
	.datab ( conv_result ),
	.result ( mult_result_1 )
	);

altfp_mult_ge	altfp_mult_ge_inst_1 (
	.clock ( clk ),
	.dataa ( mult_result_1 ),
	.datab ( sgn ),
	.result ( mult_result_2 )
	);

altfp_exp_ge altfp_exp_ge_inst (
	.clock ( clk ),
	.data ( mult_result_2 ),
	.result ( exp_result )
	);
	
altp_sub_ge altfp_sub_ge_inst (
	.clock ( clk ),
	.dataa ( 32'b00111111100000000000000000000000 ),
	.datab ( exp_result ),
	.result ( sub_result )
	);
	
altfp_mult_ge altfp_mult_ge_inst_3 (
	.clock ( clk ),
	.dataa ( sub_result ),
	.datab ( sgn ),
	.result ( mult_result_3 )
	);
	
altfp_conv_float_to_int_ge	altfp_conv_float_to_int_ge_inst (
	.clock ( clk ),
	.dataa ( mult_result_2 ),
	.result ( result )
	);

always@(posedge clk)
begin
	begin
		if (bypass)                  
		begin
			out <= input_ ;
		end
		else
		begin
			if (input_[31] ==  'b0)
			begin
				sgn <= 32'b00111111100000000000000000000000;
			end
			else
			begin
				sgn <= 32'b10111111100000000000000000000000;
			end
			out <= result;
		end
	end	
end
  
endmodule