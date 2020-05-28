`timescale 1 ps / 1 ps

module guitar_effect_tb;
  
// Meu componente - escreve e lê RAM pelo port B
wire [31:0] Loc_writedata;  
reg [31:0] Loc_readdata;   
wire  [15:0] Loc_ramAddress; 
wire         Loc_ramclk;     
wire        Loc_ramread;    
wire         Loc_ramwrite; 
reg	 	 Clk,	 Reset;


guitar_effect guitar_effect_inst (
	.clk( Clk ),
	.reset( Reset ),
	.loc_writedata( Loc_writedata ),
	.loc_readdata( Loc_readdata ),            
	.loc_ramaddress( Loc_ramAddress ),            
	.loc_ramclk( Loc_ramclk ),               
	.loc_ramread( Loc_ramread ),            
	.loc_ramwrite( Loc_ramwrite )
);


initial
begin
	Reset = 1'b0; Clk = 1'b1;  Loc_readdata = 32'b1; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b1; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b1; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b1; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b1; #1				
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b1; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b11000001001100000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b11000001001100000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b11000001001100000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b11000001001100000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b11; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b11; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b11; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b11; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
		Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
			Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b1;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	Reset = 1'b1; Clk = 1'b0;  Loc_readdata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Loc_writedata = %x, Loc_readdata = %x, Loc_ramAddress = %x, Loc_ramclk = %x, Loc_ramread = %x, Loc_ramwrite %x ", Reset, Clk, Loc_writedata, Loc_readdata, Loc_ramAddress, Loc_ramclk, Loc_ramread, Loc_ramwrite  );
	
end

    // Reset = 1'b1; Clk = 32'b0; avs_s0_address = 16'b0;  avs_s0_write = 1'b1;    avs_s0_writedata = 32'b11000001001100000000000000000000 ; #1 //input_ = 32'b00111010101010000000000000000000;    #1
    // $display("csi_clk = %x, avs_s0_address = %x, avs_s0_write = %x, avs_s0_writedata = %x", csi_clk, avs_s0_address, avs_s0_write, avs_s0_writedata);
    // Reset = 1'b1; Clk = 32'b1; avs_s0_address = 16'b0;  avs_s0_write = 1'b1;    avs_s0_writedata = 32'b11000001001100000000000000000000 ; #1 //input_ = 32'b00111010101010000000000000000000;    #1	
    // $display("csi_clk = %x, avs_s0_address = %x, avs_s0_write = %x, avs_s0_writedata = %x", csi_clk, avs_s0_address, avs_s0_write, avs_s0_writedata);


// cada vez que houver um write no end 0x00 - copiar p/ reg Rout
//always@(posedge Clk)
//  begin
 //   if (Clk)                  // reset faz resetar M[0]
//      begin
        // Rout <= 32'h0000000F;          // desliga relés
//      end
//  end


endmodule
