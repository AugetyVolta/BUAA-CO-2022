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
	parameter S9=4'b1001;   //����
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
			flag=1; //��û�г���begin����endʱ����Ĭ��ƥ��ɹ��ģ�ƥ����Ϊ1
		end
		else begin
			if(next_state==S5)begin   //�����begin��׺����ʽʱ���������ʾ��ƥ��
				flag=0;
			end
			else if(state==S5&&next_state==S0)begin //�����ȫƥ�䵥��begin����һ�������ƥ����begincnt++
				begincnt=begincnt+1;
				flag=0;
			end
			else if(state==S5&&next_state!=S0)begin //�����beginX����ʽ�����ǰ��û���Ѿ�ʶ���begin��ƥ����Ϊ1��û��begin-end��������ʣ��begin��ƥ�䡣
				if(begincnt==0)
				flag=1;
				else
				flag=0;
			end
			else if(next_state==S8) //���ƥ�䵽�˺�׺��end�������������begin��ƥ�䣬ƥ����Ϊ0��һ��Ϊ1,0��Ϊ0
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
			else if(state==S8&&next_state!=S0)begin //���ƥ����endX����ʽ������δƥ���begin��ƥ����Ϊ0������Ϊ1
				if(begincnt>0)  //����δƥ���
				flag=0;
				else
				flag=1;
			end
			else if(state==S8&&next_state==S0)begin//���ƥ���������ĵ���end�������������������beginδƥ�䣬ƥ����Ϊ0��
																//��һ��δƥ�䣬ƥ����Ϊ1�����û�в�ƥ��ģ�endcnt++��ƥ����Ϊ0
				if(begincnt>1)begin
				begincnt=begincnt-1;
				flag=0;
				end
				else if(begincnt==1)begin
				begincnt=begincnt-1;
				flag=1;
				end
				else begin
				endcnt=endcnt+1;  //������end
				flag=0;
				end
			end
			state=next_state;
		end
	end
	assign result=(flag&(endcnt==0));   //endcnt==0��ԭ����Ҫ��ֹ end - begin - end
endmodule
