`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:15:52 10/07/2022 
// Design Name: 
// Module Name:    datecheck 
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
module datecheck(
    input clk,
    input [7:0] char,
    input reset,
    output out
    );
	reg [2:0] state,next_state;
	parameter start=3'b000,
				 year=3'b001,
				 year0=3'b010,
				 dot1=3'b011,
				 month=3'b100,
				 dot2=3'b101,
				 day=3'b110,
				 error=3'b111;
	integer i=0; //flag
	integer dotpattern; 
	reg [0:7] firstnum;
	always@(*)begin
		case(state)
		start:
		if(char>="1"&&char<="9")begin
			next_state=year;
		end
		else if(char=="0")begin
			next_state=year0;
		end
		else
			next_state=error;
		year:
			if(char>="0"&&char<="9")begin
				if(i<4)begin
					next_state=year;
				end
				else begin
					next_state=error;
				end
			end
			else if(char==".")begin
				next_state=dot1;
				dotpattern=1;
			end
			else if(char=="-")begin
				next_state=dot1;
				dotpattern=2;
			end
			else if(char=="/")begin
				next_state=dot1;
				dotpattern=3;
			end
			else
				next_state=error;
		year0:
			if(char==".")begin
				next_state=dot1;
				dotpattern=1;
			end
			else if(char=="-")begin
				next_state=dot1;
				dotpattern=2;
			end
			else if(char=="/")begin
				next_state=dot1;
				dotpattern=3;
			end
			else
				next_state=error;
		dot1:
			if(char>="1"&&char<="9")begin //没有以0开头的
				next_state=month;
				firstnum=char;
			end
			else
				next_state=error;
		month:
			if(firstnum=="1")begin
				if(char>="1"&&char<="2")
				begin
					if(i<2)
					next_state=month;
					else
					next_state=error;
				end
				else if(char=="."&&dotpattern==1)begin
					next_state=dot2;
				end
				else if(char=="-"&&dotpattern==2)begin
					next_state=dot2;
				end
				else if(char=="/"&&dotpattern==3)begin
					next_state=dot2;
				end

				else
					next_state=error;
			end
			else begin
				if(char=="."&&dotpattern==1)begin
					next_state=dot2;
				end
				else if(char=="-"&&dotpattern==2)begin
					next_state=dot2;
				end
				else if(char=="/"&&dotpattern==3)begin
					next_state=dot2;
				end
				else
					next_state=error;
			end
		dot2:
			if(char>="1"&&char<="9")begin
				next_state=day;
				firstnum=char;
			end
		day:
			if(firstnum>="1"&&firstnum<="3")begin
				if(char>="0"&&char<="9"&&firstnum>="1"&&firstnum<="2")begin
					if(i<2)begin
						next_state=day;
					end
					else
						next_state=error;
				end
				else if(char=="0"&&firstnum=="3")begin
					if(i<2)begin
						next_state=day;
					end
					else
						next_state=error;
				end
				else
					next_state=error;
			end
			else begin
				next_state=error;
			end
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
			if(next_state==year)begin
				i=i+1;
			end
			else if(next_state==month)begin
				i=i+1;
			end
			else if(next_state==day)begin
				i=i+1;
			end
			else
				i=0;
		end
	end
	assign out=(state==day);
endmodule
