`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:07 10/05/2022
// Design Name:   BlockChecker
// Module Name:   D:/Desktop/Logisim project/P1/BlockChecker/Block.v
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

module Block;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

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
		in = "a";

		// Wait 100 ns for global reset to finish
		#5 reset=0;
//		#10 in=" ";
//		#10 in="B";
//		#10 in="E";
//		#10 in="G";
//		#10 in="i";
//		#10 in="N";
//		#10 in="N";
		#10 in=" ";
		#10 in="E";
		#10 in="n";
		#10 in="d";
//		#10 in="c";
		#10 in=" ";
		#10 in="B";
		#10 in="E";
		#10 in="G";
		#10 in="i";
		#10 in="N";
		#10 in=" ";
		#10 in="E";
		#10 in="n";
		#10 in="d";
		#10 in=" ";
		#10 in="E";
		#10 in="n";
		#10 in="d";
		#10 in=" ";
		#10 in=" ";
		#10 in=" ";
		reset=1;
		
		
		#10 reset=0;
		#10 in="B";
		#10 in="E";
		#10 in="G";
		#10 in="i";
		#10 in="N";
		#10 in=" ";
		#10 in="B";
		#10 in="E";
		#10 in="G";
		#10 in="i";
		#10 in="N";
		#10 in=" ";
		#10 in="E";
		#10 in="n";
		#10 in="d";
		#10 in=" ";
		#10 in="E";
		#10 in="n";
		#10 in="d";
		#10 in=" ";
		
		#30;
		
        
		  
		// Add stimulus here

	end
   always #5 clk=~clk;
endmodule

