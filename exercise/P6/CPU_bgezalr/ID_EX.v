`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:54 11/04/2022 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
	input 					clk,
	input						reset,
	input 					ID_EX_clr,
	input       [31:0]   PC_D,
	input  		 [4:0]   A3_D,
	input 		[31:0]	RD1_D,
	input 		[31:0]	RD2_D,
	input 		 [1:0]   RD1_Sel_D,
	input			 [1:0]   RD2_Sel_D,
	input 		[31:0]	EXTImm_D,
	input			[31:0]   Instr_D,
	input			 [4:0]   A2_D,
	input 		 [4:0]	A1_D,
	input						Judge_D,
	output reg 				Judge_E,
	output reg   [4:0]   A1_E,
	output reg   [4:0]   A2_E,
	output reg  [31:0]   Instr_E,
	output reg	[31:0] 	PC_E,
	output reg	 [4:0] 	A3_E,	//要写的寄存器传过去，要进行比较
	output reg	[31:0] 	RD1_E,
	output reg	[31:0] 	RD2_E,
	output reg	[31:0] 	EXTImm_E,
	output reg	 [1:0] 	RD1_Sel_D_reg,
	output reg	 [1:0] 	RD2_Sel_D_reg
	
    );
	 initial begin
				Instr_E <= 32'b0;
				PC_E <= 32'h0000_3000;
				A3_E <= 5'b0;
				RD1_E <= 32'b0;
				RD2_E <= 32'b0;
				EXTImm_E <= 32'b0;
				A2_E <= 5'b0;
				A1_E <= 5'b0;
				RD1_Sel_D_reg<= 2'b0;
				RD2_Sel_D_reg<=2'b0;
				Judge_E<=1'b0;
	 end
	always@(posedge clk)begin
			if(ID_EX_clr||reset)begin
				Instr_E <= 32'b0;
				PC_E <= 32'h3000;
				A3_E <= 5'b0;
				RD1_E <= 32'b0;
				RD2_E <= 32'b0;
				EXTImm_E <= 32'b0;
				A2_E <= 5'b0;
				A1_E <= 5'b0;
				RD1_Sel_D_reg<= 2'b0;
				RD2_Sel_D_reg<=2'b0;
				Judge_E<=1'b0;
			end
			else begin
				Instr_E <= Instr_D;
				PC_E <= PC_D;
				A3_E <= A3_D;
				RD1_E <= RD1_D;
				RD2_E <= RD2_D;
				EXTImm_E <= EXTImm_D;
				A1_E <= A1_D;
				A2_E <= A2_D;
				RD1_Sel_D_reg<= RD1_Sel_D;
				RD2_Sel_D_reg<= RD2_Sel_D;
				Judge_E<=Judge_D;
			end
	end

endmodule
