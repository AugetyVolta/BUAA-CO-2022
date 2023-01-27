`timescale 1ns / 1ps
`define startAddr 32'h00003000
module PC(
input clk,//时钟
input reset,//同步复位
input en,
input req,
input [31:0] next,//下一条地址
output reg [31:0] nowPC=`startAddr//当前指令地址并附初?
);
always @(posedge clk) begin
    if(reset) begin
        nowPC<=`startAddr;
    end else if(req) begin
        nowPC<=32'h4180;
    end else if(en) begin
        nowPC<=next;
    end
end
endmodule