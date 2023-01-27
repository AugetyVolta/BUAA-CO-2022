`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:34 10/10/2022 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
    input clk,
    input reset,
    input in,
    output out
    );
	reg [5:0] data;
	initial begin
		data=6'b0;
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			data=6'b0;
		end
		else begin
			data=data<<1;
			data[0]=in;
		end
	end
	assign out=(data==6'b110011);
endmodule
