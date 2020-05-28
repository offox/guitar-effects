module delay (
	input 		  			clk,
	input         			bypass,
	input	 		[4:0] 	delay_gain,
	input  		[31:0] 	delay_time,
	input  		[31:0] 	delay_repeat_time,
	input  		[31:0] 	input_n,
	input  		[15:0] 	input_n_1,
	input  		[15:0] 	input_n_2,
	output reg 	[15:0]  	out
);

wire [15:0] g_x_n_1_1;
wire [15:0] g_x_n_1_2;
wire [15:0] x_n_x_n_1;
wire [15:0] g_x_n_2_1; 
wire [15:0] g_x_n_2_2;
wire [15:0] x_n_x_n_1_x_n_2;

reg  	[15:0]  	gain_n_2		[19:0];
reg  	[15:0]  	gain_n_3		[19:0];

initial 
begin
	gain_n_2[0] <= 0;
	gain_n_2[1] <= 3;
end



/*
generate
	genvar i;
	for (i=0; i<20; i=i+1)
	begin
		gain_n_2[i] <= 3 * i;
		gain_n_3[i] <= 9 * i;
	end
endgenerate
*/

// Calculate G*x(n - 1)
lpm_divide_ge	lpm_divide_ge_inst_n_1 (
	.denom ( input_n_1 ),
	.numer ( 20 ),
	.quotient ( g_x_n_1_1 ),
	.remain ( )
	);

lpm_mult_ge	lpm_mult_ge_inst_n_1_1 (
	.dataa ( g_x_n_1_1 ),
	.datab ( delay_gain ),
	.result ( g_x_n_1_2 )
	);

// Added x(n) + G*x(n - 1)
lpm_add_ge	lpm_add_ge_inst_n_1 (
	.dataa ( input_n ),
	.datab ( g_x_n_1_2 ),
	.result ( x_n_x_n_1 )
	);
	
// Calculate G*3/4*x(n - 2)
lpm_divide_ge	lpm_divide_ge_inst_n_2 (
	.denom ( input_n_2 ),
	.numer ( 80 ),
	.quotient ( g_x_n_2_1 ),
	.remain ( )
	);

lpm_mult_ge	lpm_mult_ge_inst_n_1_2 (
	.dataa ( g_x_n_2_1 ),
	.datab ( gain_n_2[delay_gain] ),
	.result ( g_x_n_2_2 )
	);
	
// Added x(n) + G*x(n - 1) + G*3/4*x(n - 2)
lpm_add_ge	lpm_add_ge_inst_n_2 (
	.dataa ( x_n_x_n_1 ),
	.datab ( g_x_n_2_2 ),
	.result ( x_n_x_n_1_x_n_2 )
	);

always@(posedge clk)
begin
	begin
		if (bypass)                  
		begin
			out <= input_n;
		end
		else if(delay_repeat_time == 2'b01) 
		begin
			out <= x_n_x_n_1;
		end 
		else if(delay_repeat_time == 2'b10) 
		begin
			out <= x_n_x_n_1_x_n_2;
		end 
	end	
end
  
endmodule