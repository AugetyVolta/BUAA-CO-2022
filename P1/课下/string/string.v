`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:16:45 10/04/2022 
// Design Name: 
// Module Name:    string 
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
`define S0  3'b000//³õÊ¼×´Ì¬
`define S1	3'b001//ÊäÈëÒ»¸öÊı×Ö
`define S2  3'b010 //Êı×Ö¼Ó·ûºÅ
`define S3  3'b011//Êı×Ö·ûºÅÊı×Ö F
`define S4  3'b100 //F+·ûºÅ
`define S5 	3'b101 //ÓÀÔ¶ËÀÍö
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	reg [2:0] state,next_state;
	always@(*)begin
	case(state)
		`S0:
			if(in>="0"&&in<="9")
				next_state=`S1;
			else if(in=="*"||in=="+")
				next_state=`S5;
		`S1:
			if(in=="*"||in=="+")
				next_state=`S2;
			else
				next_state=`S5;
		`S2:
			if(in>="0"&&in<="9")
				next_state=`S3;
			else if(in=="*"||in=="+")
				next_state=`S5;
		`S3:
			if(in>="0"&&in<="9")
				next_state=`S5;
			else if(in=="*"||in=="+")
				next_state=`S4;
		`S4:
			if(in>="0"&&in<="9")
				next_state=`S3;
			else
				next_state=`S5;
		`S5:
			next_state=`S5;
		default
		state=`S0;	
	endcase
	end
	always@(posedge clk,posedge clr)begin
		if(clr==1)
		state=`S0;
		else
		state=next_state;
	end
	assign out=(state==`S1|state==`S3)?1:0;
endmodule
