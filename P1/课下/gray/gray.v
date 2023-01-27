`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:16 10/04/2022 
// Design Name: 
// Module Name:    gray 
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
`define S0 3'b000
`define S1 3'b001
`define S2 3'b011
`define S3 3'b010
`define S4 3'b110
`define S5 3'b111
`define S6 3'b101
`define S7 3'b100
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
	reg [2:0] state,next_state;
	reg flag=0;
	always@(*)begin
		if(En==0)
		next_state=state;
		else begin
		case(state)
		`S0:
			next_state=`S1;
		`S1:
			next_state=`S2;
		`S2:
			next_state=`S3;
		`S3:
			next_state=`S4;
		`S4:
			next_state=`S5;
		`S5:
			next_state=`S6;
		`S6:
			next_state=`S7;
		`S7:
			next_state=`S0;
		endcase
		end
	end
	always@(posedge Clk)begin
		if(Reset==1)begin
			state=`S0;
			flag=0;
		end
		else begin
			if(next_state==`S0)
			flag=1;
			state=next_state;
		end
	end
	assign Output=state;
	assign Overflow=flag;
endmodule
