module guitar_effect (
	input 	clk,
	input   clk_500, 
	input 	reset,
	input		[31:0] 	avl_readdata,
	output  reg	[31:0] 	avl_writedata,
	output 	reg	[4:0]	avl_address,            
	output 	reg	avl_clk,               
	output	reg	avl_read,              
	output  reg     avl_write
);

reg  [31:0] 	status;
reg  [31:0] 	distortion_gain_;
reg  [31:0] 	distortion_boost_;
reg  [31:0] 	input_;
reg  		ready_to_read_;
wire [31:0] 	out_ ;
reg   	        wrfull_input, wrfull_output;
reg		rdempty_input, rdempty_outpout;	
reg		rdreq_input, wrreq_output;
reg 		rdclk_input, rdenabled_input;
reg		wrclk_output, wrenabled_output;

fifo_ge	fifo_ge_input (
	.data ( avl_writedata ),
	.rdclk ( rdclk_input ),
	.rdreq ( rdenabled_input ),
	.wrclk ( clk ),
	.wrreq ( wrenabled ),
	.q ( input_ ),
	.rdempty ( rdempty_input ),
	.wrfull ( wrfull_input )
	);

fifo_ge	fifo_ge_output (
	.data ( out_ ),
	.rdclk ( clk ),
	.rdreq ( avl_output ),
	.wrclk ( wrclk_output ),
	.wrreq ( wrenabled_output ),
	.q ( avl_readdata ),
	.rdempty ( rdempty_output ),
	.wrfull ( wrfull_output )
	);

distortion distortion_inst(
	.aclr( ! reset ),
	.clk( clk ),
	.bypass( distortion_bypass_ ),
	.distortion_gain( distortion_gain_ ),
	.distortion_boost ( distortion_boost_ ),
	.input_( input_ ),
	.ready_to_read ( distortion_ready_to_read_ ),
	.out( out_ )
);


parameter ADD_DISTORTION_GAIN			= 5'b00001;
parameter ADD_DISTORTION_BOOST			= 5'b00010;
parameter ADD_STATUS				= 5'b00011;
parameter ADD_OUTPUT				= 5'b00101;
parameter ADD_INPUT				= 5'b00110;

parameter [5:0] S0=5'd0, S1=5'd1, S2=5'd2, S3=5'd3, S4=5'd4;

reg [5:0] stt;


always@(negedge clk or posedge avl_read or posedge avl_write)
begin
	if ( clk == 'b0 )
	begin
		wrenabled_output <= 'b0;
		rdenabled_input <= 'b0;
	end
	else if ( avl_read == 'b1 )
	begin
		if ( avl_address == ADD_DISTORTION_GAIN ) 
		begin
			distortion_gain_ <= avl_readdata;
		end 
		else if ( avl_address == ADD_DISTORTION_BOOST )
		begin
			distortion_boost_ <= avl_readdata;
		end
		else if ( avl_address == ADD_OUTPUT )
		begin
			if ( ! wrfull_input )
			begin
				wrenabled_output <= 'b1;
				status <= status & 5'b01111;
			end	
			else
			begin
				status <= status | 5'b10000;
			end
		end
	end
	else if ( avl_write == 'b1 )
	begin
		if ( avl_address == ADD_STATUS) 
		begin
			avl_writedata <= status;
		end 
		else if ( avl_address == ADD_OUTPUT )
		begin
			if ( ! rdempty_output )
			begin
				rdenabled_input <= 'b1; 
				status <= status & 5'b10111;
			end
			else
			begin
				status <= status | 5'b01000;
			end
		end
	end
		
end

always@(posedge clk_500)
  begin
	if (distortion_ready_to_read_ == 'b1)
	begin
		ready_to_read_ = 'b1;
	end
    else if (reset == 'b0)
	begin
		stt <= S0;
		rdclk_input <= 'b0;
		rdenabled_input <= 'b0;
		wrclk_output <= 'b0;
		wrenabled_output <= 'b0;
	 end 
	 else
	 begin
		 case(stt)
			S0:
			begin
				rdclk_input <= 'b0;
				rdenabled_input <= 'b1;            
				stt <= S1;
			end
			S1:
			begin
				rdclk_input <= 'b1;
				rdenabled_input <= 'b0;            
				stt <= S2;
			end
			S2:
			begin
				if ( ready_to_read_ > 0)
				begin
					wrclk_output <= 'b0;
					wrenabled_output <= 'b1;            
					stt <= S4;
				end
				else
				begin
					stt <= S3;
				end
			end
			S3:
			begin
				stt <= S4;
			end
			S4:
			begin           
				wrclk_output <= 'b1;
				wrenabled_output <= 'b0;            
				stt <= S0;
			end
		endcase
    	end
  end

endmodule
	
	
