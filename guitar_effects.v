module guitar_effect (
	input 	clk,
	input   clk_500, 
	input 	reset,
	output  reg	[31:0] 	avl_readdata,
	input 		[31:0] 	avl_writedata,
	input 		[4:0]	avl_address,            
	input			avl_read,              
	input           avl_write
);

reg				distortion_bypass_;
reg  [31:0] 	status;
reg  [31:0] 	distortion_gain_;
reg  [31:0] 	distortion_boost_;
wire  [31:0] 	input_;
reg  			ready_to_read_;
wire [31:0] 	out_ ;
wire   	        wrfull_input, wrfull_output;
wire			rdempty_input, rdempty_output;	
reg 		rdenabled_input, wrenabled_output;
reg			wrenabled, rdenabled;
reg			reset_by_command;
reg			reset_;
wire	    [31:0] readdata;

fifo_ge	fifo_ge_input (
	.data ( avl_writedata ),
	.rdclk ( clk_500 ),
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
	.rdreq ( rdenabled ),
	.wrclk ( clk_500 ),
	.wrreq ( wrenabled_output ),
	.q ( readdata ),
	.rdempty ( rdempty_output ),
	.wrfull ( wrfull_output )
	);

distortion distortion_inst(
	.aclr( reset_ ),
	.clk( clk ),
	.bypass( distortion_bypass_ ),
	.distortion_gain( distortion_gain_ ),
	.distortion_boost ( distortion_boost_ ),
	.input_( input_ ),
	.ready_to_read ( distortion_ready_to_read_ ),
	.out( out_ )
);

parameter ADD_DISTORTION_BYPASS			= 5'b000000;
parameter ADD_DISTORTION_GAIN			= 5'b00001;
parameter ADD_DISTORTION_BOOST			= 5'b00010;
parameter ADD_STATUS				= 5'b00011;
parameter ADD_OUTPUT				= 5'b00101;
parameter ADD_INPUT				= 5'b00110;
parameter ADD_RESET				= 5'b00111;

parameter [5:0] SSTOP=5'd0, S0=5'd1, S1=5'd2, S2=5'd3, S3=5'd4, S4=5'd5, S5=5'd6;

reg [3:0] stt;


always@(negedge clk or negedge reset or posedge avl_read or posedge avl_write)
begin
	if ( clk == 'b0 )
	begin
		wrenabled <= 'b0;
		rdenabled <= 'b0;	
	end
	if ( reset == 'b0 )
	begin
		status <= 5'b00000;
		distortion_gain_ <= 'b0;
		distortion_boost_ <= 'b0;
	end
	else if ( avl_write == 'b1 )
	begin
		if ( avl_address == ADD_DISTORTION_BYPASS ) 
		begin
			distortion_bypass_ <= avl_writedata;
		end 
		else if ( avl_address == ADD_DISTORTION_GAIN ) 
		begin
			distortion_gain_ <= avl_writedata;
		end 
		else if ( avl_address == ADD_DISTORTION_BOOST )
		begin
			distortion_boost_ <= avl_writedata;
		end
		else if ( avl_address == ADD_RESET )
		begin
			reset_by_command <= 'b0;	
		end
		else if ( avl_address == ADD_INPUT )
		begin
			if ( ! wrfull_input )
			begin
				wrenabled <= 'b1;
				status <= status | 5'b10000;
			end	
			else
			begin
				status <= status & 5'b01111;
			end
		end
	end
	else if ( avl_read == 'b1 )
	begin
		if ( avl_address == ADD_STATUS) 
		begin
			avl_readdata <= status;
		end 
		else if ( avl_address == ADD_OUTPUT )
		begin
			if ( ! rdempty_output )
			begin
				rdenabled <= 'b1; 
				avl_readdata <= readdata;
				status <= status | 5'b01000;
			end
			else
			begin
				status <= status & 5'b10111;
			end
		end
	end
		
end

always@(negedge clk_500 or negedge reset or negedge reset_by_command or posedge distortion_ready_to_read_)
  begin
	if (distortion_ready_to_read_ == 'b1)
	begin
		ready_to_read_ = 'b1;
	end
	if (reset == 'b0)
	begin
		stt <= SSTOP;
		ready_to_read_ = 'b0;
		rdenabled_input <= 'b0;
		wrenabled_output <= 'b0;
		reset_ <= 'b0;
	 end  
	 else
	 begin
		 case(stt)
			SSTOP:
			if (reset_by_command == 'b0)
			begin
				reset_ <= 'b1;
				stt <= S0;
			end
			S0:
			begin
				reset_ <= 'b0;
				if ( ! rdempty_input )
				begin
					rdenabled_input <= 'b1;            
					stt <= S2;
				end
				else
				begin
					stt <= S1;
				end
			end
			S1:
			begin
				stt <= S3;
			end
			S2:
			begin
				rdenabled_input <= 'b0; 
				stt <= S3;
			end
			S3:
			begin
				if ( ready_to_read_ > 0)
				begin
					wrenabled_output <= 'b1;            
					stt <= S5;
				end
				else
				begin
					stt <= S4;
				end
			end
			S4:
			begin
				stt <= S0;
			end
			S5:
			begin           
				wrenabled_output <= 'b0;            
				stt <= S0;
			end
		endcase
    	end
  end

endmodule
	
	
