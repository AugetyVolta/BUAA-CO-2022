`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:47 11/15/2022
// Design Name:   test
// Module Name:   D:/Desktop/CO/exercise/P4/CPU_lboez/tb1.v
// Project Name:  CPU
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

module tb1;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire ans;
	wire ans1;
	wire ans2;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.A(A), 
		.B(B), 
		.ans(ans), 
		.ans1(ans1), 
		.ans2(ans2)
	);

	initial begin
		// Initialize Inputs
		A = -1;
		B = 0;
		#10;
		A = -5;
		B = -7;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

