`timescale 1ns / 1ps
module Ext2(
input [25:0] imm26,
input [31:0] nowPC,
output [31:0] ext2
);
assign ext2 = {nowPC[31:28],imm26,2'b00};
endmodule