`timescale 1ns / 1ps
`include "constant.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:19 11/04/2022 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input 	[31:0]	 RD1,
    input 	[31:0] 	 RD2,
    input 	[2:0] 	 CMPop,
    output  		    Judge
    );
	assign Judge = (CMPop == `equal)   	  ? (RD1 == RD2):
						(CMPop == `n_equal) 	  ? (RD1 != RD2):
						(CMPop == `less)       ? (RD1  < RD2):
						(CMPop == `big)     	  ? (RD1  > RD2):
						(CMPop == `less_equal) ? (RD1 <= RD2):
						(CMPop == `big_equal)  ? (RD1 >= RD2):
						(CMPop == 3'b111)?(RD2==32'b0):1'b0;
endmodule
