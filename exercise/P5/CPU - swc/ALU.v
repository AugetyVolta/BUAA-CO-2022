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
    input 		[2:0] 	ALUctrl,
    input 		[31:0] 	SrcA,
    input 		[31:0] 	SrcB,
    input 		 [4:0] 	s,
    output reg [31:0] 	ALUresult
    );
	reg [31:0] ans;
	integer i;
	always@(*)begin
		ans = SrcA;
		if(SrcB[0]==1'b1)begin
			for(i=0;i<SrcB[4:0];i=i+1)begin //×óÒÆ
				ans = {ans[30:0],ans[31]};
			end
		end
		else begin
			for(i=0;i<SrcB[4:0];i=i+1)begin//ÓÒÒÆ
				ans = {ans[0],ans[31:1]};
			end
		end
	end
	
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
			3'b101:
				ALUresult = {SrcB[15:0],{16'b0}};
			3'b111:
				ALUresult = ans;
		endcase
	end
endmodule
