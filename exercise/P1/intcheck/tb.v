`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:54 10/09/2022
// Design Name:   intcheck
// Module Name:   D:/Desktop/CO/exercise/P1/intcheck/tb.v
// Project Name:  intcheck
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: intcheck
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
	reg [7:0] in;

	// Outputs
	wire out;
	reg [0:1023] data;
	integer i=0;
	// Instantiate the Unit Under Test (UUT)
	intcheck uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		in = 0;
		data="int A ,  ____b   ; int i , int_i , iint; int int; int a;";
		while(!data[0:7])
		data=data<<8;
		#5
		reset=0;
		for(i=0;i<56;i=i+1)begin
			in=data[0:7];
			data=data<<8;
			#10;
		end

	end
      always #5 clk=~clk;
endmodule

