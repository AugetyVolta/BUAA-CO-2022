`timescale 1ns / 1ps
`include "constant.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:19 11/07/2022 
// Design Name: 
// Module Name:    HAZARD 
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
module HAZARD(
    input 			 	clk,
    input 	[31:0] 	Instr_D,
    input 	[31:0] 	Instr_E,
    input 			 	Regwrite_E,
    input 			 	Regwrite_M,
	 input				Busy,
	 input				Start,
    output 		    	PCwrite,
    output 			 	IF_ID_en,
    output 			 	ID_EX_clr,
	 output	[4:0]		Tuse_rs_D,
	 output	[4:0]	   Tuse_rt_D,
	 output	[1:0]		Tnew_E_,
	 output	[1:0]    Tnew_M_,
	 output				MDUclr
    );
	 
	 wire 	[1:0] 	Tnew_E;
	 wire 	[4:0] 	Num_new_E;
	 
	 wire 	[1:0] 	Tnew_M;
	 wire 	[4:0] 	Num_new_M;
	 
	 
	 wire    [1:0]    Tuse_rs;
	 wire		[1:0]    Tuse_rt;
	 wire		[4:0]		Num_use_rs;
	 wire		[4:0]		Num_use_rt;
	 
	 wire [4:0] rs;
	 wire	[4:0] rt;
	 wire	[4:0] rd;
	 assign {rs,rt,rd}=Instr_D[25:11];
	 assign Tuse_rs_D = Num_use_rs;
	 assign Tuse_rt_D = Num_use_rt;
	 assign Tnew_E_=Tnew_E;
	 assign Tnew_M_=Tnew_M;
	 
	 assign Num_use_rs = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `And)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Or)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `slt)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sltu)? rs:
							(Instr_D[31:26] == `ori)? rs:
							(Instr_D[31:26] == `addi)? rs:
							(Instr_D[31:26] == `andi)? rs:
							(Instr_D[31:26] == `lui)? 5'b0:
							(Instr_D[31:26] == `sw) ? rs:
							(Instr_D[31:26] == `sb) ? rs:
							(Instr_D[31:26] == `sh) ? rs:
							(Instr_D[31:26] == `lw) ? rs:
							(Instr_D[31:26] == `lb) ? rs:
							(Instr_D[31:26] == `lh) ? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mult_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `multu_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `div_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `divu_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mfhi_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mflo_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mthi_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mtlo_I)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `shl_I)? 5'b0:
							(Instr_D[31:26] == `beq)? rs:
							(Instr_D[31:26] == `bne)? rs:
							(Instr_D[31:26] == `Jal)? 5'b0:
							(Instr_D[31:26] == `J)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)? rs:5'b0;
	 
	 
	 assign Tuse_rs = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `Or)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `And)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `slt)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sltu)?2'b1:
								(Instr_D[31:26] == `ori)?2'b1:
								(Instr_D[31:26] == `addi)?2'b1:
								(Instr_D[31:26] == `andi)?2'b1:
								(Instr_D[31:26] == `lui)?2'b0:
								(Instr_D[31:26] == `sw) ?2'b1:
								(Instr_D[31:26] == `sb) ?2'b1:
								(Instr_D[31:26] == `sh) ?2'b1:
								(Instr_D[31:26] == `lw) ?2'b1:
								(Instr_D[31:26] == `lb) ?2'b1:
								(Instr_D[31:26] == `lh) ?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mult_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `multu_I)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `div_I)?  2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `divu_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mfhi_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mflo_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mthi_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mtlo_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `shl_I)? 2'b0:
								(Instr_D[31:26] == `beq)?2'b0:
								(Instr_D[31:26] == `bne)?2'b0:
								(Instr_D[31:26] == `Jal)?2'b0:
								(Instr_D[31:26] == `J)?2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)?2'b0:2'b0;
	 
	 
	 assign Num_use_rt = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Or)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `And)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `slt)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sltu)? rt:
							(Instr_D[31:26] == `ori)? 5'b0:
							(Instr_D[31:26] == `addi)? 5'b0:
							(Instr_D[31:26] == `andi)? 5'b0:
							(Instr_D[31:26] == `lui)? 5'b0:
							(Instr_D[31:26] == `sw) ? rt:
							(Instr_D[31:26] == `sb) ? rt:
							(Instr_D[31:26] == `sh) ? rt:
							(Instr_D[31:26] == `lw) ? 5'b0:
							(Instr_D[31:26] == `lb) ? 5'b0:
							(Instr_D[31:26] == `lh) ? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mult_I)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `multu_I)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `div_I)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `divu_I)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mfhi_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mflo_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mthi_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `mtlo_I)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `shl_I)? 5'b0:
							(Instr_D[31:26] == `beq)? rt:
							(Instr_D[31:26] == `bne)? rt:
							(Instr_D[31:26] == `Jal)? 5'b0:
							(Instr_D[31:26] == `J)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)?5'b0:5'b0;
	 
	 
	 assign Tuse_rt = 	(Instr_D[31:26] == `R && Instr_D[5:0] == `add)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `And)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `Or)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `slt)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sltu)?2'b1:
								(Instr_D[31:26] == `ori)?2'b0:
								(Instr_D[31:26] == `addi)?2'b0:
								(Instr_D[31:26] == `andi)?2'b0:
								(Instr_D[31:26] == `lui)?2'b0:
								(Instr_D[31:26] == `sw) ?2'b10:
								(Instr_D[31:26] == `sb) ?2'b10:
								(Instr_D[31:26] == `sh) ?2'b10:
								(Instr_D[31:26] == `lw) ?2'b0:
								(Instr_D[31:26] == `lb) ?2'b0:
								(Instr_D[31:26] == `lh) ?2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mult_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `multu_I)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `div_I)?  2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `divu_I)? 2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mfhi_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mflo_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mthi_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `mtlo_I)? 2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `shl_I)? 2'b0:
								(Instr_D[31:26] == `beq)?2'b0:
								(Instr_D[31:26] == `bne)?2'b0:
								(Instr_D[31:26] == `Jal)?2'b0:
								(Instr_D[31:26] == `J)?2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)?2'b0:2'b0;
	 

	 HAZARD_E hazard_e(.Instr_E(Instr_E),
							 .Tnew_E(Tnew_E),
							 .Num_new_E(Num_new_E)
							 );
							 
	 
	 HAZARD_M hazard_m(.clk(clk),
							 .Tnew_E(Tnew_E),
							 .Num_new_E(Num_new_E),
							 .Tnew_M(Tnew_M),
							 .Num_new_M(Num_new_M)
							 );
	 wire  stall;
	 assign stall = (( Num_use_rs == Num_new_E)&&( Num_use_rs != 5'b0)&& (Regwrite_E==1'b1) && (Tuse_rs < Tnew_E) )|
						 (( Num_use_rs == Num_new_M)&&( Num_use_rs != 5'b0)&& (Regwrite_M==1'b1) && (Tuse_rs < Tnew_M) )|
						 (( Num_use_rt == Num_new_E)&&( Num_use_rt != 5'b0)&& (Regwrite_E==1'b1) && (Tuse_rt < Tnew_E) )|
						 (( Num_use_rt == Num_new_M)&&( Num_use_rt != 5'b0)&& (Regwrite_M==1'b1) && (Tuse_rt < Tnew_M) )| 
						 ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`mfhi_I) |
						 ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`mflo_I) |
						 ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`mthi_I) |
						 ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`mtlo_I) |
						 ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`shl_I)  |1'b0;
	 
	 assign PCwrite = ~stall;
	 
	 assign IF_ID_en= ~stall;
	 
	 assign ID_EX_clr= stall;
	 
	 assign MDUclr = ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`mult_I) | 
						  ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`multu_I)|
						  ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`div_I)  |
						  ((Busy==1'b1 ||Start==1'b1)&&Instr_D[31:26]==`R&&Instr_D[5:0]==`divu_I) |1'b0;
	 
	 
	 

endmodule
