module guitar_effect (
	input 	clk,
	input 	reset,
	input		[31:0] 	loc_readdata,
	output  reg	[31:0] 	loc_writedata,
	output 	reg	[4:0]	loc_ramaddress,            
	output 	reg	loc_ramclk,               
	output	reg	loc_ramread,              
	output  reg   loc_ramwrite
);

parameter ADD_SE 					= 5'b00000;
parameter ADD_DISTORRION_GAIN		= 5'b00001;
parameter ADD_DISTORRION_BOOST		= 5'b00010;
parameter ADD_INPUT					= 5'b00011;
parameter ADD_READ_FINISH			= 5'b00100;
parameter ADD_OUTPUT				= 5'b00101;
parameter ADD_READY_TO_GET			= 5'b00110;

reg  [31:0] 	input_;
reg  [31:0] 	select_effect_;

parameter [5:0] S0=5'd0, S0A=5'd1, S0B=5'd2, S0C=5'd3, S0D=5'd4, S0E=5'd5, S0F=5'd6, S0G=5'd7, S0H=5'd8, S0I=5'd9, S1=5'd10, S1A=5'd11, S2=5'd12, S2A=5'd13, S3=5'd14, S3A=5'd15, S3B=5'd16, S3C=5'd17, S3D=5'd18, S4=5'd19, S4A=5'd20, S5=5'd21, S5A=5'd22;

reg [5:0] stt;


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
				loc_ramclk <= 'b0;    
				loc_writedata <= 32'd1100;				
				loc_ramaddress <= ADD_READY_TO_GET; 
				//loc_ramread <= 'b0;
				loc_ramwrite <= 'b1;
				stt <= S0A;
			end
			S0A:
			begin
				loc_ramclk <= 'b1;
				loc_ramwrite <= 'b0;
				stt <= S0;
			end	
		endcase
    end
end
 
endmodule