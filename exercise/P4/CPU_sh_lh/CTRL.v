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
    input [5:0] OP,
    input [5:0] Func,
	 input 		 Judge,
    output [1:0] RegDst,
    output Regwrite,
    output EXTop,
    output [1:0] ALUsrc,
    output [2:0] ALUctrl,
    output Memwrite,
	 output [1:0] MemtoReg,
    output [1:0] NPCop,
    output [2:0] CMPop,
    output [1:0] DMop
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
	
	wire j=~OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&~OP[0];
	
	wire sh = (OP==6'b101001);
	
	wire lh = (OP==6'b100001);
	
	wire lb = (OP==6'b100000);
	
	wire sb = (OP==6'b101000);
	
	wire sll = (OP==6'b000000&&Func==6'b000000);
	
	wire bltzal = (OP==6'b000001);
	
	assign RegDst[1]=1'b0|jal|bltzal;
	
	assign RegDst[0]=1'b0|add|sub|sll;
	
	assign Regwrite=1'b0|add|sub|ori|lw|lui|jal|lh|lb|sll|(bltzal===1'b1 && Judge==1);
	
	assign EXTop=1'b0|lw|sw|sh|lh|lb|sb ;
	
	assign ALUsrc[1]=1'b0|sll;
	
	assign ALUsrc[0]=1'b0|ori|lw|sw|lui|sh|lh|lb|sb;
	
	assign ALUctrl[2]=1'b0|sll;
	
	assign ALUctrl[1]=1'b0|ori|sll;
	
	assign ALUctrl[0]=1'b0|sub|sll;
	
	assign Memwrite=1'b0|sw|sh|sb;
	
	assign MemtoReg[1]=1'b0|lui|jal|bltzal;
	
	assign MemtoReg[0]=1'b0|lw|lui|lh|lb;
	
	assign NPCop[1]=1'b0|beq|jr|bltzal;
	
	assign NPCop[0]=1'b0|jal|jr|j;
	
	assign CMPop[2]=1'b0|bltzal;
	
	assign CMPop[1]=1'b0;
	
	assign CMPop[0]=1'b0;
	
	assign DMop[1]=1'b0|lb|sb;
	
	assign DMop[0]=1'b0|sh|lh;
	
endmodule
