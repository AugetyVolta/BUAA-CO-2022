`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:05 10/09/2022 
// Design Name: 
// Module Name:    drink 
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
module drink(
    input clk,
    input reset,
    input [1:0] coin,
    output drink,
    output [1:0] back
    );
	parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100;
	reg [2:0] state,next_state;
	reg drink2=0;
	reg [1:0] back1=2'b00;
	always@(*)begin
		case(state)
			S0:
			if(coin==2'b00)begin
				next_state=S0;
			end
			else if(coin==2'b01)begin
				next_state=S1;
			end
			else if(coin==2'b10)begin
				next_state=S2;
			end
			else if(coin==2'b11)begin
				next_state=S0;
			end
			S1:
			if(coin==2'b00)begin
				next_state=S1;
			end
			else if(coin==2'b01)begin
				next_state=S2;
			end
			else if(coin==2'b10)begin
				next_state=S3;
			end
			else if(coin==2'b11)begin
				next_state=S0;
			end
			S2:
			if(coin==2'b00)begin
				next_state=S2;
			end
			else if(coin==2'b01)begin
				next_state=S3;
			end
			else if(coin==2'b10)begin
				next_state=S0;
			end
			else if(coin==2'b11)begin
				next_state=S0;
			end
			S3:
			if(coin==2'b00)begin
				next_state=S3;
			end
			else if(coin==2'b01)begin
				next_state=S0;
			end
			else if(coin==2'b10)begin
				next_state=S0;
			end
			else if(coin==2'b11)begin
				next_state=S0;
			end
			default next_state=S0;
		endcase
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			state=S0;
		end
		else begin
			if(coin==2'b11)begin
				case(state)
				S0: begin
				back1=2'b00;
				drink2=0;
				end
				S1: begin
				back1=2'b01;
				drink2=0;
				end
				S2: begin
				back1=2'b10;
				drink2=0;
				end
				S3: begin
				back1=2'b11;
				drink2=0;
				end
				default begin
				back1=2'b00;
				drink2=0;
				end
				endcase
			end
			else begin
				if(next_state==S0)begin
					case(state)
					S0: begin
						drink2=0;
						back1=2'b00;
					end
					S1: begin
						drink2=0;
						back1=2'b00;
					end
					S2: begin
						drink2=1;
						back1=2'b00;
						end
					S3: begin
						drink2=1;
						back1=(coin==2'b01)?2'b00:2'b01;
					end
					default begin
					drink2=0;
					back1=2'b00;
					end
					endcase
				end
				else begin
				drink2=0;
				back1=2'b00;
				end
			end
			state=next_state;
		end
	end
	assign drink=drink2;
	assign back=back1;
endmodule
