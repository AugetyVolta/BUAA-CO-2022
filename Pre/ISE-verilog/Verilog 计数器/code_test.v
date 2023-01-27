`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:21:52 08/23/2022
// Design Name:   code
// Module Name:   D:/Desktop/ISE-verilog/counter1/code_test.v
// Project Name:  counter1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module code_test;

	// Inputs
	reg Clk;
	reg Reset;
	reg Sel;
	reg En;

	// Outputs
	wire [63:0] Output0;
	wire [63:0] Output1;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.Sel(Sel), 
		.En(En), 
		.Output0(Output0), 
		.Output1(Output1)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		Sel = 0;
		En = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
      En=1;
		Sel=0;
		// Add stimulus here
		#400;
	end
      always #50 Clk=~Clk;
endmodule

