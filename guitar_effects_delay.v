module guitar_effect (
	input 	clk,
	input 	reset,
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
reg  [31:0] 	delay_repeat_times;
reg  [31:0] 	distortion_gain;
reg  [31:0] 	flanger_depth;
wire  [15:0] 	delay_out;
reg  [31:0] 	distortion_out;
reg  [31:0] 	flanger_out;
reg  				delay_bypass;
reg   			distortion_bypass;
reg  				flanger_bypass;

wire 	go;
reg  	[15:0] 	input_n;
wire	[14:0]	first_address;
wire  [14:0]	last_address;
wire  [14:0]	input_address;

delay delay_inst(
	.clk( clk ),
	.reset( reset ),
	.bypass( delay_bypass ),
	.delay_gain( delay_gain ),
	.delay_time ( delay_time ),
	.delay_repeat_times( delay_repeat_times ),
	.input_n( input_n ),
	.first_address( first_address ),
	.last_address( last_address ),
	.input_address( input_address ),
	.out( delay_out )
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

parameter S0=0, S0A=1, S0B=2, S0C=3, S0D=4, S0E=5, S0F=6, S0G=7, S0H=8, S0I=9, S0J=10, S0L=11, S0M=12, S1=21, S2=22, S2A=224, S3=23, S4=24;

reg [31:0] stt;
reg [1:0] delay_times_count;

// stt = S0;

always@(posedge clk or negedge reset)
  begin
    if (reset == 'b0)
	 begin
		stt <= S0;
	 end 
	 else
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
				delay_repeat_times <= loc_readdata;
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
					delay_times_count = 'b00;
					stt <= S2;
				end
				else if (select_effect == 2'b10)
				begin
					delay_bypass = 'b01;
					distortion_bypass = 'b00;
					flanger_bypass = 'b01;
					stt <= S3;
				end
				else
				begin
					delay_bypass = 'b01;
					distortion_bypass = 'b01;
					flanger_bypass = 'b00;
					stt <= S4;
				end
			end
			S2:
			begin
				loc_ramaddress <= input_address;            
				loc_ramclk <= 'b1;           
				loc_ramread <= 'b1;
				stt <= S2A;
			end
			S2A:
			begin
				if (delay_times_count < delay_repeat_times)
				begin
					loc_ramclk <= 'b0;
					input_n <= loc_readdata[15:0];
					delay_times_count <= delay_times_count + 2'b01;
					stt <= S2;
				end
				else
				begin
					stt <= S0;
				end
			end
			S3:
			begin
				
			end
			S4:
			begin

			end		
		endcase
    end
  end
endmodule
				
	
	
	