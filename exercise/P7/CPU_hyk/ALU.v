`timescale 1ns / 1ps
module ALU(
input [31:0] alu1,//操作�
input [31:0] alu2,//操作�
input [3:0] ALUop,//功能选择
output reg [31:0] alu,//计算结果
output reg overflow
);
wire [32:0] exAlu1 = {alu1[31],alu1};
wire [32:0] exAlu2 = {alu2[31],alu2};
reg [32:0] exAlu;
always @(*) begin
    overflow=0;
    case(ALUop)
    0: begin
        alu=alu1+alu2;
        exAlu=exAlu1+exAlu2;
        overflow=(exAlu[32]==exAlu[31])?0:1;
    end
    1: begin
        alu=alu1-alu2;
        exAlu=exAlu1-exAlu2;
        overflow=(exAlu[32]==exAlu[31])?0:1;
    end
    2: begin
        alu=alu1|alu2;
    end
    3: begin
        alu=alu2;
    end
    4: begin
        alu=alu1&alu2;
    end
    5: begin
        alu=($signed(alu1)<$signed(alu2))?1:0;
    end
    6: begin
        alu=(alu1<alu2)?1:0;
    end
    default: begin
        alu=0;
    end
    endcase
end
endmodule