`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:22:41 10/07/2022
// Design Name:   test
// Module Name:   D:/Desktop/CO/exercise/P1/test/tb.v
// Project Name:  test
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

module tb;

	// Inputs
	reg [23:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = "ab";
		while(!in[23:16])begin
			in=in<<8;
		end
		// Wait 100 ns for global reset to finish
		#100;
        
		  
		// Add stimulus here

	end
      
endmodule

