`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:05 08/24/2022 
// Design Name: 
// Module Name:    x1 
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
module x1 (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z,
	 output reg [7:0] Q
	 );
    reg [2:0] status;
    
    always@(posedge clk)begin
        status={A,B,C}; 
        if(enable==1)
            Q={Q[6:0],S};
        else Q=Q;
    end
    assign Z=Q[{A,B,C}];//应该随时输出而不是只在时钟周期内输出
endmodule
