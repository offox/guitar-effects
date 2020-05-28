module distorcion_tb;


reg clk, bypass
reg [31:0] distorcion_gain, distortion_boost;
reg [15:0] input_, fout;


module distortion (
	.clk( clk ),
	.bypass( bypass ),
	.distorcion_gain( distortion_gain );
	.distortion_boost( distortion_boost ),
	.input( input_ ),
	.out( out )
);


 
initial
begin
    clk = 1'b0;  reset = 1'b1; delay_bypass = 1'b0;    delay_gain = 'b1 ; delay_time = 'b1;	delay_repeat_time = 'b1; input_n = 'd1000;	input_n_1 = 'd1000; input_n_2 = 'd1000;     #1
    $display("clk = %x, delay_bypass = %x, delay_gain = %x, delay_time = %x, delay_repeat_time = %x, input_n = %x, input_n_1 = %x, input_n_2 = %x, outiput = %x", clk, delay_bypass, delay_gain, delay_time, delay_repeat_time, input_n, delay_to_distorcion);
    clk = 1'b1;  reset = 1'b0;  delay_bypass = 1'b0;    delay_gain = 'b1 ; delay_time = 'b1;	delay_repeat_time = 'b1; input_n = 'd1000;	input_n_1 = 'd1000; input_n_2 = 'd1000;     #1
    $display("clk = %x, delay_bypass = %x, delay_gain = %x, delay_time = %x, delay_repeat_time = %x, input_n = %x, input_n_1 = %x, input_n_2 = %x, outiput = %x", clk, delay_bypass, delay_gain, delay_time, delay_repeat_time, input_n, delay_to_distorcion);
end

endmodule

