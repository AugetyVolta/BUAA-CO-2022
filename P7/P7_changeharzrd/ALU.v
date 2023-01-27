`timescale 1ns / 1ps
`include "constant.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:32 11/04/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	 input					ALU_Ov,
	 input					ALU_DM_Ov,
	 input 		[2:0] 	ALUctrl,
    input 		[31:0] 	SrcA,
    input 		[31:0] 	SrcB,
    input 		 [4:0] 	s,
    output reg [31:0] 	ALUresult,
	 output   				Exc_Ov,				
	 output					Exc_DM_Ov
    );
	wire [32:0] add;
	wire [32:0] sub;
	assign add = {SrcA[31],SrcA}+{SrcB[31],SrcB};
	assign sub = {SrcA[31],SrcA}-{SrcB[31],SrcB};
	assign Exc_Ov = (ALU_Ov==1'b1)&&
						 ((ALUctrl==`aluAdd)&&(add[32]!=add[31])||(ALUctrl==`aluSub)&&(sub[32]!=sub[31]));
	assign Exc_DM_Ov = (ALU_DM_Ov==1'b1)&&
						    ((ALUctrl==`aluAdd)&&(add[32]!=add[31])||(ALUctrl==`aluSub)&&(sub[32]!=sub[31]));						 
	always@(*)begin
		case(ALUctrl)
			`aluAdd:
				ALUresult = SrcA + SrcB;
			`aluSub:
				ALUresult = SrcA - SrcB;
			`aluAnd:
				ALUresult = SrcA & SrcB;
			`aluOr:
				ALUresult = SrcA | SrcB;
			3'b100:
				ALUresult = {SrcB[15:0],{16'b0}};
			3'b101: //slt
				ALUresult = $signed(SrcA)<$signed(SrcB);
			3'b110: //sltu
			   ALUresult = SrcA<SrcB;
		endcase
	end
	
endmodule
