`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:07:47 08/23/2022
// Design Name:   id_fsm
// Module Name:   D:/Desktop/ISE-verilog/id_fsm/id_fsm_tb.v
// Project Name:  id_fsm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_fsm_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      #50 char=8'd97;
		#50 char=8'd98;
		#50 char=8'd99;
		#50 char=8'd100;
		#50 char=8'd49;
		#50 char=8'd50;
		#50 char=8'b100;
		// Add stimulus here

	end
     always #50 clk=~clk;
endmodule

