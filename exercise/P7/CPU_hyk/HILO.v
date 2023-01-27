`timescale 1ns / 1ps
`define mult 4'b0001
`define multu 4'b0010
`define div 4'b0011
`define divu 4'b0100
`define mfhi 4'b0101
`define mflo 4'b0110
`define mthi 4'b0111
`define mtlo 4'b1000
module HILO(
    input clk,
    input reset,
	input req,
    input [3:0] hiloop,
    input [31:0] op1,
    input [31:0] op2,
    output busy,
    output [31:0] hiloout
);
reg [31:0] hi=0;
reg [31:0] lo=0;
reg [31:0] last=0;
assign busy =(hiloop == `mult)|(hiloop == `multu)|(hiloop == `div)|(hiloop == `divu)|(last != 0);
assign hiloout = (hiloop == `mfhi)? hi:
                    (hiloop == `mflo)? lo:0;
always @(posedge clk) begin
	if(reset) begin
		hi <= 0;
		lo <= 0;
		last <= 0;
	end
	else if (req==0) begin
		if(last==0 && hiloop!=0) begin // 开始计�
			if(hiloop == `mult) begin
				{hi[31:0], lo[31:0]} <= $signed(op1) * $signed(op2);
				last <= 5;
			end
			else if(hiloop == `multu) begin
				{hi[31:0], lo[31:0]} <= op1 * op2;
				last <= 5;
			end
			else if(hiloop == `div) begin
				hi[31:0] <= $signed(op1) % $signed(op2);
				lo[31:0] <= $signed(op1) / $signed(op2);
				last <= 10;
			end
			else if(hiloop == `divu) begin
				hi[31:0] <= op1 % op2;
				lo[31:0] <= op1 / op2;
				last <= 10;
			end
			else if(hiloop == `mthi) begin
                hi <= op1;
            end
			else if(hiloop == `mtlo) begin // mtlo
                lo <= op1; 
			end
		end
		else if(last!=0 && hiloop==0) begin // 计算�
			last <= last - 1;
		end
		else begin
			last <= last;
		end
	end
end
endmodule