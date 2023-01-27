`timescale 1ns / 1ps
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
`define R 	6'b000000
`define add 6'b100000
`define sub 6'b100010
`define ori 6'b001101
`define sw 	6'b101011
`define lw 	6'b100011
`define beq 6'b000100
`define Jal 6'b000011
`define Jr  6'b001000
`define lui 6'b001111
`define J   6'b000010
`define bgezal 6'b000001
module HAZARD(
    input 			 	clk,
    input 	[31:0] 	Instr_D,
    input 	[31:0] 	Instr_E,
    input 			 	Regwrite_E,
    input 			 	Regwrite_M,
    output 		    	PCwrite,
    output 			 	IF_ID_en,
    output 			 	ID_EX_clr,
	 output	[4:0]		Num_use_rs_D,
	 output	[4:0]	   Num_use_rt_D,
	 output	[1:0]		Tnew_E_,
	 output	[1:0]    Tnew_M_
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
	 assign Num_use_rs_D = Num_use_rs;
	 assign Num_use_rt_D = Num_use_rt;
	 assign Tnew_E_=Tnew_E;
	 assign Tnew_M_=Tnew_M;
	 
	 assign Num_use_rs = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)? rs:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)? rs:
							(Instr_D[31:26] == `ori)? rs:
							(Instr_D[31:26] == `lui)? 5'b0:
							(Instr_D[31:26] == `sw) ? rs:
							(Instr_D[31:26] == `lw) ? rs:
							(Instr_D[31:26] == `beq)? rs:
							(Instr_D[31:26] == `Jal)? 5'b0:
							(Instr_D[31:26] == `bgezal)? rs:
							(Instr_D[31:26] == `J)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)? rs:5'b0;
	 
	 
	 assign Tuse_rs = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)?2'b1:
								(Instr_D[31:26] == `ori)?2'b1:
								(Instr_D[31:26] == `lui)?2'b0:
								(Instr_D[31:26] == `sw) ?2'b1:
								(Instr_D[31:26] == `lw) ?2'b1:
								(Instr_D[31:26] == `beq)?2'b0:
								(Instr_D[31:26] == `Jal)?2'b0:
								(Instr_D[31:26] == `bgezal)?2'b0:
								(Instr_D[31:26] == `J)?2'b0:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)?2'b0:2'b0;
	 
	 
	 assign Num_use_rt = (Instr_D[31:26] == `R && Instr_D[5:0] == `add)? rt:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)? rt:
							(Instr_D[31:26] == `ori)? 5'b0:
							(Instr_D[31:26] == `lui)? 5'b0:
							(Instr_D[31:26] == `sw) ? rt:
							(Instr_D[31:26] == `lw) ? 5'b0:
							(Instr_D[31:26] == `beq)? rt:
							(Instr_D[31:26] == `Jal)? 5'b0:
							(Instr_D[31:26] == `bgezal)? 5'b0:
							(Instr_D[31:26] == `J)? 5'b0:
							(Instr_D[31:26] == `R && Instr_D[5:0] == `Jr)?5'b0:5'b0;
	 
	 
	 assign Tuse_rt = 	(Instr_D[31:26] == `R && Instr_D[5:0] == `add)?2'b1:
								(Instr_D[31:26] == `R && Instr_D[5:0] == `sub)?2'b1:
								(Instr_D[31:26] == `ori)?2'b0:
								(Instr_D[31:26] == `lui)?2'b0:
								(Instr_D[31:26] == `sw) ?2'b10:
								(Instr_D[31:26] == `lw) ?2'b0:
								(Instr_D[31:26] == `beq)?2'b0:
								(Instr_D[31:26] == `Jal)?2'b0:
								(Instr_D[31:26] == `bgezal)?2'b0:
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
	 wire   stall;
	 assign stall = (( Num_use_rs == Num_new_E)&&( Num_use_rs != 5'b0)&& (Regwrite_E==1'b1) && (Tuse_rs < Tnew_E) )|
						 (( Num_use_rs == Num_new_M)&&( Num_use_rs != 5'b0)&& (Regwrite_M==1'b1) && (Tuse_rs < Tnew_M) )|
						 (( Num_use_rt == Num_new_E)&&( Num_use_rt != 5'b0)&& (Regwrite_E==1'b1) && (Tuse_rt < Tnew_E) )|
						 (( Num_use_rt == Num_new_M)&&( Num_use_rt != 5'b0)&& (Regwrite_M==1'b1) && (Tuse_rt < Tnew_M) )| 1'b0;
	 
	 assign PCwrite = ~stall;
	 
	 assign IF_ID_en= ~stall;
	 
	 assign ID_EX_clr= stall;
	 

endmodule
