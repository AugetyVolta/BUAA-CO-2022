`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:06 08/17/2022 
// Design Name: 
// Module Name:    com 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module com(
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output res
    );

     assign res = $signed(a) > $signed(b);;

endmodule
