`timescale 1ns / 1ps
`include "constant.v"
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
module mips_cpu(
    input         clk,
    input         reset,
	 input	[5:0] HWInt,
    input  [31:0] i_inst_rdata,	// F级的32bit指令
    input  [31:0] m_data_rdata,	// 从DM读取的值
	 input			interrupt,		// 外部中断信号
    output [31:0] i_inst_addr,	// PC_F
    output [31:0] m_data_addr,	// DM 读写地址
    output [31:0] m_data_wdata,  // DM 待写入数据
    output [3 :0] m_data_byteen, // DM 字节使能信号
    output [31:0] m_inst_addr,   // PC_M
    output 			w_grf_we,		// GRF 写使能信号
    output [4:0] w_grf_addr,		// GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,	// GRF 待写入数据
    output [31:0] w_inst_addr, 	// W 级 PC
	 output [31:0] macroscopic_pc,// 宏观 PC
	 output			Intrespon
	 //output [31:0] m_int_addr,    // 中断发生器待写入地址
    //output [3 :0] m_int_byteen   // 中断发生器字节使能信号,当该信号任意一位置位时视为有效。
);
	 wire	[1:0] Tnew_E;
	 wire	[1:0] Tnew_M;
/*==============F==============*/
	wire 		[2:0]		NPCop_D;
	wire 		[15:0] 	offset_D;
	wire 		[25:0] 	instr_index_D;
   wire 		[31:0] 	Reg_D;
   wire 					Judge_D;
	wire 		[31:0] 	PC_F;			//流水PC
	wire 		[31:0] 	Instr_F;
	wire 	   [31:0] 	Instr_D;
	wire 	   [31:0] 	PC_D;
	wire  				PC_write;
	wire					Req;		//没连线
	wire 					D_eret;  
	wire		[31:0]	EPC;		//没连线
	wire					BD_F;
	wire		[4:0]		Exc_Code_F;
	wire					Exc_AdEL;
	wire					Exc_Sys;
	wire		[31:0]		RD2_D;
	IFU _ifu(.clk(clk),
				.reset(reset),
				.NPCop(NPCop_D),
				.offset(offset_D),
				.instr_index(instr_index_D),
				.Reg(Reg_D),
				.Reg_rt(RD2_D),
				.Judge(Judge_D),
				.PC_in(PC_D),
				.PCwrite(PC_write),//记得填
				.PC(PC_F),
				.Instr_D(Instr_D),
				.Req(Req),
				.D_eret(D_eret),
				.EPC(EPC),
				.BD(BD_F)
				);
				
	assign Exc_AdEL = (PC_F[1:0]!=2'b00)|| D_eret==1'b0&&((PC_F<32'h0000_3000)|(PC_F>32'h0000_6ffc));
	
	assign Exc_Sys = (Instr_F[31:26]==6'b0&&Instr_F[5:0]==6'b001100);
	
	assign i_inst_addr = PC_F; 
	
	assign Instr_F = (D_eret==1'b1||Exc_AdEL==1'b1)?32'b0:i_inst_rdata;//清空eret的延迟槽，以及有异常时清除指令
	
	assign Exc_Code_F = (Exc_AdEL==1'b1)? `Exc_AdEL:
							  (Exc_Sys ==1'b1)? `Exc_Sys:
							  `Exc_None;
							  
/*============IF_ID============*/
	wire					IF_ID_en;
	wire		[4:0]		Exc_Code_tmp_D;
	wire		[4:0]		Exc_Code_D;
	wire					BD_D;
	IF_ID _if_id(.clk(clk),
					 .reset(reset),
					 .IF_ID_en(IF_ID_en),//记得填
					 .Instr_F(Instr_F),
					 .PC_F(PC_F),
					 .PC_D(PC_D),
					 .Instr_D(Instr_D),
					 .BD_F(BD_F),
					 .BD_D(BD_D),
					 .Req(Req),
					 .Exc_Code_F(Exc_Code_F),
					 .Exc_Code_D(Exc_Code_tmp_D)
					);
/*==============D==============*/
	wire						EXTop;
	wire 		 [2:0]		CMPop_D;
	wire		[31:0]		RD1_D;		
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
	wire						Start;
	wire		 				Exc_RI;
	CTRL _ctrl_D(.OP(Instr_D[31:26]),
					 .Func(Instr_D[5:0]),
					 .Instr(Instr_D),
					 .CMPop(CMPop_D),
					 .EXTop(EXTop_D),
					 .NPCop(NPCop_D),
					 .Memwrite(Memwrite_D),
					 .Regwrite(Regwrite_D),
					 .RegDst(RegDst_D),
					 .Judge(Judge_D),
					 .eret_D(D_eret),
					 .Exc_RI(Exc_RI)
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
					  
	wire [4:0] Tuse_rs;
	
	wire [4:0] Tuse_rt;
	
	assign A2_D = Tuse_rt ; //用于E,M级写入转发判断
	
	assign A1_D = Tuse_rs ;
	
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
	
	assign Exc_Code_D = (Exc_Code_tmp_D)? Exc_Code_tmp_D:
							  (Exc_RI==1'b1)? `Exc_RI:
							  `Exc_None;

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
	wire						Judge_E;
	wire		 [4:0]		Exc_Code_E;
	wire		 [4:0]		Exc_Code_tmp_E;
	wire						BD_E;
	
	
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
					 .RD2_Sel_D_reg(RD2_Sel_D_reg),
					 .Judge_D(Judge_D),
					 .Judge_E(Judge_E),
					 .BD_E(BD_E),
					 .BD_D(BD_D),
					 .Req(Req),
					 .Exc_Code_D(Exc_Code_D),
					 .Exc_Code_E(Exc_Code_tmp_E)
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
	//wire					Start;
	wire					Busy;
	wire		[3:0]	   MDUop_E;
	wire		[31:0]   HI;
	wire		[31:0]   LO;
	wire		[31:0]   MDUout_E;
	wire					Sel_ALU_MDU_E;
	wire		[31:0]   E_out;//E级的输出
	wire					MDUclr;
	wire					Exc_Ov;
	wire					Exc_DM_Ov;
	wire					ALU_Ov;
	wire					ALU_DM_Ov;
	
	CTRL _ctrl_E(.OP(Instr_E[31:26]),
					 .Func(Instr_E[5:0]),
					 .Instr(Instr_E),
					 .ALUsrc(ALUsrc_E),
					 .ALUctrl(ALUctrl_E),
					 .Regwrite(Regwrite_E),
					 .Memwrite(Memwrite_E),
					 .Sel_ALU_MDU(Sel_ALU_MDU_E),
					 .Start(Start),
					 .MDUop(MDUop_E),
					 .Judge(Judge_E),
					 .ALU_Ov(ALU_Ov),
				    .ALU_DM_Ov(ALU_DM_Ov)
	);
	
	ALU _alu_E(.ALU_Ov(ALU_Ov),
				  .ALU_DM_Ov(ALU_DM_Ov),
				  .ALUctrl(ALUctrl_E),
				  .SrcA(SrcA_E),
				  .SrcB(SrcB_E),
				  .s(Instr_E[10:6]),
				  .ALUresult(ALUresult_E),
				  .Exc_Ov(Exc_Ov),
				  .Exc_DM_Ov(Exc_DM_Ov)
				  );
				  
	MDU _mdu_E(.clk(clk),
				  .Req(Req),
				  .reset(reset),
				  .SrcA(SrcA_E),
				  .SrcB(SrcB_E),
				  .Start(Start),
				  .MDUop(MDUop_E),
				  .HI(HI),
				  .LO(LO),
				  .MDUout(MDUout_E),
				  .Busy(Busy),
				  .MDUclr(MDUclr)
	);
				  
	assign ALUsrc0_E = (ALUsrc_E == 2'b00)? RD2_E:
							 (ALUsrc_E == 2'b01)? EXTImm_E: RD2_E;
	
	assign E_out = (Sel_ALU_MDU_E == 1'b0)? ALUresult_E : MDUout_E;
	
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
						 
						 
	assign Exc_Code_E = (Exc_Code_tmp_E)? Exc_Code_tmp_E:
							  (Exc_Ov==1'b1)  ?`Exc_Ov        :
							  `Exc_None;
	
/*==============EX_DM==============*/
	wire 		[31:0]		PC_M;
	wire		 [4:0]		A3_M;
	wire		 [4:0]		A2_M;
	wire		[31:0]		Instr_M;
	wire		[31:0]		ALUresult_M;
	wire		[31:0]		RD2_M;
	wire						Judge_M;
	wire		 [4:0]		Exc_Code_M;
	wire		 [4:0]		Exc_Code_tmp_M;
	wire						BD_M;
	wire						DM_Ov;
	EX_DM _ex_dm(.clk(clk),
					 .reset(reset),
					 .Req(Req),
					 .PC_E(PC_E),
					 .A3_E(A3_E),
					 .A2_E(A2_E),
					 .Instr_E(Instr_E),
					 .RD2_E(RD2_FW_E),							//RD2_E传的是DM的wd内容
					 .ALUresult_E(E_out),						//这里做了修改，Eout是ALU或者MDU的结果
					 .A2_M(A2_M),
					 .PC_M(PC_M),
					 .A3_M(A3_M),
					 .Instr_M(Instr_M),
					 .ALUresult_M(ALUresult_M),
					 .RD2_M(RD2_M),
					 .Judge_E(Judge_E),
					 .Judge_M(Judge_M),
					 .BD_E(BD_E),
					 .BD_M(BD_M),
					 .Exc_Code_E(Exc_Code_E),
					 .Exc_Code_M(Exc_Code_tmp_M),
					 .Exc_DM_Ov(Exc_DM_Ov),
					 .DM_Ov(DM_Ov)
					);

/*===============M===============*/
	wire		[31:0]		WD_DM_M;
	wire 						Memwrite_M;
	wire		 [1:0]		BEop_M;
	wire		 [2:0]		DEop_M;
	wire		 				WD_DM_Sel;
	wire						Regwrite_M;
	wire		[31:0]		RD_M;
	wire 		[31:0]      Dout_M;
	wire						load;
	wire						store;
	wire						Exc_AdES_M;
	wire						Exc_AdEL_M;
	wire		 [31:0]		CP0out_M;
	wire						EXLclr;
	wire						CP0_en;
	CTRL _ctrl_M(.OP(Instr_M[31:26]),
					.Func(Instr_M[5:0]),
					.Instr(Instr_M),
					.Memwrite(Memwrite_M),
			      .BEop(BEop_M),
					.DEop(DEop_M),
					.Regwrite(Regwrite_M),
					.Judge(Judge_M),
					.EXLClr(EXLclr),
					.CP0_en(CP0_en),
					.store(store),
					.load(load)
				 );
				 
	BE _be(.store(store),
			 .Exc_AdES_M(Exc_AdES_M),
			 .DM_Ov(DM_Ov),
			 .A(ALUresult_M),
			 .BEop(BEop_M),
			 .WD(WD_DM_M),
			 .WE(Memwrite_M&&!Req),
			 .m_data_rdata(m_data_rdata),
			 //input
			 .m_data_byteen(m_data_byteen),
			 .m_data_wdata(m_data_wdata)
			 //output
	);
	
	DE _de(.load(load),
			 .Exc_AdEL_M(Exc_AdEL_M),
			 .DM_Ov(DM_Ov),
			 .A(ALUresult_M),
			 .Din(m_data_rdata),//从DM中读出的值
			 .DEop(DEop_M),
			 .Dout(Dout_M)
			 );
	
	CP0 _cp0(.clk(clk),
				.reset(reset),
				.en(CP0_en),
				.CP0Add(Instr_M[15:11]),
				.CP0In(WD_DM_M),
				.CP0Out(CP0out_M),
				.VPC(PC_M),
				.BDIn(BD_M),
				.ExcCodeIn(Exc_Code_M),
				.HWInt(HWInt),
				.EXLClr(EXLclr),
				//.EPCOut(EPC),
				.Req(Req),
				.Intrespon(Intrespon)
				);
	assign EPC = CP0out_M;
	
	assign m_data_addr = ALUresult_M;
		
   assign m_inst_addr = PC_M;
	
	// WB 到 M 转发
	
	assign WD_DM_Sel = (A3_WB == A2_M && Regwrite_WB == 1'b1 && A3_WB!=5'b0 )? 1'b1:1'b0;
	
	assign WD_DM_M = (WD_DM_Sel==1'b0)? RD2_M : WD_WB;

	assign macroscopic_pc = PC_M;
	
	assign Exc_Code_M = (Exc_Code_tmp_M)? Exc_Code_tmp_M:
							  (Exc_AdEL_M)? `Exc_AdEL:
							  (Exc_AdES_M)? `Exc_AdES:
							  `Exc_None;

/*============DM_WB=============*/
	wire		[31:0]		Instr_WB;
	wire		[31:0]		ALUresult_WB;
	wire		[31:0]		RD_WB;
	wire						Judge_WB;
	wire		[31:0]		CP0out_WB;
	DM_WB _dm_wb(.clk(clk),
					 .reset(reset),
					 .Req(Req),
					 .PC_M(PC_M),
					 .A3_M(A3_M),
					 .Instr_M(Instr_M),
					 .ALUresult_M(ALUresult_M),
					 .RD_M(Dout_M), //从DM读出的值
					 .PC_WB(PC_WB),
					 .A3_WB(A3_WB),
					 .Instr_WB(Instr_WB),
					 .ALUresult_WB(ALUresult_WB),
					 .RD_WB(RD_WB),
					 .Judge_M(Judge_M),
					 .Judge_WB(Judge_WB),
					 .CP0out_M(CP0out_M),
					 .CP0out_WB(CP0out_WB)
					);

/*=============WB=============*/
	wire		 [1:0]		MemtoReg_WB;
	
	CTRL ctrl_wb(.OP(Instr_WB[31:26]),
					 .Func(Instr_WB[5:0]),
					 .Instr(Instr_WB),
					 .Regwrite(Regwrite_WB),
					 .MemtoReg(MemtoReg_WB),
					 .Judge(Judge_WB)
					 );
	assign w_grf_we = Regwrite_WB;
	
	assign w_grf_addr = A3_WB;
	
   assign w_grf_wdata = WD_WB;
	
   assign w_inst_addr = PC_WB;

	assign 	WD_WB = (MemtoReg_WB == 2'b00)? ALUresult_WB:
						  (MemtoReg_WB == 2'b01)? RD_WB:
						  (MemtoReg_WB == 2'b10)? (PC_WB+32'd8):
						  (MemtoReg_WB == 2'b11)? CP0out_WB:ALUresult_WB;

/*=============Hazard=============*/
	HAZARD _hazard(
		 .clk(clk),
		 .reset(reset),
		 .D_eret(D_eret),
		 .Instr_D(Instr_D),
		 .Instr_E(Instr_E),
		 .Instr_M(Instr_M),
		 .Regwrite_E(Regwrite_E),
		 .Regwrite_M(Regwrite_M),
		 .Busy(Busy),
		 .Start(Start),
		 .PCwrite(PC_write),
		 .IF_ID_en(IF_ID_en),
		 .ID_EX_clr(ID_EX_clr),
		 .Tuse_rs_D(Tuse_rs),
		 .Tuse_rt_D(Tuse_rt),
		 .Tnew_E_(Tnew_E),
		 .Tnew_M_(Tnew_M),
		 .MDUclr(MDUclr)
    );
endmodule
