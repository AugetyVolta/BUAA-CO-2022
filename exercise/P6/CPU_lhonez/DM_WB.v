`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:06 11/04/2022 
// Design Name: 
// Module Name:    DM_WB 
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
module DM_WB(
	input clk,
	input 					reset,
	input       [31:0]   PC_M,
	input  		 [4:0]   A3_M,
	input 		[31:0]	Instr_M,
	input			[31:0]	ALUresult_M,
	input			[31:0]   RD_M,
	input						Judge_M,
	input						condition,
	output reg           condition_WB,
	output reg				Judge_WB,
	output reg	[31:0]	PC_WB,
	output reg   [4:0]   A3_WB,
	output reg  [31:0]   Instr_WB,
	output reg	[31:0]	ALUresult_WB,
	output reg	[31:0]	RD_WB
    );
	initial begin
			PC_WB <= 32'h0000_3000;
			A3_WB <= 5'b0;
			Instr_WB <= 32'b0;
			ALUresult_WB <= 32'b0;
			RD_WB <= 32'b0;
			Judge_WB<=1'b0;
			condition_WB<=1'b0;
	end
	always@(posedge clk)begin
		if(reset)begin
			PC_WB <= 32'h0000_3000;
			A3_WB <= 5'b0;
			Instr_WB <= 32'b0;
			ALUresult_WB <= 32'b0;
			RD_WB <= 32'b0;
			Judge_WB<=1'b0;
			condition_WB<=1'b0;
		end
		else begin
			PC_WB <= PC_M;
			A3_WB <= A3_M;
			Instr_WB <= Instr_M;
			ALUresult_WB <= ALUresult_M;
			RD_WB <= RD_M;
			Judge_WB<=Judge_M;
			condition_WB<=condition;
		end
	end

endmodule
