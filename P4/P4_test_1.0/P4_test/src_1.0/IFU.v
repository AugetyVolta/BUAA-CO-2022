`timescale 1ns / 1ps
`include "NPC.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:50 10/27/2022 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input clk,
    input reset,
    input [2:0] Branchop,
    input [1:0] NPCop,
    input [25:0] instr_index,
    input [15:0] offset,
    input [31:0] Reg,
    input Less,
    input Equal,
    output [31:0] NPC,
    output [31:0] Instr,
	 output reg [31:0] PC
    );
	integer i;
	reg [31:0] ROM [0:4095];
	initial begin
		PC=32'h0000_3000;
		//for(i=0;i<1024;i=i+1)
			//ROM[i]<=0;
		$readmemh("code.txt",ROM);
		//$display("init");
		//$monitor(Instr);
	end
	wire [31:0] NPC_wire;
	
	wire equal;
	wire n_equal;
	wire less;
	wire big;
	wire less_equal;
	wire big_equal;
	wire [31:0] PC1;
	assign equal=Equal;
	assign n_equal=~Equal;
	assign less=Less;
	assign big=(~Less)&(~Equal);
	assign less_equal=Less|Equal;
	assign big_equal=~Less;
	assign PC1=PC-32'h0000_3000;
	NPC npc(.PC(PC),.NPCop(NPCop),.Branchop(Branchop),.instr_index(instr_index),.offset(offset),.Reg(Reg),
			  .equal(equal),.n_equal(n_equal),.less(less),.big(big),.less_or_equal(less_equal),.big_or_equal(big_equal),
			  .NPC(NPC_wire));
	
	assign NPC=NPC_wire;
	
	always@(posedge clk)begin
		if(reset==1)begin
			PC<=32'h0000_3000;
		end
		else begin
			PC<=NPC_wire;
		end
	end
	assign Instr=ROM[PC1[13:2]];
endmodule
