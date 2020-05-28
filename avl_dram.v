// -----------------  Interface Avalon + componente DPRAM  ------------------//
//
// Proj: avl_meuComp_dpram    
// Rev : 1                        Autor: J Ranhel            data: 2020.03.26
//
// Este arquivo contém a definição da interface AVALON (pelo nome dos sinais)
// conectada a um buffer de 32 wrds x 32 bits instanciado em uma dual-port RAM
// Como a dp-RAM não tem registro na saída, há um reg em paralelo no add 0x1F
// a fim de reter bits de controle para o circuito do componente a ser criado.
// --------------------------------------------------------------------------//

module avl_dpram
  ( 
    input         csi_clk,             // clock do avalon
	 input 		  csi_clk500,          // clock de 500 KHz
    input         rsi_reset_n,         // reset do avalon
    input         avs_s0_read,         // read
    input         avs_s0_write,        // write
    input  [4:0] avs_s0_address,      // address - diferenciar regs
    input  [31:0] avs_s0_writedata,    // bus write_data
    output [31:0] avs_s0_readdata     // bus read_data
  );

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

// meu componente - escreve e lê RAM pelo port B
wire [31:0] Loc_writedata;             // dados a serem gravados na RAM
wire [31:0] Loc_readdata;              // dados a serem lidos da RAM
wire  [4:0] Loc_ramAddress;            // add local da memória
wire         Loc_ramclk;                // clock local da ram
wire         Loc_ramread;               // read
wire         Loc_ramwrite;              // write


guitar_effect guitar_effect_inst (
	.clk( csi_clk500 ),
	.reset(rsi_reset_n),
	.loc_writedata( Loc_writedata ),
	.loc_readdata( Loc_readdata ),            
	.loc_ramaddress( Loc_ramAddress ),            
	.loc_ramclk( Loc_ramclk ),               
	.loc_ramread( avs_s0_read ),            
	.loc_ramwrite( Loc_ramwrite )
);

endmodule
