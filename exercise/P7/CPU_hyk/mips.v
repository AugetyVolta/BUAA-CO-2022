`timescale 1ns / 1ps
`define StartAddrDM 32'h00000000
`define EndAddrDM 32'h00002fff
`define StartAddrTC1 32'h00007f00
`define EndAddrTC1 32'h00007f0b
`define StartAddrTC2 32'h00007f10
`define EndAddrTC2 32'h00007f1b
`define StartInt 32'h00007f20
`define EndInt 32'h00007f23
module mips(
    input clk,                    // 时钟信号
    input reset,                  // 同步复位信号
    input interrupt,              // 外部中断信号
    output [31:0] macroscopic_pc, // 宏观 PC

    output [31:0] i_inst_addr,    // IM 读取地址（取�PC�
    input  [31:0] i_inst_rdata,   // IM 读取数据

    output [31:0] m_data_addr,    // DM 读写地址
    input  [31:0] m_data_rdata,   // DM 读取数据
    output [31:0] m_data_wdata,   // DM 待写入数�
    output [3 :0] m_data_byteen,  // DM 字节使能信号

    output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信�

    output [31:0] m_inst_addr,    // M �PC

    output w_grf_we,              // GRF 写使能信�
    output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,    // GRF 待写入数�

    output [31:0] w_inst_addr     // W �PC
);
wire [31:0] cpu_m_data_addr;
wire [3:0] cpu_m_data_byteen;
wire [31:0] cpu_m_data_rdata;
wire PrWE;
wire [5:0] hwint = {3'b0, interrupt, IRQ2, IRQ1};
assign m_data_byteen= ((cpu_m_data_addr>=`StartAddrDM) & (cpu_m_data_addr<=`EndAddrDM))?cpu_m_data_byteen:0;
assign m_data_addr=cpu_m_data_addr;
CPU cpu(clk,
        reset,
        i_inst_rdata,
        cpu_m_data_rdata,
        hwint,
        i_inst_addr,
        cpu_m_data_addr,
        m_data_wdata,
        cpu_m_data_byteen,
        m_inst_addr,
        w_grf_we,
        w_grf_addr,
        w_grf_wdata,
        w_inst_addr,
        macroscopic_pc,
        PrWE);
/*****interrupt*****/
//Timer
wire selTC1 = (cpu_m_data_addr >= `StartAddrTC1) && (cpu_m_data_addr <= `EndAddrTC1);
wire selTC2 = (cpu_m_data_addr >= `StartAddrTC2) && (cpu_m_data_addr <= `EndAddrTC2);
wire TCwe1 = selTC1 && PrWE;
wire TCwe2 = selTC2 && PrWE;
wire [31:0] TCout1;
wire [31:0] TCout2;
wire IRQ1;
wire IRQ2;
wire [31:0] PrRD = selTC1 ? TCout1 :
            selTC2 ? TCout2:0;
TC tc1(clk,reset,cpu_m_data_addr[31:2],TCwe1,m_data_wdata,TCout1,IRQ1);
TC tc2(clk,reset,cpu_m_data_addr[31:2],TCwe2,m_data_wdata,TCout2,IRQ2);
assign cpu_m_data_rdata= (selTC1 | selTC2)? PrRD : m_data_rdata;

//interrupt
assign m_int_addr= cpu_m_data_addr;
assign m_int_byteen= ((cpu_m_data_addr>=`StartInt) & PrWE)? cpu_m_data_byteen:0;
endmodule