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
	reg [31:0] temp;
	reg [31:0] ans;
	always@(*)begin
		temp=32'b0;
		ans=32'b0;
		temp = SrcA+SrcB;
		temp = -temp;
		if($signed(temp)>=$signed(32'b0))begin
			ans = temp;
		end
		else begin
			ans = ~(temp-32'b1);
			ans = {1'b1,ans[30:0]};
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
