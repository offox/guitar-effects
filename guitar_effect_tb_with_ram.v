`timescale 1 ps / 1 ps

module guitar_effect_tb;

// HPS port A
reg [15:0] avs_s0_address;         
reg csi_clk;         
reg  [31:0] avs_s0_writedata; 
reg         avs_s0_write;     
wire  [31:0] avs_s0_readdata;  
  
// Meu componente - escreve e lê RAM pelo port B
wire [31:0] Loc_writedata;  
wire [31:0] Loc_readdata;   
wire  [15:0] Loc_ramAddress; 
wire         Loc_ramclk;     
wire         Loc_ramread;    
wire         Loc_ramwrite; 
reg		 	 Reset ;

// instancia memória dual-port RAM na interface...
 ram_port_2	ram_port_2_inst (
  .address_a ( avs_s0_address ),       // endereço do port A é do Avalon
  .address_b ( Loc_ramAddress ),       // end da ram port B é local
  .clock_a   ( csi_clk ),              // clk do port A é do Avalon 
  .clock_b   ( Loc_ramclk ),           // clock do port B também local
  .data_a    ( avs_s0_writedata ),     // dado para port A do Avalon
  .data_b    ( Loc_writedata ),        // dado do port B é local
  .wren_a    ( avs_s0_write ),         // Write_Enable do port A do Avalon
  .wren_b    ( Loc_ramwrite ),         // write_Enable do port B local = '1'
  .q_a       ( avs_s0_readdata ),      // QA é lido diretamente no Avalon
  .q_b       ( Loc_readdata )          // QB local deve ser guardado em um reg
  );


guitar_effect guitar_effect_inst (
	.clk( coe_s0_ge ),
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
    Reset = 1'b1; csi_clk = 32'b0; avs_s0_address = 16'b0;  avs_s0_write = 1'b1;    avs_s0_writedata = 32'b11000001001100000000000000000000 ; #1 //input_ = 32'b00111010101010000000000000000000;    #1
    $display("csi_clk = %x, avs_s0_address = %x, avs_s0_write = %x, avs_s0_writedata = %x", csi_clk, avs_s0_address, avs_s0_write, avs_s0_writedata);
    Reset = 1'b0; csi_clk = 32'b1; avs_s0_address = 16'b0;  avs_s0_write = 1'b1;    avs_s0_writedata = 32'b11000001001100000000000000000000 ; #1 //input_ = 32'b00111010101010000000000000000000;    #1	
    $display("csi_clk = %x, avs_s0_address = %x, avs_s0_write = %x, avs_s0_writedata = %x", csi_clk, avs_s0_address, avs_s0_write, avs_s0_writedata);
end

// cada vez que houver um write no end 0x00 - copiar p/ reg Rout
always@(posedge csi_clk)
  begin
    if (csi_clk)                  // reset faz resetar M[0]
      begin
        // Rout <= 32'h0000000F;          // desliga relés
      end
    else if (avs_s0_write=='b1 && avs_s0_address==5'b00000) // reg em 0x00
      begin
        // Rout <= avs_s0_writedata;      // copia dado para Rout
      end 
  end


endmodule
