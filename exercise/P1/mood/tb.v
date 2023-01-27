`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:07 10/06/2022
// Design Name:   Mood
// Module Name:   D:/Desktop/CO/exercise/P1/mood/tb.v
// Project Name:  mood
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mood
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
	reg [1:0] sign;
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] status;

	// Instantiate the Unit Under Test (UUT)
	Mood uut (
		.sign(sign), 
		.clk(clk), 
		.reset(reset), 
		.status(status)
	);

	initial begin
		// Initialize Inputs
		sign = 0;
		clk = 0;
		reset = 1;
		#5;
		// Wait 100 ns for global reset to finish
		reset=0;
		#10 sign=2'b00;
		#10 sign=2'b00;
		#10 sign=2'b00;
		#10 sign=2'b00;//пя
		#10 sign=2'b01;
		#10 sign=2'b01;
		#10 sign=2'b01;
		#10 sign=2'b10;
		#20;
		
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

