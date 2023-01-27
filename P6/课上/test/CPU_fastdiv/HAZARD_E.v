`timescale 1ns / 1ps
`include "constant.v"
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
						`And:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`Or:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`slt:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`sltu:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`Jr:begin
							Tnew_E = 2'b00;
							Num_new_E = 5'b0;
						end
						`mult_I:begin
							Tnew_E = 2'b01;
							Num_new_E = 5'b0;
						end
						`multu_I:begin
							Tnew_E = 2'b01;
							Num_new_E = 5'b0;
						end
						`div_I:begin
							Tnew_E = 2'b01;
							Num_new_E = 5'b0;
						end
						`divu_I:begin
							Tnew_E = 2'b01;
							Num_new_E = 5'b0;
						end
						`mfhi_I:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`mflo_I:begin
							Tnew_E = 2'b01;
							Num_new_E = rd;
						end
						`mthi_I:begin
							Tnew_E = 2'b00;
							Num_new_E = 5'b0;
						end
						`mtlo_I:begin
							Tnew_E = 2'b00;
							Num_new_E = 5'b0;
						end
						
						`fastdiv_I:begin
							Tnew_E = 2'b01;
							Num_new_E = 5'b0;
						end
					endcase
			end
			
			`ori: begin
				Tnew_E = 2'b01;
				Num_new_E = rt;
			end
			
			`addi: begin
				Tnew_E = 2'b01;
				Num_new_E = rt;
			end
			
			`andi: begin
				Tnew_E = 2'b01;
				Num_new_E = rt;
			end
			
			`sw: begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`sb: begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`sh: begin
				Tnew_E = 2'b00;
				Num_new_E = 5'b0;
			end
			
			`lw: begin
				Tnew_E = 2'b10;
				Num_new_E = rt;
			end
				
			`lb: begin
				Tnew_E = 2'b10;
				Num_new_E = rt;
			end
			
			`lh: begin
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
			
		endcase
	end
	
	
endmodule
