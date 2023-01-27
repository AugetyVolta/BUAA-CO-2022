`timescale 1ns / 1ps
`define Int 5'd0 //外部中断
`define AdEL 5'd4 //取指取数异常
`define AdES 5'd5 //存数异常
`define Syscall 5'd8 //系统调用
`define RI 5'd10 //未知指令
`define Ov 5'd12 //溢出异常
`define IM SR[15:10]
`define EXL SR[1]
`define IE SR[0]
`define BD Cause[31]
`define IP Cause[15:10]
`define ExcCode Cause[6:2]
module CP0 (
    input clk,
    input reset,
    input en,  //写使�
    input [4:0] cp0addr,  //寄存器地址
    input [31:0] cp0in,  //cp0写入数据
    input [31:0] vpc,  //受害pc
    input bdin,  //是否是延迟槽指令
    input [4:0] exccodein,  //记录异常类型
    input [5:0] hwint,  //输入中断信号
    input exlclr,  //用来复位exl
    output [31:0] cp0out,  //cp0读出数据
    output [31:0] epcout,  //EPC的�
    output req  //进入处理程序请求
);
reg [31:0] SR;
reg [31:0] Cause;
reg [31:0] EPC;
initial begin
    SR<=0;
    Cause<=0;
    EPC<=0;
end

assign cp0out = (cp0addr == 12)? SR:
                    (cp0addr == 13)? Cause:
                    (cp0addr == 14)? EPC:0;

wire intreq = (|(`IM & hwint)) & `IE & (!`EXL); 
// (6个中断中至少有一个输入信号为1且这一个在im中允许中� 且全局中断使能� 且没有在核心�
wire excreq = (|exccodein) & (!`EXL);
// 异常类型不为0（不是外部中断）且程序不在核心�
assign req = intreq | excreq;

assign epcout = EPC; 
always @(posedge clk) begin
    if(reset) begin
        SR<=0;
        Cause<=0;
        EPC<=0;
    end else begin
        `IP <= hwint;
        if(exlclr == 1) `EXL <=0;
        if(req == 1) begin
            `ExcCode <= intreq ? `Int : exccodein;
            `EXL <= 1'b1;
            EPC <= (bdin == 1)? vpc-4 : vpc; 
            `BD <=bdin;
        end else if (en == 1) begin
            if (cp0addr == 12) SR <= cp0in;
            else if (cp0addr == 14) EPC<=cp0in;
        end
    end
end
endmodule