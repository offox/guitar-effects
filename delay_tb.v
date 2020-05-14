delay delay_inst
(
	.clk( clk ),
	.bypass( delay_bypass ),
	.delay_gain( delay_gain ),
	.delay_time ( delay_time ),
	.delay_repeat_time( delay_repeat_time ),
	.input_n( input_n ),
	.input_n_1( input_n_1 ),
	.input_n_2( input_n_2 ),
	.out( delay_to_distorcion )
);

wire clk, delay_bypass;
wire [31:0] delay_gain, delay_time, delay_repeat_time;
wire [15:0] input_n, input_n_1,input_n_2;
wire [15:0] delay_to_distorcion;
 
initial
begin
    clk = 1'b0;    delay_bypass = 1'b0;    delay_gain = 'b1 ; delay_time = 'b1;	delay_repeat_time = 'b1; input_n = 'd1000;	input_n_1 = 'd1000; input_n_2 = 'd1000;     #1
    $display("clk = %x, delay_bypass = %x, delay_gain = %x, delay_time = %x, delay_repeat_time = %x, input_n = %x, input_n_1 = %x, input_n_2 = %x, outiput = %x", clk, delay_bypass, delay_gain, delay_time, delay_repeat_time, input_n, delay_to_distorcion);
	clk = 1'b1;    delay_bypass = 1'b0;    delay_gain = 'b1 ; delay_time = 'b1;	delay_repeat_time = 'b1; input_n = 'd1000;	input_n_1 = 'd1000; input_n_2 = 'd1000;     #1
    $display("clk = %x, delay_bypass = %x, delay_gain = %x, delay_time = %x, delay_repeat_time = %x, input_n = %x, input_n_1 = %x, input_n_2 = %x, outiput = %x", clk, delay_bypass, delay_gain, delay_time, delay_repeat_time, input_n, delay_to_distorcion);
end
endmodule