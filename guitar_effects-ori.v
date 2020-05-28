module guitar_effect (
	input 	clk,
	input 	reset,
	input		[31:0] 	loc_readdata,
	output  reg	[31:0] 	loc_writedata,
	output 	reg	[15:0]	loc_ramaddress,            
	output 	reg	loc_ramclk,               
	output	reg	loc_ramread,              
	output  reg   loc_ramwrite
);

// reg 			clk_;
reg 			distortion_bypass_;
reg  [31:0] 	distortion_gain_;
reg  [31:0] 	distortion_boost_;
reg  [31:0] 	input_;
reg  [31:0] 	select_effect_;
wire  			distortion_ready_to_read_;
wire [31:0] 	out_ ;
reg  			ready_to_read_;		

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


parameter ADD_SE 					= 15'b000;
parameter ADD_DISTORRION_GAIN		= 15'b001;
parameter ADD_DISTORRION_BOOST		= 15'b010;
parameter ADD_INPUT					= 15'b011;
parameter ADD_READ_FINISH			= 15'b100;
parameter ADD_OUTPUT				= 15'b101;
parameter ADD_READY_TO_GET			= 15'b110;

parameter [5:0] S0=5'd0, S0A=5'd1, S0B=5'd2, S0C=5'd3, S0D=5'd4, S0E=5'd5, S0F=5'd6, S0G=5'd7, S0H=5'd8, S0I=5'd9, S1=5'd10, S1A=5'd11, S2=5'd12, S2A=5'd13, S3=5'd14, S3A=5'd15, S3B=5'd16, S3C=5'd17, S3D=5'd18, S4=5'd19, S4A=5'd20, S5=5'd21, S5A=5'd22;

reg [5:0] stt;

always@(posedge distortion_ready_to_read_)
  begin
	ready_to_read_ = 'b1;
  end

always@(posedge clk or negedge reset)
  begin
    if (reset == 'b0)
	 begin
		stt <= S0;
		select_effect_ <= 32'b0;
		distortion_bypass_ <= 32'b0;
		distortion_gain_ <= 32'b0;
		distortion_boost_ <= 32'b0;
		loc_ramclk <= 'b0; 
		loc_ramread <= 0;
		loc_ramwrite <= 0;
		input_ <= 32'b0;
	 end 
	 else
	 begin
		 case(stt)
			S0:
			begin
				loc_ramaddress <= ADD_SE;            
				loc_ramclk <= 'b1;           
				loc_ramread <= 'b1;
				loc_ramwrite <= 'b0;
				stt <= S0A;
			end
			S0A:
			begin
				loc_ramclk <= 'b0;
				select_effect_ <= loc_readdata;
				loc_ramread <= 'b0;
				if (select_effect_ & 2'b01)
				begin
					distortion_bypass_ = 'b01;
					stt <= S0;
				end
				else
				begin
					distortion_bypass_ = 'b00;
					stt <= S0B;
				end
			end
			S0B:
			begin
				loc_ramaddress <= ADD_DISTORRION_GAIN;            
				loc_ramclk <= 'b1;           
				loc_ramread <= 'b1;
				loc_ramwrite <= 'b0;
				stt <= S0C;
			end
			S0C:
			begin
				loc_ramclk <= 'b0;
				distortion_gain_ <= loc_readdata;
				loc_ramread <= 'b0;
				stt <= S0D;
			end
			S0D:
			begin
				loc_ramaddress <= ADD_DISTORRION_BOOST;            
				loc_ramclk <= 'b1;           
				loc_ramread <= 'b1;
				loc_ramwrite <= 'b0;
				stt <= S0E;
			end
			S0E:
			begin
				loc_ramclk <= 'b0;
				distortion_boost_ <= loc_readdata;
				loc_ramread <= 'b0;
				stt <= S1;
			end
			S1:
			begin
				loc_ramaddress <= ADD_INPUT;            
				loc_ramclk <= 'b1;           
				loc_ramread <= 'b1;
				loc_ramwrite <= 'b0;
				stt <= S1A;
			end
			S1A:
			begin
				loc_ramclk <= 'b0;
				input_ <= loc_readdata;
				loc_ramread <= 'b0;
				stt <= S2;
			end
			S2:
			begin           
				loc_ramclk <= 'b1;           
				loc_ramaddress <= ADD_READ_FINISH; 
				loc_ramread <= 'b0;
				loc_ramwrite <= 'b1;
				stt <= S2A;
			end
			S2A:
			begin
				loc_writedata <= 32'b0;
				loc_ramclk <= 'b0;
				loc_ramwrite <= 'b0;
				stt <= S3;
			end
			S3:
			begin           
				if (ready_to_read_ > 0)
				begin
					loc_ramclk <= 'b1;           
					loc_ramaddress <= ADD_OUTPUT; 
					loc_ramread <= 'b0;
					loc_ramwrite <= 'b1;
					stt <= S3D;
				end
				else
				begin
					stt <= S3A;
				end
			end
			S3A:
			begin
				stt <= S3B;
			end
			S3B:
			begin
				stt <= S3C;
			end
			S3C:
			begin
				stt <= S5;
			end
			S3D:
			begin
				loc_writedata <= out_;
				loc_ramclk <= 'b0;
				loc_ramwrite <= 'b0;
				// ready_to_read_ <= 'b0;
				stt <= S4;
			end
			S4:
			begin           
				loc_ramclk <= 'b1;           
				loc_ramaddress <= ADD_READY_TO_GET; 
				loc_ramread <= 'b0;
				loc_ramwrite <= 'b1;
				stt <= S4A;
			end
			S4A:
			begin
				loc_writedata <= 32'b1;
				loc_ramclk <= 'b0;
				loc_ramwrite <= 'b0;
				stt <= S5;
			end
			S5:
			begin
				stt <= S1;
			end
			
		endcase
    end
  end

endmodule
	
	