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
	input       [31:0]   PC_E,
	input  		 [4:0]   A3_E,
	input 		[31:0]	Instr_E,
	input			[31:0]   RD2_E,
	input			[31:0]	ALUresult_E,
	input 		 [4:0]	A2_E,
	output reg   [4:0]	A2_M,
	output reg  [31:0]	PC_M,
	output reg   [4:0]   A3_M,
	output reg  [31:0]   Instr_M,
	output reg  [31:0]   ALUresult_M,
	output reg  [31:0]   RD2_M
    );
	 initial begin
		PC_M <= 32'h0000_3000;
		A3_M <= 5'b0;
		Instr_M <= 32'b0;
		ALUresult_M <= 32'b0;
		RD2_M <= 32'b0;
		A2_M <= 5'b0;
	 end
	always@(posedge clk)begin
		if(reset)begin
		PC_M <= 32'h0000_3000;
		A3_M <= 5'b0;
		Instr_M <= 32'b0;
		ALUresult_M <= 32'b0;
		RD2_M <= 32'b0;
		A2_M <= 5'b0;
		end
		else begin
		PC_M <= PC_E;
		A3_M <= A3_E;
		Instr_M <= Instr_E;
		ALUresult_M <= ALUresult_E;
		RD2_M <= RD2_E;
		A2_M <= A2_E;
		end
	end

endmodule
