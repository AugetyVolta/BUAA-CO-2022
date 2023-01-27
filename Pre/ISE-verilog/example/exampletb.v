`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:30 09/25/2022
// Design Name:   example
// Module Name:   D:/Desktop/ISE-verilog/example/exampletb.v
// Project Name:  example
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: example
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exampletb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg C;

	// Instantiate the Unit Under Test (UUT)
	example uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end  
endmodule

