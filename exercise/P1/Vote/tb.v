`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:04 10/06/2022
// Design Name:   vote
// Module Name:   D:/Desktop/CO/exercise/P1/Vote/tb.v
// Project Name:  Vote
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vote
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
	reg [31:0] np;
	reg [7:0] vip;
	reg vvip;

	// Outputs
	wire res;

	// Instantiate the Unit Under Test (UUT)
	vote uut (
		.np(np), 
		.vip(vip), 
		.vvip(vvip), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		np = 0;
		vip = 0;
		vvip = 0;

		// Wait 100 ns for global reset to finish
		#5;
		np = 0;
		vip = 8'b00011101;
		vvip = 1;
		#5;
		np=32'b00000000000000000000000011110001;
		vip = 8'b10010010;
		vvip = 1;
        
		// Add stimulus here

	end
      
endmodule

