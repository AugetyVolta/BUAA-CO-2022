`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:46 10/09/2022
// Design Name:   string2
// Module Name:   D:/Desktop/CO/exercise/P1/string2/tb.v
// Project Name:  string2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string2
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
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;
	integer i;
	reg [0:1023] data;
	// Instantiate the Unit Under Test (UUT)
	string2 uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 1;
		in = 0;
		data="      ";
		while(!data[0:7])
		data=data<<8;
		#5
		// Wait 100 ns for global reset to finish
		clr=0;
		for(i=0;i<24;i=i+1)begin
			in=data[0:7];
			data=data<<8;
			#10;
		end
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

