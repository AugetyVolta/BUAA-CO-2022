`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:46 10/04/2022 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	parameter S0=4'b0000;   //space
	parameter S1=4'b0001;   //b
	parameter S2=4'b0010;   //e
	parameter S3=4'b0011;   //g
	parameter S4=4'b0100;   //i
	parameter S5=4'b0101;   //n
	parameter S6=4'b0110;   //e
	parameter S7=4'b0111;   //n
	parameter S8=4'b1000;   //d
	parameter S9=4'b1001;   //乱码
	reg [3:0]state,next_state;
	reg flag=1;
	integer begincnt=0;
	integer endcnt=0;
	always@(*)begin
		case(state)
		S0:
		if(in=="B"||in=="b")
			next_state=S1;
		else if(in=="E"||in=="e")
			next_state=S6;
		else if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S1:
		if(in=="E"||in=="e")
			next_state=S2;
		else if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S2:
		if(in=="G"||in=="g")
			next_state=S3;
		else if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S3:
		if(in=="I"||in=="i")
			next_state=S4;
		else if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S4:
		if(in=="N"||in=="n")
			next_state=S5;
		else if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S5:
		if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		S6:
			if(in=="N"||in=="n")
			next_state=S7;
			else if(in==" ")
			next_state=S0;
			else
			next_state=S9;
		S7:
			if(in=="D"||in=="d")
			next_state=S8;
			else if(in==" ")
			next_state=S0;
			else
			next_state=S9;
		S8:
			if(in==" ")
			next_state=S0;
			else
			next_state=S9;
		S9:
		if(in==" ")
			next_state=S0;
		else
			next_state=S9;
		default
		next_state=S0;
		endcase
	end
	always@(posedge clk,posedge reset)begin
		if(reset==1)begin
			state=S0;
			begincnt=0;
			endcnt=0;
			flag=1; //在没有出现begin或者end时，是默认匹配成功的，匹配结果为1
		end
		else begin
			if(next_state==S5)begin   //如果有begin后缀的形式时，结果会显示不匹配
				flag=0;
			end
			else if(state==S5&&next_state==S0)begin //如果完全匹配单词begin，则一定结果不匹配且begincnt++
				begincnt=begincnt+1;
				flag=0;
			end
			else if(state==S5&&next_state!=S0)begin //如果是beginX的形式，如果前面没有已经识别的begin，匹配结果为1（没有begin-end），否则还剩下begin待匹配。
				if(begincnt==0)
				flag=1;
				else
				flag=0;
			end
			else if(next_state==S8) //如果匹配到了后缀是end，如果是有两个begin待匹配，匹配结果为0，一个为1,0个为0
			begin
				if(begincnt>1)begin
				flag=0;
				end
				else if(begincnt==1)begin
				flag=1;
				end
				else begin
				flag=0;
				end
			end
			else if(state==S8&&next_state!=S0)begin //如果匹配了endX的形式，还有未匹配的begin，匹配结果为0，否则为1
				if(begincnt>0)  //还有未匹配的
				flag=0;
				else
				flag=1;
			end
			else if(state==S8&&next_state==S0)begin//如果匹配了完整的单词end，如果有两个及其以上begin未匹配，匹配结果为0，
																//有一个未匹配，匹配结果为1，如果没有不匹配的，endcnt++，匹配结果为0
				if(begincnt>1)begin
				begincnt=begincnt-1;
				flag=0;
				end
				else if(begincnt==1)begin
				begincnt=begincnt-1;
				flag=1;
				end
				else begin
				endcnt=endcnt+1;  //单独的end
				flag=0;
				end
			end
			state=next_state;
		end
	end
	assign result=(flag&(endcnt==0));   //endcnt==0的原因是要防止 end - begin - end
endmodule
