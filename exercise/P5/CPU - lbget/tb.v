`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:20:45 11/07/2022
// Design Name:   mips
// Module Name:   D:/Desktop/CO/P5/CPU/tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
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
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);


	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		#1 reset=0;
		// Wait 100 ns for global reset to finish
		#2000;
		  
		// Add stimulus here
	end
      always #1 clk=~clk;
endmodule

