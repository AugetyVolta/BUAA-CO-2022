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
	 input [15:0] Imm,
    output Equal,
    output Less,
    output [31:0] ALUResult
    );
	wire [31:0] ans;
	reg [31:0] num;
	reg [31:0] A;
	integer i;
	always @(*)begin
		num = 32'b0;
		A = 32'b0;
		for(i=0;i<16;i=i+1)begin
			if(Imm[i]==1'b1)
				num= num +32'b1;
		end
		if(Imm<= 16'd32) begin
		for(i=31;i>=0&&i>=(32-Imm);i=i-1)begin
			   A[i] = ~SrcB[i];
		end
		for(i=(32-Imm-1);i>=0;i=i-1)begin
			   A[i] = SrcB[i];
		end
		end
		else begin
				A = ~SrcB;
		end
	end
	assign ans = $signed($signed(A)>>>num);
	assign Equal=(SrcA==SrcB);
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
