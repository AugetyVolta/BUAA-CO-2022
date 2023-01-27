`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:12 10/09/2022
// Design Name:   drink
// Module Name:   D:/Desktop/CO/exercise/P1/sell/tb.v
// Project Name:  sell
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: drink
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
	reg [1:0] coin;

	// Outputs
	wire drink;
	wire [1:0] back;
	reg [0:1023] data;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	drink uut (
		.clk(clk), 
		.reset(reset), 
		.coin(coin), 
		.drink(drink), 
		.back(back)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		coin = 0;
		data=1024'b010101010101001001100101101010100101011100;
		#5;
		reset=0;
		
		// Wait 100 ns for global reset to finish
		for(i=0;i<512-21;i=i+1)begin
			data=data<<2;
		end
		for(i=0;i<21;i=i+1)begin
			coin=data[0:1];
			data=data<<2;
			#10;
		end
       #10;
		// Add stimulus here

	end
   always #5 clk=~clk;
endmodule

