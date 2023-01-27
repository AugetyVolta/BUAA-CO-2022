`timescale 1ns / 1ps
`define startAddr 32'h00003000
module PC(
input clk,//ʱ��
input reset,//ͬ����λ
input en,
input req,
input [31:0] next,//��һ����ַ
output reg [31:0] nowPC=`startAddr//��ǰָ���ַ������?
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