`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:14:13 08/17/2022
// Design Name:   com
// Module Name:   D:/Desktop/verilog/Comparator/com_tb.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: com
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module com_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire res;

	// Instantiate the Unit Under Test (UUT)
	com uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 1;
		b = 4;

		// Wait 100 ns for global reset to finish
		#100 b=-1;
        
		// Add stimulus here

	end
      
endmodule

