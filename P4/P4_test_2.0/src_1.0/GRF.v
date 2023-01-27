`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:02 10/27/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
	 input clk,
	 input reset,
	 input WE,
	 input [31:0] PC,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2
    );
	integer i=0;
	wire[31:0] wd; 
	reg [31:0] regester[0:31];
	assign RD1=regester[A1];
	assign RD2=regester[A2];
	assign wd=(A3==5'b00000)?32'b0:WD;
	always@(posedge clk)begin
		if(reset==1)begin
			for(i=0;i<32;i=i+1)begin
				regester[i]<=32'b0;
			end
		end
		else begin
			if(WE==1)begin
				regester[A3]<=wd;
				$display("@%h: $%d <= %h", PC, A3, wd);
			end
		end
	end
endmodule
