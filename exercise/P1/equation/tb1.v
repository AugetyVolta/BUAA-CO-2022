`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:42 10/06/2022
// Design Name:   equation
// Module Name:   D:/Desktop/CO/exercise/P1/equation/tb1.v
// Project Name:  equation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: equation
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
	reg [7:0] in;
	reg clk;
	reg reset;

	// Outputs
	wire out;
	reg [0:1023] data;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	equation uut (
		.in(in), 
		.clk(clk), 
		.reset(reset), 
		.out(out)
	);

initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		reset = 1;
		data="A = B =  A+1+2*3/4 -5";
		while(!data[0:7])
		data=data<<8;
		// Wait 100 ns for global reset to finish
		#5;
		reset=0;
		for(i=0;i<100;i=i+1)begin
			in=data[0:7];
			data=data<<8;
			#10;
		end
		// Add stimulus here
		


	end
      always #5 clk=~clk;
endmodule

