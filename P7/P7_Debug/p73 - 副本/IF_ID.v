`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:24 11/04/2022 
// Design Name: 
// Module Name:    IF 
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
module IF_ID(
	input 					clk,
	input						reset,
	input						Req,
	input						IF_ID_en,
	input      	[31:0] 	PC_F,
	input  	  	[31:0] 	Instr_F,
	input						BD_F,
	input			 [4:0]   Exc_Code_F,
	output reg 	[31:0] 	PC_D,
	output reg 	[31:0] 	Instr_D,
	output reg    			BD_D,
	output reg	 [4:0]   Exc_Code_D
    );
	initial begin
		PC_D <= 32'h0000_3000;
		Instr_D <=32'h0000_0000; 
	end
	always@(posedge clk)begin
		if(reset)begin
			PC_D <= 32'h0000_3000;
			Instr_D <=32'h0000_0000;
			BD_D<=1'b0;
			Exc_Code_D<=32'b0;
		end
		else if(Req)begin
			PC_D <= 32'h0000_4180;
			Instr_D <=32'h0000_0000;
			BD_D<=1'b0;
			Exc_Code_D<=32'b0;
		end
		else begin
		if(IF_ID_en == 1)begin
			PC_D <= PC_F;
			Instr_D <= Instr_F;
			BD_D<=BD_F;
			Exc_Code_D<=Exc_Code_F;
		end
		end
	end
endmodule
