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
    output [1:0] RegDst,
    output Regwrite,
    output EXTop,
    output [1:0] ALUsrc,
    output [2:0] ALUctrl,
    output Memwrite,
	 output [1:0] MemtoReg,
    output [1:0] NPCop,
    output [2:0] Branchop,
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
	wire j=~OP[5]&~OP[4]&~OP[3]&~OP[2]&~OP[1]&OP[0];
	
	assign RegDst[1]=1'b0|jal;
	
	assign RegDst[0]=1'b0|add|sub;
	
	assign Regwrite=1'b0|add|sub|ori|lw|lui|jal;
	
	assign EXTop=1'b0|lw|sw;
	
	assign ALUsrc[1]=1'b0;
	
	assign ALUsrc[0]=1'b0|ori|lw|sw|lui;
	
	assign ALUctrl[2]=1'b0;
	
	assign ALUctrl[1]=1'b0|ori;
	
	assign ALUctrl[0]=1'b0|sub;
	
	assign Memwrite=1'b0|sw;
	
	assign MemtoReg[1]=1'b0|lui|jal;
	
	assign MemtoReg[0]=1'b0|lw|lui;
	
	assign NPCop[1]=1'b0|beq|jr;
	
	assign NPCop[0]=1'b0|jal|jr|j;
	
	assign Branchop[2]=1'b0;
	
	assign Branchop[1]=1'b0;
	
	assign Branchop[0]=1'b0;
	
	assign DMop[1]=1'b0;
	
	assign DMop[0]=1'b0;
	
endmodule
