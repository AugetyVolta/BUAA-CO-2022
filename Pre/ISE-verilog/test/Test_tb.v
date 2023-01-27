`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:55 09/27/2022
// Design Name:   test
// Module Name:   D:/Desktop/ISE-verilog/Test/Test_tb.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_tb;

	// Inputs
	reg clk;
	reg A;
	reg B;
	reg C;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.C(C), 
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		A = 0;
		B = 0;
		C = 1;
		op = 0;
		#2 A=0;
		#2 A=1;
		#2 A=1;
		#2 A=1;
		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here

	end
   always #1 clk=~clk;
endmodule

