`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:01 12/01/2022 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,                    // 时钟信号
    input reset,                  // 同步复位信号
    input interrupt,              // 外部中断信号
    output [31:0] macroscopic_pc, // 宏观 PC

    output [31:0] i_inst_addr,    // IM 读取地址（取指 PC）
    input  [31:0] i_inst_rdata,   // IM 读取数据

    output [31:0] m_data_addr,    // DM 读写地址
    input  [31:0] m_data_rdata,   // DM 读取数据
    output [31:0] m_data_wdata,   // DM 待写入数据
    output [3 :0] m_data_byteen,  // DM 字节使能信号

    output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信号

    output [31:0] m_inst_addr,    // M 级 PC

    output w_grf_we,              // GRF 写使能信号
    output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,    // GRF 待写入数据

    output [31:0] w_inst_addr     // W 级 PC
);
	 wire				Intrespon;
	 wire	  [5:0]  HWInt;
    wire	 [31:0]	TC0_Dout;
	 wire	 [31:0]	TC0_Addr;
    wire				TC0_WE;
    wire	 [31:0]  TC0_Din;
	 wire	 			IRQ_0;
	 wire	 [31:0]	TC1_Dout;
	 wire	 [31:0]	TC1_Addr;
    wire				TC1_WE;
    wire	 [31:0]  TC1_Din;
	 wire	 			IRQ_1;
	 wire  [31:0]  m_data_addr_cpu;
    wire  [31:0]  m_data_rdata_cpu;
    wire  [31:0]  m_data_wdata_cpu;
    wire   [4:0]  m_data_byteen_cpu;
	 wire  [31:0]  m_data_addr_bridge;
    wire   [4:0]  m_data_byteen_bridge;			
	mips_cpu _cpu(.clk(clk),
					  .reset(reset),
					  .interrupt(interrupt),
					  .HWInt(HWInt),
					  .macroscopic_pc(macroscopic_pc),
					  .i_inst_addr(i_inst_addr),
					  .i_inst_rdata(i_inst_rdata),
					  .m_data_addr(m_data_addr_cpu),
					  .m_data_rdata(m_data_rdata_cpu),
					  .m_data_wdata(m_data_wdata_cpu),
					  .m_data_byteen(m_data_byteen_cpu),
					  .m_inst_addr(m_inst_addr),
					  .w_grf_we(w_grf_we),
					  .w_grf_addr(w_grf_addr),
					  .w_grf_wdata(w_grf_wdata),
					  .w_inst_addr(w_inst_addr),
					  .Intrespon(Intrespon)
						);
	
	
	TC _tc0(.clk(clk),
			  .reset(reset),
			  .Dout(TC0_Dout),
			  .Addr(TC0_Addr),
			  .WE(TC0_WE),
			  .Din(TC0_Din),
			  .IRQ(IRQ_0)
			  );
	
	TC _tc1(.clk(clk),
			  .reset(reset),
			  .Dout(TC1_Dout),
			  .Addr(TC1_Addr),
			  .WE(TC1_WE),
			  .Din(TC1_Din),
			  .IRQ(IRQ_1)
			  );
	
	Bridge _bridge(.m_data_addr_cpu(m_data_addr_cpu),
						.m_data_rdata_cpu(m_data_rdata_cpu),
						.m_data_wdata_cpu(m_data_wdata_cpu),
						.m_data_byteen_cpu(m_data_byteen_cpu),
						.m_data_addr(m_data_addr_bridge),
						.m_data_rdata(m_data_rdata),
						.m_data_wdata(m_data_wdata),
						.m_data_byteen(m_data_byteen_bridge),
						.TC0_Dout(TC0_Dout),
						.TC0_Addr(TC0_Addr),
						.TC0_WE(TC0_WE),
						.TC0_Din(TC0_Din),
						.TC1_Dout(TC1_Dout),
						.TC1_Addr(TC1_Addr),
						.TC1_WE(TC1_WE),
						.TC1_Din(TC1_Din)
						);
						
	assign m_data_addr = (interrupt==1'b1&&Intrespon==1'b1)? 32'h7f20:m_data_addr_bridge;
	
	assign m_data_byteen = (interrupt==1'b1&&Intrespon==1'b1)? 4'b1: m_data_byteen_bridge;
	
	assign HWInt = {3'b0,interrupt|1'b0,IRQ_1,IRQ_0};
endmodule
