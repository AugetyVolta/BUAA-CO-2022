`timescale 1ns / 1ps
`include "constant.v"
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
	 input			Judge,
    output 	[1:0] RegDst,	//在WB级、D起作用
    output 			Regwrite,//在WB级起作用
    output 			EXTop,	//在D级起作用
    output 	[1:0] ALUsrc,	//在E级起作用
    output 	[2:0] ALUctrl,	//在E级起作用
    output 			Memwrite,//在M级起作用
	 output 	[1:0] MemtoReg,//在WB级起作用
    output 	[2:0] NPCop,	//在D级起作用
    output 	[2:0] CMPop,	//只在D级起作用
    output 	[1:0] BEop,		//在M级起作用
	 output	[2:0] DEop,
	 output			Start,
	 output			Sel_ALU_MDU,
	 output	[3:0] MDUop
    );
	 
	wire R=~OP[0]&~OP[1]&~OP[2]&~OP[3]&~OP[4]&~OP[5];
	
	wire add=R&Func[5]&~Func[4]&~Func[3]&~Func[2]&~Func[1]&~Func[0];
	
	wire sub=R&Func[5]&~Func[4]&~Func[3]&~Func[2]&Func[1]&~Func[0];
	
	wire ori=~OP[5]&~OP[4]&OP[3]&OP[2]&~OP[1]&OP[0];
	
	wire lw=OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire sw=OP[5]&~OP[4]&OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire lb = (OP == `lb);
	
	wire lh = (OP == `lh);
	
	wire sb = (OP == `sb);
	
	wire sh = (OP == `sh);
	
	wire beq=~OP[5]&~OP[4]&~OP[3]&OP[2]&~OP[1]&~OP[0];
	
	wire bne=(OP==6'b000101);
	
	wire lui=~OP[5]&~OP[4]&OP[3]&OP[2]&OP[1]&OP[0];
	
	wire jal=~OP[5]&~OP[4]&~OP[3]&~OP[2]&OP[1]&OP[0];
	
	wire jr=R&~Func[5]&~Func[4]&Func[3]&~Func[2]&~Func[1]&~Func[0];
	
	wire j = (OP==`J);
	
	wire And = (R==1'b1&&Func==`And); 
	
	wire Or = (R==1'b1&&Func==`Or);
	
	wire slt =  (R==1'b1&&Func==`slt);
	
	wire sltu = (R==1'b1&&Func==`sltu);
	
	wire addi = (OP==`addi);
	
	wire andi = (OP==`andi);
	
	wire mult = (R==1'b1&&Func==`mult_I);
	
	wire multu = (R==1'b1&&Func==`multu_I);
	
	wire div = (R==1'b1&&Func==`div_I);
	
	wire divu = (R==1'b1&&Func==`divu_I);
	
	wire mfhi = (R==1'b1&&Func==`mfhi_I);
	
	wire mflo = (R==1'b1&&Func==`mflo_I);
	
	wire mthi = (R==1'b1&&Func==`mthi_I);
	
	wire mtlo = (R==1'b1&&Func==`mtlo_I); //乘除指令要带I
	
	wire	shl = (R==1'b1&&Func==`shl_I);
	
	assign RegDst[1]=1'b0|jal;
	
	assign RegDst[0]=1'b0|add|sub|And|Or|slt|sltu|mflo|mfhi;
	
	assign Regwrite=1'b0|add|sub|ori|lw|lui|jal|And|Or|addi|andi|slt|sltu|lb|lh|mfhi|mflo;
	
	assign EXTop=1'b0|lw|sw|addi|lb|lh|sb|sh;
	
	assign ALUsrc[1]=1'b0;
	
	assign ALUsrc[0]=1'b0|ori|lw|sw|lui|addi|andi|lb|lh|sb|sh;
	
	assign ALUctrl[2]=1'b0|lui|slt|sltu;
	
	assign ALUctrl[1]=1'b0|ori|And|Or|andi|sltu;
	
	assign ALUctrl[0]=1'b0|sub|And|andi|slt;
	
	assign Start = 1'b0|mult|multu|div|divu;
	
	assign Sel_ALU_MDU = 1'b0|mfhi|mflo;
	
	assign MDUop = (mult==1'b1)? `mult:
						(multu==1'b1)?`multu:
						(div==1'b1)?  `div:
						(divu==1'b1)? `divu: 
						(mfhi==1'b1)? `mfhi:
						(mflo==1'b1)? `mflo:
						(mthi==1'b1)? `mthi:
						(mtlo==1'b1)? `mtlo:
						(shl ==1'b1)? `shl: 4'b0000;
	
	assign Memwrite=1'b0|sw|sb|sh;
	
	assign MemtoReg[1]=1'b0|jal;
	
	assign MemtoReg[0]=1'b0|lw|lb|lh;
	
	assign NPCop[2]=1'b0;
	
	assign NPCop[1]=1'b0|beq|jr|bne;
	
	assign NPCop[0]=1'b0|jal|jr|j;
	
	assign CMPop[2]=1'b0;
	
	assign CMPop[1]=1'b0;
	
	assign CMPop[0]=1'b0|bne;
		
	assign BEop = (sw==1'b1)? 2'b00:
					  (sb==1'b1)? 2'b10:
					  (sh==1'b1)? 2'b01:
						2'b11;
		
	assign DEop = (lw==1'b1)?3'b000:
					  (lb==1'b1)?3'b010:
					  (lh==1'b1)?3'b100:
					  3'b111;
	
endmodule