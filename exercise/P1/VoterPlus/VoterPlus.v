`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:47 10/09/2022 
// Design Name: 
// Module Name:    VoterPlus 
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
module VoterPlus(
    input clk,
    input reset,
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output [7:0] result
    );
	reg [7:0] cnt;
	integer i;
	reg [31:0] np1;
	reg [7:0] vip1;
	reg vvip1;
	always@(posedge clk,posedge reset)begin
		np1=np1|np;
		vip1=vip1|vip;
		vvip1=vvip1|vvip;
		if(reset==1)begin
			cnt=8'b0;
			np1=32'b0;
			vip1=8'b0;
			vvip1=0;
		end
		else begin
			cnt=8'b0;
			for(i=0;i<32;i=i+1)begin
				if(np1[i])begin
					cnt=cnt+8'b1;
				end
			end
			for(i=0;i<8;i=i+1)begin
				if(vip1[i])begin
					cnt=cnt+4*8'b1;
				end
			end
			if(vvip1==1)begin
				cnt=cnt+16*8'b1;
			end
		end
	end
	assign result=cnt;
endmodule
