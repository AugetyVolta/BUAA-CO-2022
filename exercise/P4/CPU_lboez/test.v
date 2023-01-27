`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:18 11/15/2022 
// Design Name: 
// Module Name:    test 
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
module test(
    input [31:0] A,
    input [31:0] B,
    output ans,
	 output ans1,
	 output ans2
    );
	assign ans  = A < B;
	assign ans1 = $signed(A)<$signed(B);
	assign ans2 = $signed(A)<$signed(32'b0);

endmodule
