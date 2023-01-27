`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:15 10/27/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input 	[31:0] 	PC,
	 input 	[31:0] 	PC_in,   //这里是实际传进来的PC，不是当前的PC
    input 	[2:0] 	NPCop,//应该从D级传过来
    input 	[25:0] 	instr_index,
    input 	[15:0] 	offset,
    input 	[31:0] 	Reg,
	 input	[31:0]	Reg_rt,
	 input				Judge,
    output 	[31:0] 	NPC
    );
	 wire 	[31:0] 	O1;
	 wire	   [31:0] 	O2;
	 wire	   [31:0] 	O3;
	 wire	   [31:0] 	O4;
	 wire		[31:0]	PC_4;
	 
	assign PC_4 =PC_in+32'd4;
	
	assign O1 = PC+32'd4;
	
	assign O2 = {PC_4[31:28],instr_index,{2{1'b0}}};//这里需要注意一下PC，稍后改
	
	assign O3 = (Judge == 1'b0)?(PC+32'd4):(PC_in+32'd4+{{14{offset[15]}},offset,{2{1'b0}}});
	
	assign O4 = Reg;
	
	assign NPC = (NPCop == 3'b000) ? O1 :
					 (NPCop == 3'b001) ? O2 :
					 (NPCop == 3'b010) ? O3 :
					 (NPCop == 3'b011) ? O4 : 32'b00;
endmodule
