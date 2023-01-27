`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:10:37 08/23/2022
// Design Name:   code
// Module Name:   D:/Desktop/ISE-verilog/counter1/code_tb.v
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

module code_tb;

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
		Output0=0;
		Output1=0;
		// Wait 100 ns for global reset to finish
		En=1;
		Sel=1;
		
		
        
		// Add stimulus here

	end
      always #100 Clk=~Clk;
endmodule

