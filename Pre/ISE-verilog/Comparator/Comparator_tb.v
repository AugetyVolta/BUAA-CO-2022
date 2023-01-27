`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:56:30 08/17/2022
// Design Name:   comparator
// Module Name:   D:/Desktop/verilog/Comparator/Comparator_tb.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire res;

    // Instantiate the Unit Under Test (UUT)
    comparator uut (
        .clk(clk), 
        .reset(reset), 
        .a(a), 
        .b(b), 
        .res(res)
    );

    initial begin
        clk = 0;
        reset = 0;
        a = 4;
        b = 1;

        #100 b = -1;
    end

endmodule

