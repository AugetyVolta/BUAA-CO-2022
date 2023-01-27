`timescale 1ns / 1ps
`include "constant.v" 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:21 12/01/2022 
// Design Name: 
// Module Name:    Bridge 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Bridge(
	 input			interrupt,
	 input			Intrespon,
	 output [31:0] m_data_addr,
    input [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,

	 input [31:0] m_data_addr_cpu,
    output [31:0] m_data_rdata_cpu,
    input [31:0] m_data_wdata_cpu,
    input [3:0] m_data_byteen_cpu,
	 
    output [31:0] m_int_addr,
    output [3:0] m_int_byteen,
    
	 input [31:0] TC0_Dout,
	 output [31:0] TC0_Addr,
    output TC0_WE,
    output [31:0] TC0_Din,
    
    input [31:0] TC1_Dout,
	 output [31:0] TC1_Addr,
    output TC1_WE,
    output [31:0] TC1_Din
	 );
	 assign m_data_addr=m_data_addr_cpu;
	 
	 assign m_data_wdata=m_data_wdata_cpu;
	 
	 assign TC0_Addr=m_data_addr_cpu;
	 
	 assign TC1_Addr=m_data_addr_cpu;
	 
	 assign TC0_Din=m_data_wdata_cpu;
	 
	 assign TC1_Din=m_data_wdata_cpu;
	 
	 assign TC0_WE = (m_data_addr_cpu>=32'h7f00&&m_data_addr_cpu<=32'h7f0b)&&(m_data_byteen_cpu!=4'b0);

	 assign TC1_WE = (m_data_addr_cpu>=32'h7f10&&m_data_addr_cpu<=32'h7f1b)&&(m_data_byteen_cpu!=4'b0);
	 
	 assign m_data_rdata_cpu = (m_data_addr_cpu>=32'h7f00&&m_data_addr_cpu<=32'h7f0b)?TC0_Dout:
										(m_data_addr_cpu>=32'h7f10&&m_data_addr_cpu<=32'h7f1b)?TC1_Dout:
										m_data_rdata;
										//m_data_byteen_cpu;
	 assign m_data_byteen = ((m_data_addr_cpu>=32'h7f00&&m_data_addr_cpu<=32'h7f0b)||
									(m_data_addr_cpu>=32'h7f10&&m_data_addr_cpu<=32'h7f1b))? 4'b0:
									(m_data_addr_cpu>=32'h7f20&&m_data_addr_cpu<=32'h7f23&&m_data_byteen_cpu!=4'b0)?  4'b1:m_data_byteen_cpu;
									
	 assign m_int_addr = m_data_addr_cpu;//(interrupt==1'b1&&Intrespon==1'b1)? 32'h7f20:32'b0;
	
	 assign m_int_byteen =m_data_byteen;//(interrupt==1'b1&&Intrespon==1'b1)? 4'b0001: 4'b0;
	 
endmodule
