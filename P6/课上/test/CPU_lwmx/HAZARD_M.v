`timescale 1ns / 1ps
`include "constant.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:39 11/07/2022 
// Design Name: 
// Module Name:    HAZARD_M 
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
module HAZARD_M(
	  input						clk,
	  input 			[1:0] 	Tnew_E,
	  input 			[4:0] 	Num_new_E,
	  input			[31:0]   Instr_M,
	  input						condition,
	  output reg 	[1:0] 	Tnew_M,
	  output reg 	[4:0] 	Num_new_M
    );
	 
	 initial begin
		 Tnew_M <= 2'b00;
		 Num_new_M = 5'bz;
	 end
	 
	 always@(posedge clk)begin
		 Tnew_M <= ((Tnew_E-2'b1) >= 2'b0)? (Tnew_E-2'b1) : 2'b0;
		 Num_new_M <= (Instr_M[31:26]==`lwmx&&condition==1'b1)? 5'd5:
						  (Instr_M[31:26]==`lwmx&&condition==1'b0)? 5'd4:Num_new_E;
	 end
	 
	 
	

endmodule
