`timescale 1ns / 1ns
module FDreg (
    input clk,
    input en,
    input reset,
    input req,
    input [31:0] F_ins,
    input [31:0] F_pc4,
    input [4:0] F_exccode,
    input F_bd,
    output [31:0] D_ins,
    output [31:0] D_pc4,
    output [4:0] D_exccode,
    output D_bd
);
reg [31:0] PC;
reg bd;
assign D_pc4=PC;
assign D_bd=bd;
always @(posedge clk) begin
    if(reset | req) begin
        PC <= req? 32'h00004184:0;
        bd<=0;
    end else if(en) begin
        PC <= F_pc4;
        bd<=F_bd;
    end

end
Reg32 D_INS(clk,en,reset | req,F_ins,D_ins);
Reg5 D_EXCCODE(clk,en,reset | req,F_exccode,D_exccode);
Reg1 D_BD(clk,en,reset | req,F_bd,D_bd);
endmodule

module DEreg (
    input clk,
    input reset,
    input req,
    input stall,
    input [31:0] D_ins,
    input [31:0] D_pc4,
    input [31:0] D_rdata1,
    input [31:0] D_rdata2,
    input [31:0] D_extout,
    input [4:0] D_exccode,
    input D_bd,
    output [31:0] E_ins,
    output [31:0] E_pc4,
    output [31:0] E_rdata1,
    output [31:0] E_rdata2,
    output [31:0] E_extout,
    output [4:0] E_exccode,
    output E_bd
);
reg [31:0] PC;
reg bd;
assign E_pc4 = PC;
assign E_bd = bd;
always @(posedge clk) begin
    if(reset | stall | req) begin
        PC <= req? 32'h00004184 : (stall? D_pc4 : 0);
        bd <= stall? D_bd : 0;
    end else begin
        PC <= D_pc4;
        bd <= D_bd;
    end
end

Reg32 E_INS(clk,1'b1,reset | stall | req,D_ins,E_ins);
Reg32 E_RDATA1(clk,1'b1,reset | stall | req,D_rdata1,E_rdata1);
Reg32 E_RDATA2(clk,1'b1,reset | stall | req,D_rdata2,E_rdata2);
Reg32 E_EXTOUT(clk,1'b1,reset | stall | req,D_extout,E_extout);
Reg5 E_EXCCODE(clk,1'b1,reset | stall | req,D_exccode,E_exccode);
endmodule

module EMreg (
    input clk,
    input reset,
    input req,
    input [31:0] E_ins,
    input [31:0] E_pc4,
    input [31:0] E_rdata2,
    input [31:0] E_extout,
    input [31:0] E_aluout,
    input [4:0] E_exccode,
    input E_bd,
    output [31:0] M_ins,
    output [31:0] M_pc4,
    output [31:0] M_rdata2,
    output [31:0] M_extout,
    output [31:0] M_aluout,
    output [4:0] M_exccode,
    output M_bd
);
reg [31:0] PC;
assign M_pc4=PC;
always @(posedge clk) begin
    if(reset | req) begin
        PC <= req? 32'h00004184:0;
    end else begin
        PC <= E_pc4;
    end
end
Reg32 M_INS(clk,1'b1,reset | req,E_ins,M_ins);
Reg32 M_RDATA2(clk,1'b1,reset | req,E_rdata2,M_rdata2);
Reg32 M_EXTOUT(clk,1'b1,reset | req,E_extout,M_extout);
Reg32 M_ALUOUT(clk,1'b1,reset | req,E_aluout,M_aluout);
Reg5 M_EXCCODE(clk,1'b1,reset | req,E_exccode,M_exccode);
Reg1 M_BD(clk,1'b1,reset | req,E_bd,M_bd);
endmodule

module MWreg (
    input clk,
    input reset,
    input [31:0] M_ins,
    input [31:0] M_pc4,
    input [31:0] M_extout,
    input [31:0] M_aluout,
    input [31:0] M_ddata,
    output [31:0] W_ins,
    output [31:0] W_pc4,
    output [31:0] W_extout,
    output [31:0] W_aluout,
    output [31:0] W_ddata
);
Reg32 W_INS(clk,1'b1,reset,M_ins,W_ins);
Reg32 W_PC4(clk,1'b1,reset,M_pc4,W_pc4);
Reg32 W_EXTOUT(clk,1'b1,reset,M_extout,W_extout);
Reg32 W_ALUOUT(clk,1'b1,reset,M_aluout,W_aluout);
Reg32 W_DDATA(clk,1'b1,reset,M_ddata,W_ddata);
endmodule