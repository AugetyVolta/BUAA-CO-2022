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
	assign Equal=(SrcA==SrcB);
	wire [31:0] ans;
	reg [31:0] A;
	integer i;
	always @(*)begin
		A = 32'b0;
		for(i=0;i<SrcB && i<32;i=i+1)begin
			A[i] = ~SrcA[i];
		end
		for(i=SrcB;i<32;i=i+1)begin
			A[i] = SrcA[i];
		end
	end
	assign ans = A;
	assign Less=(SrcA<SrcB);
	assign ALUResult=(ALUop==3'b000)?SrcA+SrcB:
						  (ALUop==3'b001)?SrcA-SrcB:
						  (ALUop==3'b010)?SrcA|SrcB:
						  (ALUop==3'b011)?SrcA&SrcB:
						  (ALUop==3'b100)?ans:
						  (ALUop==3'b101)?$signed($signed(SrcA)>>>SrcB):
						  (ALUop==3'b110)?(SrcA<SrcB):
						  (ALUop==3'b111)?(SrcA<<SrcB):32'b0;
endmodule
