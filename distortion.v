module distortion (
	input 					aclr, 
	input 		  			clk,
	input         			bypass,
	input	 		[31:0] 	distortion_gain,
	input			[31:0]	distortion_boost,
	input  		[31:0] 	input_,
	output reg				ready_to_read,
	output reg 	[31:0]  	out
);

wire 	[31:0] 	exp_result;
wire 	[31:0] 	result;
wire 	[31:0] 	mult_result_1;
wire 	[31:0] 	mult_result_2;
wire 	[31:0] 	sub_result;
reg	[31:0]  sgn;
reg 	[5:0]	count;
reg 			calculate_first_value;

	
altfp_mult_ge	altfp_mult_ge_inst_1 (
	.aclr ( aclr ),
	.clock ( clk ),
	.dataa ( distortion_gain ),
	.datab ( input_ ),
	.result ( mult_result_1 )
	);

altfp_mult_ge	altfp_mult_ge_inst_2 (
	.aclr ( aclr ),
	.clock ( clk ),
	.dataa ( mult_result_1 ),
	.datab ( sgn ),
	.result ( mult_result_2 )
	);

altfp_exp_ge altfp_exp_ge_inst (
	.aclr ( aclr ),
	.clock ( clk ),
	.data ( mult_result_2 ),
	.result ( exp_result )
	);
	
altp_sub_ge altfp_sub_ge_inst (
	.aclr ( aclr ),
	.clock ( clk ),
	.dataa ( 32'b00111111100000000000000000000000 ),
	.datab ( exp_result ),
	.result ( sub_result )
	);
	
altfp_mult_ge altfp_mult_ge_inst_3 (
	.aclr ( aclr ),
	.clock ( clk ),
	.dataa ( sub_result ),
	.datab ( sgn ),
	.result ( result )
	);

always@(posedge clk or posedge aclr)
begin
	if (aclr == 'b1)
	begin
		calculate_first_value <= 'b1;
		ready_to_read <= 'b0;
		count <= 6'b0;
		out <= 32'd1010;
	end
	else
	begin
		if (bypass == 'b1)                  
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
		end
		
		if (calculate_first_value == 'b1)
		begin
		if (count == 6'd41)
			begin
				calculate_first_value <= 'b0;
				out <= result;
				ready_to_read <= 'b1;
				count <= 6'b0;
			end
			else
			begin
				count <= count + 6'b1;
			end
		end
		else
		begin
			if (count == 6'd3)
			begin
				out <= result;
				ready_to_read <= 'b1;
				count <= 6'b0;
			end
			else
			begin
				ready_to_read <= 'b0;
				count <= count + 6'b1;
			end
		end
	end
end
  
endmodule
