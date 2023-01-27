`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:15 10/06/2022 
// Design Name: 
// Module Name:    Mood 
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

module Mood(
    input [1:0] sign,
    input clk,
    input reset,
    output [2:0] status
    );
	parameter ASLEEP=3'b000,BUSY=3'b001,SAD=3'b010,CLUELESS=3'b011,HAPPY=3'b100;
	parameter ALARM=2'b00,FAIL=2'b01,SUCCESS=2'b10,IDEA=2'b11;
	integer i=0;
	reg [2:0] state,next_state;
	always@(*)begin
		case(state)
		ASLEEP:
			if(sign==ALARM)begin
			next_state=BUSY;
			//i=0;
			end
			else
			next_state=ASLEEP;
		BUSY:
			if(sign==FAIL)begin
			next_state=SAD;
			//i=0;
			end
			else if(sign==SUCCESS)begin
			next_state=HAPPY;
			end
			else if(i==3)begin
			next_state=ASLEEP;
			//i=0;
			end
			else
			next_state=BUSY;
		SAD:
			if(i==2)begin
			next_state=CLUELESS;
			//i=0;
			end
			else
			next_state=SAD;
		CLUELESS:
			if(sign==IDEA)begin
			next_state=BUSY;
			//i=0;
			end
			else if(i==3)begin
			next_state=ASLEEP;
			//i=0;
			end
			else
			next_state=CLUELESS;
		HAPPY:
			next_state=HAPPY;
		default
			next_state=ASLEEP;
		endcase
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			state<=ASLEEP;
		end
		else begin
			if(next_state==BUSY)begin
				if(state!=CLUELESS)
				i<=i+1;
				else
				i<=1;
			end
			else if(next_state==CLUELESS)begin
				if(state!=SAD)
				i<=i+1;
				else
				i<=1;
			end
			else if(next_state==SAD)begin
				if(state!=BUSY)
				i<=i+1;
				else
				i<=1;
			end
			else
				i<=0;
			state<=next_state;
		end
	end
	assign status=state;
endmodule
