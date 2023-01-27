`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:11 11/04/2022 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input 	[15:0] 	Imm,
    input 				EXTop,
    output	[31:0] 	EXTImm
    );
	assign EXTImm = (EXTop==0) ? {{16{1'b0}},Imm}   :
										  {{16{Imm[15]}},Imm};
endmodule
