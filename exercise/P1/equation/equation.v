`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:47 10/06/2022 
// Design Name: 
// Module Name:    equation 
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
module equation(
    input [7:0] in,
    input clk,
    input reset,
    output out
    );
	 reg [2:0] state,next_state;
	parameter start=3'b000, 
				 leftin=3'b001,//字母或或者数字
				 lflag=3'b010,// A+   3+
				 equal=3'b011,  //等号
				 rightin=3'b100, //右边的字母或者数字
				 rflag=3'b101, 	//A+  3+
				 error=3'b110;		// 错误 连着两个数字，符号在前，两个等号，两个符号
	always@(*)begin
		case(state)
		start:
			if(in>="0"&&in<="9"||in>="a"&&in<="z"||in>="A"&&in<="Z")begin
				next_state=leftin;
			end
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		leftin:
			if(in=="+"||in=="-"||in=="*"||in=="/")
				next_state=lflag;
			else if(in=="=")
				next_state=equal;
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		lflag:
			if(in>="0"&&in<="9"||in>="a"&&in<="z"||in>="A"&&in<="Z")begin
				next_state=leftin;
			end
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		equal:
			if(in>="0"&&in<="9"||in>="a"&&in<="z"||in>="A"&&in<="Z")begin
				next_state=rightin;
			end
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		rightin:
			if(in=="+"||in=="-"||in=="*"||in=="/")
				next_state=rflag;
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		rflag:
			if(in>="0"&&in<="9"||in>="a"&&in<="z"||in>="A"&&in<="Z")begin
				next_state=rightin;
			end
			else if(in==" ")
				next_state=state;
			else
				next_state=error;
		error:
				next_state=error;
			default
				next_state=start;
		endcase
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			state=start;
		end
		else begin
			state=next_state;
		end
	end
	assign out=(state==rightin);
endmodule
