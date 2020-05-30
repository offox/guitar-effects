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
    input 	  csi_clk500,          // clock de 500 KHz
    input         rsi_reset_n,         // reset do avalon
    input         avs_s0_read,         // read
    input         avs_s0_write,        // write
    input  [4:0]  avs_s0_address,      // address - diferenciar regs
    input  [31:0] avs_s0_writedata,    // bus write_data
    output [31:0] avs_s0_readdata      // bus read_data
  );


guitar_effect guitar_effect_inst (
	.clk( csi_clk ),
	.clk_500( csi_clk500 ),
	.reset( rsi_reset_n ),
	.loc_writedata( avs_s0_writedata ),
	.loc_readdata( avs_s0_readdata ),            
	.loc_ramaddress( avs_s0_address ),            
	.loc_ramwrite( avs_s0_write ),
	.loc_ramread( avs_s0_read )
);

endmodule
