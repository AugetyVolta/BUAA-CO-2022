`timescale 1ns / 1ns
module Reg32(
input clk,
input en,
input reset,
input [31:0] in,
output [31:0] out
);
    reg [31:0] reg32;
	 assign out=reg32;
    always @(posedge clk) begin
	    if(reset) reg32<=0;
		else if(en) reg32<=in;
	 end
endmodule

module Reg1(
input clk,
input en,
input reset,
input in,
output out
);
    reg reg1;
	assign out=reg1;
    always @(posedge clk) begin
	    if(reset) reg1<=0;
		else if(en) reg1<=in;
	 end
endmodule

module Reg5(
input clk,
input en,
input reset,
input [4:0] in,
output [4:0] out
);
    reg [4:0] reg5;
	assign out=reg5;
    always @(posedge clk) begin
	    if(reset) reg5<=0;
		else if(en) reg5<=in;
	 end
endmodule