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
	 output [31:0] m_data_addr,
    input [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [4:0] m_data_byteen,

	 input [31:0] m_data_addr_cpu,
    output [31:0] m_data_rdata_cpu,
    input [31:0] m_data_wdata_cpu,
    input [4:0] m_data_byteen_cpu,
	 
    output [31:0] m_int_addr,
    output [4:0] m_int_byteen,
    
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
	 assign TC0_WE = (m_data_addr_cpu>=32'h7f00&&m_data_addr_cpu<=32'h7f0b)&&(m_data_byteen_cpu!=5'b0);
	 assign TC1_WE = (m_data_addr_cpu>=32'h7f10&&m_data_addr_cpu<=32'h7f1b)&&(m_data_byteen_cpu!=5'b0);
	 assign m_data_rdata_cpu = (m_data_addr_cpu>=32'h7f00&&m_data_addr_cpu<=32'h7f0b)?TC0_Dout:
										(m_data_addr_cpu>=32'h7f10&&m_data_addr_cpu<=32'h7f1b)?TC1_Dout:
										m_data_rdata;
	 assign m_data_byteen =m_data_byteen_cpu;
endmodule
