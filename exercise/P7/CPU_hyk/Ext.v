`timescale 1ns / 1ps
module Ext(
input [15:0] imm,//待扩�6位数
input [1:0] extOp,//扩展方式
output [31:0] ext//扩展后的32位数
);
assign ext = (extOp==0)?({{16{imm[15]}},imm}):
            (extOp==1)?({16'h0000,imm}):
            (extOp==2)?({imm,16'h0000}):({{16{imm[15]}},imm}<<2);
endmodule