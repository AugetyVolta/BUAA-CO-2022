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
    input [31:0] PC,
    input [1:0] NPCop,
	 input [2:0] Branchop,
    input [25:0] instr_index,
    input [15:0] offset,
    input [31:0] Reg,
    input equal,
    input n_equal,
    input less,
    input big,
    input less_or_equal,
    input big_or_equal,
    output [31:0] NPC
    );
	wire [31:0] O1;
	wire [31:0] O2;
	wire [31:0] O3;
	wire [31:0] O4;
	wire O3_MUX_ctrl;
	assign O1=PC+32'd4;
	assign O2={PC[31:28],instr_index,{2{1'b0}}};
	assign O4=Reg;
	assign O3_MUX_ctrl=(Branchop==3'b000)?equal:
							 (Branchop==3'b001)?n_equal:
							 (Branchop==3'b010)?less:
							 (Branchop==3'b011)?big:
							 (Branchop==3'b100)?less_or_equal:
							 (Branchop==3'b101)?big_or_equal:0;
	assign O3=(O3_MUX_ctrl==1'b0)?(PC+32'd4):(PC+32'd4+{{14{offset[15]}},offset,{2{1'b0}}});
	assign NPC=(NPCop==2'b00)?O1:
				  (NPCop==2'b01)?O2:
				  (NPCop==2'b10)?O3:
									  O4;
endmodule
