`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:22 11/04/2022 
// Design Name: 
// Module Name:    EX_DM 
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
module EX_DM(
	input 					clk,
	input						reset,
	input						Req,
	input       [31:0]   PC_E,
	input  		 [4:0]   A3_E,
	input 		[31:0]	Instr_E,
	input			[31:0]   RD2_E,
	input			[31:0]	ALUresult_E,
	input 		 [4:0]	A2_E,
	input						Judge_E,
	input						BD_E,
	input			 [4:0]	Exc_Code_E,
	input						Exc_DM_Ov,
	output reg           BD_M,
	output reg	 [4:0]	Exc_Code_M,
	output reg				DM_Ov,
	output reg				Judge_M,
	output reg   [4:0]	A2_M,
	output reg  [31:0]	PC_M,
	output reg   [4:0]   A3_M,
	output reg  [31:0]   Instr_M,
	output reg  [31:0]   ALUresult_M,
	output reg  [31:0]   RD2_M
    );
	 
	always@(posedge clk)begin
		if(reset||Req)begin
		PC_M <= (Req==1'b1)?32'h4180:32'h0000_3000;
		A3_M <= 5'b0;
		Instr_M <= 32'b0;
		ALUresult_M <= 32'b0;
		RD2_M <= 32'b0;
		A2_M <= 5'b0;
		Judge_M<=1'b0;
		BD_M<=1'b0;
		Exc_Code_M<=5'b0;
		DM_Ov<=1'b0;
		end
		else begin
		PC_M <= PC_E;
		A3_M <= A3_E;
		Instr_M <= Instr_E;
		ALUresult_M <= ALUresult_E;
		RD2_M <= RD2_E;
		A2_M <= A2_E;
		Judge_M<=Judge_E;
		BD_M<=BD_E;
		Exc_Code_M<=Exc_Code_E;
		DM_Ov<=Exc_DM_Ov;
		end
	end

endmodule
