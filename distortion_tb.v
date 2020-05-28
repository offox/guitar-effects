`timescale 10 ps / 1 ps

module distorcion_tb;

reg aclr_, clk_, bypass_;
reg [31:0] distortion_gain_, distortion_boost_;
reg [31:0] input_;
wire [31:0] out_;


distortion distortion_inst (
	.aclr( aclr_ ),
	.clk( clk_ ),
	.bypass( bypass_ ),
	.distortion_gain( distortion_gain_ ),
	.distortion_boost( distortion_boost_ ),
	.input_( input_ ),
	.out( out_ )
);


initial
begin
    aclr_ = 1'b0; clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111010101010000000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    aclr_ = 1'b1; clk_ = 1'b1;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111010101010000000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    aclr_ = 1'b0;  clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111010101010000000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111010101010000000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
	clk_ = 1'b0;  bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
    clk_ = 1'b1;   bypass_ = 1'b0;    distortion_gain_ = 32'b11000001001100000000000000000000 ; distortion_boost_ = 32'b00111011100000100000000000000000;	 input_ = 32'b00111011100000100000000000000000;    #1	
    $display("clk = %x, bypass = %x, distortion_gain = %x, distortion_boost = %x, input_n = %x,  output = %x", clk_, bypass_, distortion_gain_, distortion_boost_,  input_, out_);
end

endmodule

