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
	reg [7:0] num_1 [0:3];
	reg [7:0] 	ans [0:3];
	reg [7:0]	temp;
	reg [7:0]   temp1;
	wire	[31:0] a;
	integer i;
	integer j;
	always@(*)begin
		temp = 8'b0;
		for(i=0;i<4;i=i+1)begin
			num_1[i]= 8'b0;
		end
		for(i=0;i<4;i=i+1)begin
			ans[i]= 8'b0;
		end
		ans[0]=SrcA[7:0];
		ans[1]=SrcA[15:8];
		ans[2]=SrcA[23:16];
		ans[3]=SrcA[31:24];
		
		for(i=0;i<8;i=i+1)begin
			num_1[0] = num_1[0] + SrcA[i];
		end
		for(i=8;i<16;i=i+1)begin
			num_1[1] = num_1[1] + SrcA[i];
		end
		for(i=16;i<24;i=i+1)begin
			num_1[2] = num_1[2] + SrcA[i];
		end
		for(i=24;i<32;i=i+1)begin
			num_1[3] = num_1[3] + SrcA[i];
		end
		
		for(i=0;i<3;i=i+1)begin
			for(j=0;j<3-i;j=j+1)begin
				if(num_1[j]> num_1[j+1])begin
					temp =ans[j];
					ans[j]=ans[j+1];
					ans[j+1]=temp;
				end
			end
		end
		//$display("%h %h %h %h",ans[3],ans[2],ans[1],ans[0]);
	end
	assign a = {ans[3],ans[2],ans[1],ans[0]};
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
			3'b111:
				ALUresult = a;
		endcase
	end
endmodule
