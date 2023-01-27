`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:33 10/06/2022
// Design Name:   bitcheck
// Module Name:   D:/Desktop/CO/P1/checkbit/tb.v
// Project Name:  checkbit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitcheck
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
	reg [31:0] date;
	reg fun;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	bitcheck uut (
		.date(date), 
		.fun(fun), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		date = 32'b000000100001001;
		fun =0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

