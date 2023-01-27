`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:34 10/27/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 
	 wire [1:0] RegDst;
	 wire Regwrite;
	 wire EXTop;
	 wire [1:0] ALUsrc;
	 wire [2:0] ALUctrl;
	 wire Memwrite;
	 wire [1:0] MemtoReg;
	 wire [1:0] NPCop;
	 wire [2:0] Branchop;
	 wire [1:0] DMop;
	 
	 wire [31:0] Instr;
	 wire Less;
	 wire Equal;
	 wire [31:0] NPC;
	 wire [31:0] PC;
	 wire [4:0] A3;
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 wire [31:0] WD;
	 wire [31:0] s;
	 wire [31:0] EXTImm;
	 wire [31:0] SrcA;
	 wire [31:0] SrcB;
	 wire [31:0] ALUResult;
	 wire [31:0] RD;
	 CTRL _ctrl(.OP(Instr[31:26]),.Func(Instr[5:0]),.RegDst(RegDst),.Regwrite(Regwrite),.EXTop(EXTop),.ALUsrc(ALUsrc),.ALUctrl(ALUctrl),
					.Memwrite(Memwrite),.MemtoReg(MemtoReg),.NPCop(NPCop),.Branchop(Branchop),.DMop(DMop),.rs(RD1));
	 
	
	 IFU _ifu(.clk(clk),.reset(reset),.Branchop(Branchop),.NPCop(NPCop),.Less(Less),.Equal(Equal),.NPC(NPC),.PC(PC),.Instr(Instr),
			    .instr_index(Instr[25:0]),.offset(Instr[15:0]),.Reg(RD1));
				 
	 
	 assign A3=(RegDst==2'b00)?Instr[20:16]:
				  (RegDst==2'b01)?Instr[15:11]:
				  (RegDst==2'b10)?5'b11111:
				  5'b00000;
	 assign s={{27{1'b0}},Instr[10:6]};
	 
	 GRF _grf(.clk(clk),.reset(reset),.WE(Regwrite),.A1(Instr[25:21]),.A2(Instr[20:16]),.A3(A3),.WD(WD),.RD1(RD1),.RD2(RD2),.PC(PC));
	 
	 
	 EXT _ext(.Imm(Instr[15:0]),.EXTop(EXTop),.EXTImm(EXTImm));
	 
	 
	 assign SrcA=(ALUsrc==2'b10)?RD2:RD1;
	 assign SrcB=(ALUsrc==2'b00)?RD2:
					 (ALUsrc==2'b01)?EXTImm:
					 (ALUsrc==2'b10)?s:
					  32'b0;
	 ALU _alu(.SrcA(SrcA),.SrcB(SrcB),.ALUop(ALUctrl),.Equal(Equal),.Less(Less),.ALUResult(ALUResult));
	 
	 
	 DM _dm(.clk(clk),.reset(reset),.Memwrite(Memwrite),.A(ALUResult),.WD(RD2),.DMop(DMop),.RD(RD),.PC(PC));
	 
	 assign WD=(MemtoReg==2'b00)?ALUResult:
				  (MemtoReg==2'b01)?RD:
				  (MemtoReg==2'b10)?PC+32'd4:
				  ({ALUResult[15:0],16'b0});

endmodule
