`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:33:15 10/06/2022
// Design Name:   BlockChecker
// Module Name:   D:/Desktop/BlockChecker/tb1.v
// Project Name:  BlockChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
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
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;
	reg [0:1023] data;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		
		clk = 0;
		reset = 1;
		in = 0;
		data ="begin enDbegin xyzz eNd BeGin begin end endbegin end ";//Ò»¸ö×Ö·ûÕ¼8bit 1byte
		#1;
		reset=0;
		while(!data[0:7])
			data=data<<8;
		// Wait 100 ns for global reset to finish
		for(i=0;i<53;i=i+1)begin
			in=data[0:7];
			data=data<<8;
			#2;
		end
        
		// Add stimulus here

	end
   always #1 clk=~clk;
endmodule

