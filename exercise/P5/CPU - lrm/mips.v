`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:26 11/05/2022 
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
	 wire	[1:0] Tnew_E;
	 wire	[1:0] Tnew_M;
/*==============F==============*/
	wire 		[1:0]		NPCop_D;
	wire 		[15:0] 	offset_D;
	wire 		[25:0] 	instr_index_D;
   wire 		[31:0] 	Reg_D;
   wire 					Judge_D;
	wire 		[31:0] 	PC_F;			//流水PC
	wire 		[31:0] 	Instr_F;
	wire 	   [31:0] 	PC_D;
	wire  				PC_write;
	IFU _ifu(.clk(clk),
				.reset(reset),
				.NPCop(NPCop_D),
				.offset(offset_D),
				.instr_index(instr_index_D),
				.Reg(Reg_D),
				.Judge(Judge_D),
				.PC_in(PC_D),
				.PCwrite(PC_write),//记得填
				.Instr(Instr_F),
				.PC(PC_F)
				);
/*============IF_ID============*/
	wire 	   [31:0] 	Instr_D;
	wire					IF_ID_en;
	IF_ID _if_id(.clk(clk),
					 .reset(reset),
					 .IF_ID_en(IF_ID_en),//记得填
					 .Instr_F(Instr_F),
					 .PC_F(PC_F),
					 .PC_D(PC_D),
					 .Instr_D(Instr_D)
					);
/*==============D==============*/
	wire						EXTop;
	wire 		 [2:0]		CMPop_D;
	wire		[31:0]		RD1_D;		
	wire		[31:0]		RD2_D;
	wire		[31:0]		V1;
	wire		[31:0]		V2;
	wire 		 [4:0]		A3_WB;
	wire	   [31:0]		WD_WB;
	wire						Regwrite_WB;
	wire		[31:0]		EXTImm_D;
	wire						Regwrite_D;
	wire 		 [4:0]		A3_D;
	wire 		 [4:0]		A2_D;
	wire		 [4:0]		A1_D;
	wire						Memwrite_D;
	wire		 [1:0]		RegDst_D;	
	wire		 [1:0]		RD1_Sel_D;
	wire		 [1:0]      RD2_Sel_D;
	wire		[31:0]		PC_WB;
	
	CTRL _ctrl_D(.OP(Instr_D[31:26]),
					 .Func(Instr_D[5:0]),
					 .CMPop(CMPop_D),
					 .EXTop(EXTop_D),
					 .NPCop(NPCop_D),
					 .Memwrite(Memwrite_D),
					 .Regwrite(Regwrite_D),
					 .RegDst(RegDst_D)
					);
	
	GRF _grf(.clk(clk),
				.reset(reset),
				.Regwrite(Regwrite_WB),//在写回状态的判断,记得定义过了线
				.PC(PC_WB),
				.A1(Instr_D[25:21]),
				.A2(Instr_D[20:16]),
				.A3(A3_WB),
				.WD(WD_WB),
				.RD1(V1),
				.RD2(V2)
			   );
				
	CMP _cmp(.RD1(RD1_D),
				.RD2(RD2_D),
				.CMPop(CMPop_D),
				.Judge(Judge_D)
				);
				
	EXT _ext(.Imm(Instr_D[15:0]),
				.EXTop(EXTop_D),
				.EXTImm(EXTImm_D)
				);
	
	assign A3_D = (Regwrite_D == 1&&RegDst_D == 2'b00)? Instr_D[20:16]:
					  (Regwrite_D == 1&&RegDst_D == 2'b01)? Instr_D[15:11]:
					  (Regwrite_D == 1&&RegDst_D == 2'b10)? 	  5'b11111:5'b0;
					  
	wire [4:0] Num_use_rs;
	
	wire [4:0] Num_use_rt;
	
	assign A2_D = Num_use_rt ; //用于E,M级写入转发判断
	
	assign A1_D = Num_use_rs ;
	//转发,记得写逻辑
	assign RD1_Sel_D = (A1_D == A3_E && Regwrite_E == 1'b1 && A3_E != 5'b0 && Tnew_E==2'b0)? 2'b10:
							 (A1_D == A3_M && Regwrite_M == 1'b1 && A3_M != 5'b0 && Tnew_M==2'b0)? 2'b01: 2'b00;
	
	assign RD2_Sel_D = (A2_D == A3_E && Regwrite_E == 1'b1 && A3_E != 5'b0 && Tnew_E==2'b0 )? 2'b10:
							 (A2_D == A3_M && Regwrite_M == 1'b1 && A3_M != 5'b0 && Tnew_M==2'b0)? 2'b01: 2'b00;
	
	assign RD1_D = (RD1_Sel_D == 2'b00)? V1:
						(RD1_Sel_D == 2'b01)? ALUresult_M:
						(RD1_Sel_D == 2'b10)? (PC_E+32'd8):V1;
	
	assign RD2_D = (RD2_Sel_D == 2'b00)? V2:
						(RD2_Sel_D == 2'b01)? ALUresult_M:
						(RD2_Sel_D == 2'b10)? (PC_E+32'd8):V2;
	
	assign offset_D = Instr_D[15:0];
	
	assign instr_index_D = Instr_D[25:0];
   
	assign Reg_D = RD1_D;

/*===========ID_EX============*/
	wire		[31:0] 		PC_E;
	wire	 	[4:0] 		A3_E;
	wire		[31:0] 		RD1_E;
	wire		[31:0] 		RD2_E;
	wire		[31:0] 		EXTImm_E;
	wire		[31:0]		Instr_E;
	wire		 [4:0]		A2_E;
	wire		 [4:0]		A1_E;
	wire						ID_EX_clr;
	wire		 [1:0]      RD1_Sel_D_reg;
	wire		 [1:0]  		RD2_Sel_D_reg;
	ID_EX _id_ex(.clk(clk),
					 .reset(reset),
					 .ID_EX_clr(ID_EX_clr),//记得填
					 .PC_D(PC_D),
					 .A3_D(A3_D),
					 .A2_D(A2_D),
					 .A1_D(A1_D),
					 .RD1_D(RD1_D),
					 .RD2_D(RD2_D),
					 .RD1_Sel_D(RD1_Sel_D),
					 .RD2_Sel_D(RD2_Sel_D),
					 .EXTImm_D(EXTImm_D),
					 .Instr_D(Instr_D),
					 .PC_E(PC_E),
					 .A3_E(A3_E),
					 .A2_E(A2_E),
					 .A1_E(A1_E),
					 .RD1_E(RD1_E),
					 .RD2_E(RD2_E),
					 .EXTImm_E(EXTImm_E),
					 .Instr_E(Instr_E),
					 .RD1_Sel_D_reg(RD1_Sel_D_reg),
					 .RD2_Sel_D_reg(RD2_Sel_D_reg)
					);
/*==============E==============*/
	wire 		[1:0]		ALUsrc_E;
	wire		[2:0]		ALUctrl_E;
	wire	  [31:0]		SrcA_E;
	wire	  [31:0]		SrcB_E;
	wire	  [31:0]		ALUsrc0_E;
	wire	  [31:0]		ALUresult_E;
	wire					Regwrite_E;
	wire		[1:0]		SrcA_Sel_E;
	wire		[1:0]		SrcB_Sel_E;
	wire					Memwrite_E;
	wire		[31:0]   RD2_FW_E;
	wire		[1:0]    RD2_FW_Sel_E;
	CTRL _ctrl_E(.OP(Instr_E[31:26]),
					 .Func(Instr_E[5:0]),
					 .ALUsrc(ALUsrc_E),
					 .ALUctrl(ALUctrl_E),
					 .Regwrite(Regwrite_E),
					 .Memwrite(Memwrite_E)
	);
	
	ALU _alu_E(.ALUctrl(ALUctrl_E),
				  .SrcA(SrcA_E),
				  .SrcB(SrcB_E),
				  .s(Instr_E[10:6]),
				  .ALUresult(ALUresult_E)
				  );
				  
	assign ALUsrc0_E = (ALUsrc_E == 2'b00)? RD2_E:
							 (ALUsrc_E == 2'b01)? EXTImm_E: RD2_E;
	
	//转发
	assign RD2_FW_Sel_E = (A2_E == A3_M && Regwrite_M == 1'b1 && A3_M != 5'b0 && Tnew_M==2'b0)? 2'b10 :
							    (A2_E == A3_WB && Regwrite_WB == 1'b1 &&  A3_WB != 5'b0 )? 2'b01 : 2'b00;	
	
	assign RD2_FW_E = (RD2_FW_Sel_E == 2'b00)? RD2_E:
		   				(RD2_FW_Sel_E == 2'b01)? WD_WB:
							(RD2_FW_Sel_E == 2'b10)? ALUresult_M: RD2_E;
	
	assign SrcA_Sel_E = (A1_E == A3_M && Regwrite_M == 1'b1 && A3_M != 5'b0 && Tnew_M==2'b0 && RD1_Sel_D_reg != 2'b10)? 2'b10 :
							  (A1_E == A3_WB && Regwrite_WB == 1'b1 &&  A3_WB != 5'b0 && RD1_Sel_D_reg != 2'b10 )? 2'b01 : 2'b00;
 	
	assign SrcB_Sel_E = (A2_E == A3_M && Regwrite_M == 1'b1 && A3_M != 5'b0 && Tnew_M==2'b0 && ALUsrc_E == 2'b00 && RD2_Sel_D_reg != 2'b10)? 2'b10 :
							  (A2_E == A3_WB && Regwrite_WB == 1'b1 &&  A3_WB != 5'b0 && ALUsrc_E == 2'b00 && RD2_Sel_D_reg != 2'b10)? 2'b01 : 2'b00;	
	
	assign SrcA_E = (SrcA_Sel_E == 2'b00)? RD1_E :
						 (SrcA_Sel_E == 2'b01)? WD_WB:
						 (SrcA_Sel_E == 2'b10)? ALUresult_M: RD1_E;
	
	assign SrcB_E = (SrcB_Sel_E == 2'b00)? ALUsrc0_E :
						 (SrcB_Sel_E == 2'b01)? WD_WB:
						 (SrcB_Sel_E == 2'b10)? ALUresult_M: ALUsrc0_E;
	
/*==============EX_DM==============*/
	wire 		[31:0]		PC_M;
	wire		 [4:0]		A3_M;
	wire		 [4:0]		A2_M;
	wire		[31:0]		Instr_M;
	wire		[31:0]		ALUresult_M;
	wire		[31:0]		RD2_M;
	EX_DM _ex_dm(.clk(clk),
					 .reset(reset),
					 .PC_E(PC_E),
					 .A3_E(A3_E),
					 .A2_E(A2_E),
					 .Instr_E(Instr_E),
					 .RD2_E(RD2_FW_E),							//RD2_E传的是DM的wd内容
					 .ALUresult_E(ALUresult_E),
					 .A2_M(A2_M),
					 .PC_M(PC_M),
					 .A3_M(A3_M),
					 .Instr_M(Instr_M),
					 .ALUresult_M(ALUresult_M),
					 .RD2_M(RD2_M)								
					);

/*===============M===============*/
	wire		[31:0]		WD_DM_M;
	wire 						Memwrite_M;
	wire		 [1:0]		DMop_M;
	wire		 				WD_DM_Sel;
	wire						Regwrite_M;
	wire		[31:0]		RD_M;
	wire		[4:0]			Write_Addr;
	CTRL _ctrl_M(.OP(Instr_M[31:26]),
					.Func(Instr_M[5:0]),
					.Memwrite(Memwrite_M),
					.DMop(DMop_M),
					.Regwrite(Regwrite_M)
				 );
	
	DM _dm(.clk(clk),
			 .reset(reset),
			 .Memwrite(Memwrite_M),
			 .PC(PC_M),
			 .A(ALUresult_M),
			 .WD(WD_DM_M),
			 .DMop(DMop_M),
			 .RD(RD_M)
	);
	
	assign Write_Addr = (Instr_M[31:26]==6'b001000)?RD_M[4:0]: A3_M;
	// WB 到 M 转发
	
	assign WD_DM_Sel = (A3_WB == A2_M && Regwrite_WB == 1'b1 && A3_WB!=5'b0 )? 1'b1:1'b0;
	
	assign WD_DM_M = (WD_DM_Sel==1'b0)? RD2_M : WD_WB;


/*============DM_WB=============*/
	wire		[31:0]		Instr_WB;
	wire		[31:0]		ALUresult_WB;
	wire		[31:0]		RD_WB;
	wire		[31:0]		WD_DM_WB;
	DM_WB _dm_wb(.clk(clk),
					 .reset(reset),
					 .PC_M(PC_M),
					 .A3_M(Write_Addr),
					 .Instr_M(Instr_M),
					 .ALUresult_M(ALUresult_M),
					 .RD_M(RD_M),
					 .WD_DM_M(WD_DM_M),
					 .PC_WB(PC_WB),
					 .A3_WB(A3_WB),
					 .Instr_WB(Instr_WB),
					 .ALUresult_WB(ALUresult_WB),
					 .RD_WB(RD_WB),
					 .WD_DM_WB(WD_DM_WB)
					);

/*=============WB=============*/
	wire		 [1:0]		MemtoReg_WB;
	
	CTRL ctrl_wb(.OP(Instr_WB[31:26]),
					 .Func(Instr_WB[5:0]),
					 .Regwrite(Regwrite_WB),
					 .MemtoReg(MemtoReg_WB)
					 );

	assign 	WD_WB = (MemtoReg_WB == 2'b00)? ALUresult_WB:
						  (MemtoReg_WB == 2'b01)? RD_WB:
						  (MemtoReg_WB == 2'b10)?(PC_WB+32'd8):
						  (MemtoReg_WB == 2'b11)? WD_DM_WB:ALUresult_WB;

/*=============Hazard=============*/
	HAZARD _hazard(
		 .clk(clk),
		 .Instr_D(Instr_D),
		 .Instr_E(Instr_E),
		 .Instr_M(Instr_M),
		 .Regwrite_E(Regwrite_E),
		 .Regwrite_M(Regwrite_M),
		 .PCwrite(PC_write),
		 .IF_ID_en(IF_ID_en),
		 .ID_EX_clr(ID_EX_clr),
		 .Num_use_rs_D(Num_use_rs),
		 .Num_use_rt_D(Num_use_rt),
		 .Tnew_E_(Tnew_E),
		 .Tnew_M_(Tnew_M)
    );
endmodule
