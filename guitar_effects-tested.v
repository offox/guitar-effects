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

parameter [5:0] S0=5'd0, S0A=5'd1, S0B=5'd40, S1=5'd10, S1A=5'd11, S1B=5'd12, S2=5'd13, S2A=5'd45;

reg [5:0] stt;

reg [31:0] rascunho;

reg [7:0] count;


always@(posedge clk or negedge reset)
begin
   if (reset == 'b0)
	begin
		stt <= S0;
		count <= 0;
	end 
	else
	begin
		 case(stt)
			S0:
			begin           
				loc_ramclk <= 'b0;    			
				loc_ramaddress <= ADD_DISTORRION_BOOST; 
				loc_ramwrite <= 'b0;
				stt <= S0A;
			end
			S0A:
			begin
				loc_ramclk <= 'b1;
				rascunho <= loc_readdata;
				stt <= S0B;
			end	
			S0B:
			begin
				loc_ramclk <= 'b0;  
				stt <= S1;
			end 
			S1:
			begin           
				loc_ramclk <= 'b0;    				
				loc_ramaddress <= ADD_OUTPUT; 
				loc_writedata <= rascunho;
				loc_ramwrite <= 'b1;
				stt <= S1A;
			end
			S1A:
			begin
				loc_ramclk <= 'b1;
				stt <= S1B;
			end	
			S1B:
			begin
				count <= 8'd255;
				loc_ramwrite <= 'b0;
				stt <= S2;
			end
			S2:
			begin
				count <= count - 1;
				stt <= S2A;
			end
			S2A:
			begin
				if (count == 0)
				begin
					stt <= S0;
				end
				else
				begin
					stt <= S2;
				end
			end
			
		endcase
    end
end
 
endmodule
