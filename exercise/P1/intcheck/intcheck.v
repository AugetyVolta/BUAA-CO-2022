`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:07 10/09/2022 
// Design Name: 
// Module Name:    intcheck 
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
module intcheck(
    input clk,
    input  reset,
    input [7:0] in,
    output out
    );
	reg [3:0] state,next;
	reg [23:0] string;
	integer i;
	parameter Reset=4'b0000,
				 S1=4'b0001,
				 S2=4'b0010,
				 S3=4'b0011,
				 S4=4'b0100,
				 S5=4'b0101,
				 S6=4'b0110,
				 End=4'b0111,
				 error=4'b1000;
	initial begin
	state=Reset;
	string=24'b0;
	i=0;
	end
	always@(*)begin
		case(state)
			Reset:
			if(in==" "||in=="\t")
				next=Reset;
			else if(in=="i")
				next=S1;
			else if(in==";")
				next=Reset;
			else
				next=error;
			S1:
			if(in=="n")
				next=S2;
			else if(in==";")
				next=Reset;
			else
				next=error;
			S2:
			if(in=="t")
				next=S3;
			else if(in==";")
				next=Reset;
			else
				next=error;
			S3:
			if(in==" "||in=="\t")
				next=S4;
			else if(in==";")
				next=Reset;
			else
				next=error;
			S4:
				if(in==" "||in=="\t")
				next=S4;
				else if(in=="_"||in>="a"&&in<="z"||in>="A"&&in<="Z")
				next=S5;
				else if(in==" "||in=="\t")
				next=S4;
				else if(in==";")
				next=Reset;
				else
				next=error;
			S5:
				if(in=="_"||in>="a"&&in<="z"||in>="A"&&in<="Z"||in>="0"&&in<="9")
				next=S5;
				else if(in==";"&&!(string=="int"&&i==3))
				next=End;
				else if(in==","&&!(string=="int"&&i==3))
				next=S4;
				else if((in==" "||in=="\t")&&!(string=="int"&&i==3))
				next=S6;
				else if(in==";"&&(string=="int"&&i==3))
				next=Reset;
				else
				next=error;
			S6:
				if(in==" "||in=="\t")
				next=S6;
				else if(in==","&&!(string=="int"&&i==3))
				next=S4;
				else if(in==";"&&!(string=="int"&&i==3))
				next=End;
				else if(in==";"&&(string=="int"&&i==3))
				next=Reset;
				else
				next=error;
			End:
				if(in=="i")
				next=S1;
				else if(in==" "||in=="\t")
				next=Reset;
				else if(in==";")
				next=Reset;
				else
				next=error;
			error:
				if(in==";")
				next=Reset;
				else
				next=error;
			default
				next=Reset;
		endcase
	end
	always@(posedge clk)begin
		if(reset==1)begin
			state=Reset;
			string<=24'b0;
			i<=0;
		end
		else begin
			if(next==S5) begin
			string<=string<<8;  //ÏÈÒÆ¶¯£¬ÔÙÌí×Ö·û
			string[7:0]<=in;
			i<=i+1;
			end
			else if(next==S6)begin
			string<=string;
			i<=i;
			end
			else begin 
			string<=24'b0;  //×¢ÒâÇåÁã
			i<=0;
			end
			state<=next;
		end
	end
	assign out=(state==End);
endmodule
