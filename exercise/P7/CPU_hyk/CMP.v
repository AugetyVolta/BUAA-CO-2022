`timescale 1ns / 1ps
module CMP (
    input [31:0] in1,
    input [31:0] in2,
    output [1:0] result
);
assign result=(in1==in2)?0:
                (in1>in2)?1:2;
endmodule