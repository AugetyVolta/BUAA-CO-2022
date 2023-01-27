`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:36 10/09/2022 
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
	reg [2:0] state,next_state;
	parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;
	always@(*)begin
		case(state)
		S0:
			if(in==0)
			next_state=S0;
			else
			next_state=S1;
		S1:
			if(in==0)
			next_state=S0;
			else
			next_state=S2;
		S2:
			if(in==0)
			next_state=S3;
			else
			next_state=S2;
		S3:
			if(in==0)
			next_state=S4;
			else
			next_state=S1;
		S4:
			if(in==0)
			next_state=S0;
			else
			next_state=S5;
		S5:
			if(in==0)
			next_state=S0;
			else
			next_state=S6;
		S6:
			if(in==0)
			next_state=S3;
			else
			next_state=S2;
		default
			next_state=S0;
		endcase
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			state=S0;
		end
		else begin
			state=next_state;
		end
	end
	assign out=(state==S6);
endmodule
