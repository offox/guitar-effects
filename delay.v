module delay (
	input 		  			clk,
	input         			bypass,
	input	 		[4:0] 	delay_gain,
	input  		[31:0] 	delay_time,
	input  		[31:0] 	delay_repeat_time,
	input  		[31:0] 	input_n,
	input  		[15:0] 	input_n_1,
	input  		[15:0] 	input_n_2,
	input  		[15:0] 	input_n_3,
	output reg 	[15:0]  	out
);

wire [15:0] g_x_n_1_1;
wire [15:0] g_x_n_1_2;
wire [15:0] x_n_x_n_1;
wire [15:0] g_x_n_2_1; 
wire [15:0] g_x_n_2_2;
wire [15:0] x_n_x_n_1_x_n_2;
wire [15:0] g_x_n_3_1; 
wire [15:0] g_x_n_3_2;
wire [15:0] x_n_x_n_1_x_n_2_x_n_3;

reg  	[15:0]  	gain_n_2		[20:0];
reg  	[15:0]  	gain_n_3		[20:0];

initial 
begin
	gain_n_2[0] <= 0;
	gain_n_2[1] <= 3;
	gain_n_2[2] <= 6;
	gain_n_2[3] <= 9;
	gain_n_2[4] <= 12;
	gain_n_2[5] <= 15;
	gain_n_2[6] <= 18;
	gain_n_2[7] <= 21;
	gain_n_2[8] <= 24;
	gain_n_2[9] <= 27;
	gain_n_2[10] <= 30;
	gain_n_2[11] <= 33;
	gain_n_2[12] <= 36;
	gain_n_2[13] <= 39;
	gain_n_2[14] <= 42;
	gain_n_2[15] <= 45;
	gain_n_2[16] <= 48;
	gain_n_2[17] <= 51;
	gain_n_2[18] <= 54;
	gain_n_2[19] <= 57;
	gain_n_2[20] <= 60;
	
	gain_n_3[0] <= 0;
	gain_n_3[1] <= 9;
	gain_n_3[2] <= 18;
	gain_n_3[3] <= 27;
	gain_n_3[4] <= 36;
	gain_n_3[5] <= 45;
	gain_n_3[6] <= 54;
	gain_n_3[7] <= 63;
	gain_n_3[8] <= 72;
	gain_n_3[9] <= 81;
	gain_n_3[10] <= 90;
	gain_n_3[11] <= 99;
	gain_n_3[12] <= 108;
	gain_n_3[13] <= 117;
	gain_n_3[14] <= 126;
	gain_n_3[15] <= 135;
	gain_n_3[16] <= 144;
	gain_n_3[17] <= 153;
	gain_n_3[18] <= 162;
	gain_n_3[19] <= 171;
	gain_n_3[20] <= 180;
end

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
	
// Calculate G*9/16*x(n - 3)
lpm_divide_ge	lpm_divide_ge_inst_n_3 (
	.denom ( input_n_3 ),
	.numer ( 320 ),
	.quotient ( g_x_n_3_1 ),
	.remain ( )
	);

lpm_mult_ge	lpm_mult_ge_inst_n_1_3 (
	.dataa ( g_x_n_3_1 ),
	.datab ( gain_n_3[delay_gain] ),
	.result ( g_x_n_3_2 )
	);
	
// Added x(n) + G*x(n - 1) + G*3/4*x(n - 2) + G*9/16*x(n - 3)
lpm_add_ge	lpm_add_ge_inst_n_3 (
	.dataa ( x_n_x_n_1_x_n_2 ),
	.datab ( g_x_n_3_2 ),
	.result ( x_n_x_n_1_x_n_2_x_n_3 )
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
		else if(delay_repeat_time == 2'b11) 
		begin
			out <= x_n_x_n_1_x_n_2_x_n_3;
		end 
	end	
end
  
endmodule