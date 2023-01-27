`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:19 11/04/2022 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input 	[31:0]	 RD1,
    input 	[31:0] 	 RD2,
    input 	[2:0] 	 CMPop,
    output  		    Judge
    );
	wire ans;
	assign ans =   $signed(RD1)  <  $signed(32'b0);
	assign Judge = (CMPop == 3'b000) ? (RD1 == RD2):
						(CMPop == 3'b001) ? (RD1 != RD2):
						(CMPop == 3'b010) ? (RD1  < RD2):
						(CMPop == 3'b011) ? (RD1  > RD2):
						(CMPop == 3'b100) ? (RD1[31]==1'b1)       :
						(CMPop == 3'b111) ? (RD1 >= RD2):1'b0;
	endmodule
