`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:34 08/24/2022
// Design Name:   x1
// Module Name:   D:/Desktop/ISE-verilog/eight_X_one/x1_tb.v
// Project Name:  eight_X_one
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module x1_tb;

	// Inputs
	reg clk;
	reg enable;
	reg S;
	reg A;
	reg B;
	reg C;
	
	// Outputs
	wire [7:0] Q;
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	x1 uut (
		.clk(clk), 
		.enable(enable), 
		.S(S), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Z(Z),
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		enable = 0;
		S = 0;
		A = 0;
		B = 0;
		C = 0;
		// Wait 100 ns for global reset to finish
		#100;
		enable=1;
		S=1;
		#100
		S=0;
		#700
		enable=0;
		A=1;
		B=0;
		C=1;
		#100
		B=1;
		C=0;
		#100
		C=1;
		#100
		A=0;
		B=0;
		C=0;
		
        
		// Add stimulus here

	end
   always #50 clk=~clk;  
endmodule

