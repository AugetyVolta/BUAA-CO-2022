`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:54:09 10/07/2022
// Design Name:   datecheck
// Module Name:   D:/Desktop/CO/exercise/P1/date/tb.v
// Project Name:  date
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datecheck
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
	reg [7:0] char;
	reg reset;

	// Outputs
	wire out;
	integer i;
	reg [0:1023] data;
	// Instantiate the Unit Under Test (UUT)
	datecheck uut (
		.clk(clk), 
		.char(char), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		char = 0;
		reset = 1;
		data="2012/5/31";
		#5;
		reset=0;
		while(!data[0:7])begin
			data=data<<8;
		end
		for(i=0;i<20;i=i+1)begin
			char=data[0:7];
			data=data<<8;
			#10;
		end
		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		
	end
      always #5 clk=~clk;
endmodule

