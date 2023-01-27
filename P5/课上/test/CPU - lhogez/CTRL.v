`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:43 10/27/2022 
// Design Name: 
// Module Name:    CTRL 
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
module CTRL(
    input 	[5:0] OP,		
    input 	[5:0] Func,
	 input	[31:0] Read,
    output 	[1:0] RegDst,	//��WB����D������
    output 			Regwrite,//��WB��������
    output 			EXTop,	//��D��������
    output 	[1:0] ALUsrc,	//��E��������
    output 	[2:0] ALUctrl,	//��E��������
    output 			Memwrite,//��M��������
	 output 	[1:0] MemtoReg,//��WB��������
    output 	[1:0] NPCop,	//��D��������
    output 	[2:0] CMPop,	//ֻ��D��������
    output 	[1:0] DMop,		//��M��������
	 output			condition1
    );
	 
	wire R=~OP[0]&~OP[1]&~OP[2]&~OP[3]&~OP[4]&~OP[5];
	
	wire add=R&Func[5]&~Func[4]&~Func[3]&~Func[2]&~Func[1]&~Func[0];
	
	wire sub=R&Func[5]&~Func[4]&~Func[3]&~Func[2]&Func[1]&~Func[0];
	
	wire ori=~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&OP[0];
	
	wire lw=OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire sw=OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire beq=~OP[5]&~OP[4]&~OP[3]&OP[2]&~OP[1]&~OP[0];
	
	wire lui=~OP[5]&~OP[4]&OP[3]&OP[2]&OP[1]&OP[0];
	
	wire jal=~OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire jr=R&~Func[5]&~Func[4]&Func[3]&~Func[2]&~Func[1]&~Func[0];
	
	wire j=(OP==6'b000010);
	
	wire lhogez = (OP==6'b110011);
	
	wire condition;
	integer i;
	reg [31:0] cnt0;
	reg [31:0] cnt1;
	always@(*)begin
		cnt1=32'b0;
		cnt0=32'b0;
		for(i=0;i<16;i=i+1)begin
			if(Read[i]==1'b1)begin
				cnt1=cnt1+1;
			end
			else begin
				cnt0=cnt0+1;
			end
		end
	end
	
	assign condition = (cnt0<=cnt1);
	
	assign condition1 = condition;
	
	assign RegDst[1]=1'b0|jal;
	
	assign RegDst[0]=1'b0|add|sub;
	
	assign Regwrite=1'b0|add|sub|ori|lw|lui|jal|lhogez;
	
	assign EXTop=1'b0|lw|sw|lhogez;
	
	assign ALUsrc[1]=1'b0;
	
	assign ALUsrc[0]=1'b0|ori|lw|sw|lui|lhogez;
	
	assign ALUctrl[2]=1'b0|lui;
	
	assign ALUctrl[1]=1'b0|ori;
	
	assign ALUctrl[0]=1'b0|sub|lui;
	
	assign Memwrite=1'b0|sw;
	
	assign MemtoReg[1]=1'b0|jal|(lhogez==1'b1&&condition==1'b0);
	
	assign MemtoReg[0]=1'b0|lw|lhogez;
	
	assign NPCop[1]=1'b0|beq|jr;
	
	assign NPCop[0]=1'b0|jal|jr|j;
	
	assign CMPop[2]=1'b0;
	
	assign CMPop[1]=1'b0;
	
	assign CMPop[0]=1'b0;
	
	assign DMop[1]=1'b0;
	
	assign DMop[0]=1'b0|lhogez;
	
endmodule