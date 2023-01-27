`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:59 10/09/2022 
// Design Name: 
// Module Name:    string2 
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
module string2(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	reg [2:0]state,next;
	parameter Reset=3'b000,
				 Left=3'b001,
				 Left_num=3'b010,
				 Left_num_op=3'b011,
				 Fleft=3'b100,
				 F=3'b101,
				 error=3'b110;
	initial begin
		state=Reset;
		next=Reset;
	end
	always@(*)begin
		case(state)
		Reset:
		if(in=="(")begin
			next=Left;
		end
		else if(in>="0"&&in<="9")begin
			next=F;
		end
		else
			next=error;
		Left:
		if(in>="0"&&in<="9")begin
			next=Left_num;
		end
		else
			next=error;
		Left_num:
		if(in==")")
			next=F;
		else if(in=="*"||in=="+")
			next=Left_num_op;
		else
			next=error;
		Left_num_op:
			if(in>="0"&&in<="9")
				next=Left_num;
			else
				next=error;
		Fleft:
			if(in>="0"&&in<="9")
				next=F;
		   else if(in=="(")
				next=Left;
			else
				next=error;
		F:
			if(in=="*"||in=="+")
				next=Fleft;
			else
				next=error;
		error:
			next=error;
		default
		next=Reset;
		endcase
	end
	always@(posedge clk,posedge clr)begin
		if(clr==1)begin
			state<=Reset;
		end
		else begin
			state<=next;
		end
	end
	assign out=(state==F);
endmodule
