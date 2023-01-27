`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:56 10/27/2022 
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
    input [31:0] SrcA,
    input [31:0] SrcB,
    input [2:0] ALUop,
    output Equal,
    output Less,
    output [31:0] ALUResult
    );
	integer i;
	reg [31:0] cnt1;
	reg [31:0] cnt2;
	always @(*)begin
		cnt1=32'b0;
		cnt2=32'b0;
		i=0;
		while((i<32)&&SrcA[i]== 32'b0)begin
			cnt1=cnt1+32'b1;
			i=i+1;
		end
		i=0;
		while((i<32)&&SrcB[i]==32'b0)begin
			cnt2=cnt2+32'b1;
			i=i+1;
		end
	end
	assign Equal=(SrcA==SrcB);
	assign Less=(SrcA<SrcB);
	assign ALUResult=(ALUop==3'b000)?SrcA+SrcB:
						  (ALUop==3'b001)?SrcA-SrcB:
						  (ALUop==3'b010)?SrcA|SrcB:
						  (ALUop==3'b011)?SrcA&SrcB:
						  (ALUop==3'b100)?SrcA>>SrcB:
						  (ALUop==3'b101)?$signed($signed(SrcA)>>>SrcB):
						  (ALUop==3'b110)?(SrcA<SrcB):
						  (ALUop==3'b111)?(cnt1==cnt2):32'b0;
endmodule
