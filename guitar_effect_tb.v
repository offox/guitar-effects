`timescale 1 ps / 1 ps

module guitar_effect_tb;
  
// Meu componente - escreve e lê RAM pelo port B
reg 	[31:0] 	writedata;  
wire		[31:0] 	readdata;   
reg  	[4:0] 	address; 
wire        	read;    
reg	        	write; 
reg    	    	Clk, Clk_500, Reset;

parameter ADD_DISTORTION_GAIN			= 5'b00001;
parameter ADD_DISTORTION_BOOST			= 5'b00010;
parameter ADD_STATUS				= 5'b00011;
parameter ADD_OUTPUT				= 5'b00101;
parameter ADD_INPUT				= 5'b00110;

guitar_effect guitar_effect_inst (
	.clk( Clk ),
	.clk_500( Clk_500 ),
	.reset( Reset ),
	.avl_readdata( readdata ),
	.avl_writedata( writedata ),            
	.avl_address( address ),            
	.avl_read( read ),            
	.avl_write( write )
);

initial
begin

	Reset = 1'b0; Clk = 1'b1; Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00000; write = 'b1; writedata = 32'd0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0;#1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00001; write = 'b1; writedata = 32'b11000001001100000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0;#1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00010; writedata = 32'b11000001001100000000000000000000; write = 'b1; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101;  write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00111; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111011100000100000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b0;  Clk_500 = 1'b0; address = 5'b00101; write = 'b1; writedata = 32'b00111010101010000000000000000000; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	Reset = 1'b1; Clk = 1'b1;  Clk_500 = 1'b1; write = 'b0; #1
	$display("Reset = %x, Clk = %x, Clk_500 = %x, writedata = %x, readdata = %x, address = %x, read = %x, write %x ", Reset, Clk, Clk_500, writedata, readdata, address, read, write  );
	
end


endmodule
