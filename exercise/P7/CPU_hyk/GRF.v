`timescale 1ns / 1ps
module GRF(
input clk,//时钟信号
input WEReg,//写使�
input reset,//同步复位
input [4:0] reg1,//读寄存器1
input [4:0] reg2,//读寄存器2
input [4:0] wreg,//写寄存器
input [31:0] wdata,//写数�
input [31:0] nowPC,//当前指令地址，仅用于控制台输�
output [31:0] rData1,//读数�
output [31:0] rData2//读数�
);
reg [31:0] regs [0:31];
assign rData1 = (wreg==reg1 && wreg!=0 && WEReg)? wdata : regs[reg1];
assign rData2 = (wreg==reg2 && wreg!=0 && WEReg)? wdata : regs[reg2];//inside forward
integer i;
always @(posedge clk) begin
    if(reset) begin
        for(i=0;i<32;i=i+1) begin
            regs[i]<=0;
        end
    end else if(WEReg) begin
        if(wreg!=0)begin
            regs[wreg] <= wdata;
        end
    end else begin
    end
end
endmodule