`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:18 11/07/2022 
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
`define lbget 6'b100000
module HAZARD_E(
	input  [31:0] 	Instr_E,
	output  reg [1:0] 	Tnew_E,
	output  reg [4:0] 	Num_new_E	
    );
	 wire [4:0] rs;
	 wire	[4:0] rt;
	 wire	[4:0] rd;
	 assign {rs,rt,rd}=Instr_E[25:11];
	always@(*)begin
		case(Instr_E[31:26])
			`R: begin
					case(Instr_E[5:0])
						`add: 
						begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
							end
						`sub:
						begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`Jr:begin
							Tnew_E = 2'b00;
							Num_new_E = 5'b0;
						end
					endcase
			end
			
			`ori: begin
				Tnew_E = 2'b01;
				Num_new_E = rt;
			end
			
			`sw: begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`lw: begin
				Tnew_E = 2'b10;
				Num_new_E = rt;
			end	
			
			`Jal: begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b11111;
			end
			
			`lui:begin
				Tnew_E = 2'b01;
				Num_new_E = rt;
			end
			
			`J:begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`J:begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`lbget:begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
		endcase
	end
	
	
endmodule
