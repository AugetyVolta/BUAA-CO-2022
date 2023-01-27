`timescale 1ns / 1ps
module Adder(
input [31:0] nowPC,
output [31:0] adder
);
assign adder=nowPC+4;
endmodule
