`timescale 1ns / 1ps
module BE(
    input [1:0] addr,
    input [2:0] BEop,
    input [31:0] rdata2,
    output [3:0] data_byteen,
    output [31:0] BEout
);
wire [4:0] addr8 = {3'd0,addr}<<3;
assign data_byteen = (BEop==1)? 4'b1111:
                        (BEop==2)? ((addr[1]==0)? 4'b0011:4'b1100):
                        (BEop==3)? (4'b0001<<addr):0;
assign BEout = (BEop==1)? rdata2:
                        (BEop==2)? ((addr[1]==0)? rdata2:rdata2<<16):
                        (BEop==3)? (rdata2<<addr8):0;
endmodule