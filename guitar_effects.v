module guitar_effect (
	input 	clk,
	input		[31:0] 	loc_readdata,
	output  	[31:0] 	loc_writedata,
	output 	reg	[14:0]	loc_ramaddress,            
	output 	reg	loc_ramclk,               
	output	reg	loc_ramread,              
	output   reg   loc_ramwrite
);


reg 	[1:0] 	select_effect;
reg  [14:0] 	first_ramaddress;
reg  [14:0] 	last_ramaddress;
reg  [31:0] 	delay_gain;
reg  [31:0] 	delay_time;
reg  [31:0] 	delay_repeat_time;
reg  [31:0] 	input_n;
reg  [31:0] 	input_n_1;
reg  [31:0] 	input_n_2;
reg  [31:0] 	distortion_gain;
reg  [31:0] 	flanger_depth;
wire  [31:0] 	delay_to_distorcion;
reg  [31:0] 	distortion_to_flanger;
reg  [31:0] 	flanger_to_delay;
reg  				delay_bypass;
reg   			distortion_bypass;
reg  				flanger_bypass;

wire go;

delay delay_inst(
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

parameter ADD_SE 						= 3'b000;
parameter ADD_DELAY_GAIN 			= 3'b001;
parameter ADD_DELAY_TIME			= 3'b011;
parameter ADD_DELAY_REPEAT_TIME	= 3'b100;
parameter ADD_DISTORRION_GAIN		= 3'b101;
parameter ADD_FLANGER_DEPTH		= 3'b110;
parameter ADD_RING_BUFFER_INIT	= 15'b000000000000111;
parameter ADD_RING_BUFFER_FINAL	= 15'b111111111111110;
parameter ADD_OUTPUT					= 15'b111111111111111;

parameter S0=0, S0A=1, S0B=2, S0C=3, S0D=4, S0E=5, S0F=6, S0G=7, S0H=8, S0I=9, S0J=10, S0L=11, S0M=12, S1=21, S2=22, S3=23;

reg [6:0] stt = S0;

// stt = S0;

always@(posedge clk)
  begin
	 case(stt)
		S0:
		begin
			loc_ramaddress <= ADD_SE;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0A;
		end
		S0A:
		begin
			loc_ramclk <= 'b0;
			select_effect <= loc_readdata[1:0];
			first_ramaddress <= loc_readdata[16:2];
			last_ramaddress = loc_readdata[31:17];
			loc_ramread <= 'b0;
			stt <= S0B;
		end
		S0B:
		begin
			loc_ramaddress <= ADD_DELAY_GAIN;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0C;
		end
		S0C:
		begin
			loc_ramclk <= 'b0;
			delay_gain <= loc_readdata;
			loc_ramread <= 'b0;
			stt <= S0D;
		end
		S0D:
		begin
			loc_ramaddress <= ADD_DELAY_TIME;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0E;
		end
		S0E:
		begin
			loc_ramclk <= 'b0;
			delay_time <= loc_readdata;
			loc_ramread <= 'b0;
			stt <= S0F;
		end
		S0F:
		begin
			loc_ramaddress <= ADD_DELAY_REPEAT_TIME;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0G;
		end
		S0G:
		begin
			loc_ramclk <= 'b0;
			delay_repeat_time <= loc_readdata;
			loc_ramread <= 'b0;
			stt <= S0H;
		end
		S0H:
		begin
			loc_ramaddress <= ADD_DISTORRION_GAIN;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0I;
		end
		S0I:
		begin
			loc_ramclk <= 'b0;
			distortion_gain <= loc_readdata;
			loc_ramread <= 'b0;
			stt <= S0J;
		end
		S0J:
		begin
			loc_ramaddress <= ADD_FLANGER_DEPTH;            
			loc_ramclk <= 'b1;           
 			loc_ramread <= 'b1;
			stt <= S0M;
		end
		S0M:
		begin
			loc_ramclk <= 'b0;
			flanger_depth <= loc_readdata;
			loc_ramread <= 'b0;
			stt <= S1;
		end
		S1:
		begin
			if (select_effect & 2'b01)
			begin
				delay_bypass = 'b00;
				distortion_bypass = 'b01;
				flanger_bypass = 'b01;
			end
			else if (select_effect == 2'b10)
			begin
				delay_bypass = 'b01;
				distortion_bypass = 'b00;
				flanger_bypass = 'b01;
			end
			else
			begin
				delay_bypass = 'b01;
				distortion_bypass = 'b01;
				flanger_bypass = 'b00;
			end
		end
		
		
	 endcase
    if (1) 
      begin

      end
    else if (0) 
      begin

      end 
  end
  
endmodule
				
	
	
	