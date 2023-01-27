`timescale 1ns / 1ps
module Nadd(
input [31:0] adder,
input [31:0] ext,
output [31:0] nadd
);
assign nadd=adder+ext;
endmodule
