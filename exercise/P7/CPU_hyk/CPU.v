`timescale 1ns / 1ps
`define StartPC 32'h00003000
`define EndPC 32'h00006ffc
`define AdEL 5'd4 //取指取数异常
`define AdES 5'd5 //存数异常
`define Syscall 5'd8 //系统调用
`define RI 5'd10 //未知指令
`define Ov 5'd12 //溢出异常
`define StartAddrTC1 32'h00007f00
`define EndAddrTC1 32'h00007f0b
`define StartAddrTC2 32'h00007f10
`define EndAddrTC2 32'h00007f1b
`define StartAddrDM 32'h00000000
`define EndAddrDM 32'h00002fff
`define StartInt 32'h00007f20
`define EndInt 32'h00007f23
module CPU(
    input clk,
    input reset,
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,
    input [5:0] HWint,
    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
    output [31:0] macroscopic_pc,
    output PrWE
    );
/*****wires*****/
wire stall = stall_conflict | (busy & D_ismd);
wire stall_conflict;
wire busy;
wire [2:0] forwardDRS;
wire [2:0] forwardDRT;
wire [1:0] forwardERS;
wire [1:0] forwardERT;
wire forwardMRT;
wire req;
assign cpu_req=req;
assign macroscopic_pc=M_pc4-4;
assign PrWE= (|m_data_byteen) & (req==0) & (m_data_addr >= 32'h00007f00);
//F
wire [31:0] F_pcmux2out;
wire [31:0] F_pcout;
wire [31:0] F_adderout;
wire [31:0] F_pcmux1out;

//D
wire [31:0] D_instr;
wire [31:0] D_pc4;
wire [31:0] D_naddout;
wire [31:0] D_rdata1out;
wire [31:0] D_rdata2out;
wire [31:0] D_RSout = (forwardDRS==0)? D_rdata1out:
                       (forwardDRS==1)? W_wdatamuxout:
                       (forwardDRS==2)? (M_pc4+4):
                       (forwardDRS==3)? M_alucp0:(E_pc4+4);
wire [31:0] D_RTout = (forwardDRT==0)? D_rdata2out:
                       (forwardDRT==1)? W_wdatamuxout:
                       (forwardDRT==2)? (M_pc4+4):
                       (forwardDRT==3)? M_alucp0:(E_pc4+4);
wire [31:0] D_extout;
wire [31:0] D_ext2out;
wire [4:0] D_oldexccode;
wire D_pcmux1ctrl= (D_isbeq & (D_cmpout==0)) | (D_isbne & (D_cmpout!=0));
wire [1:0] D_pcmux2ctrl;
wire D_isbeq;
wire D_isbne;
wire [1:0] D_extop;
wire [1:0] D_cmpout;
wire D_branch;
wire D_cal_r;
wire D_cal_i;
wire D_load;
wire D_store;
wire D_jal;
wire D_rs;
wire D_rt;
wire D_rd;
wire D_ismd;
wire D_iseret;
wire D_noinstr;
wire D_issyscall;
//E
wire [31:0] E_instr;
wire [31:0] E_pc4;
wire [31:0] E_D_RSout;
wire [31:0] E_D_RTout;
wire [31:0] E_extout;
wire [31:0] E_RSout=(forwardERS==0)? E_D_RSout:
                       (forwardERS==1)? W_wdatamuxout:
                       (forwardERS==2)? (M_pc4+4):M_alucp0;
wire [31:0] E_RTout=(forwardERT==0)? E_D_RTout:
                       (forwardERT==1)? W_wdatamuxout:
                       (forwardERT==2)? (M_pc4+4):M_alucp0;
wire [31:0] E_aluout;
wire [31:0] E_alumuxout;
wire [31:0] E_aluhiloin;
wire [31:0] E_hiloout;
wire [4:0] E_oldexccode;
wire [3:0] E_aluop;
wire [3:0] E_hiloop;
wire E_aluhlmuxctrl;
wire E_alumuxctrl;
wire E_branch;
wire E_cal_r;
wire E_cal_i;
wire E_load;
wire E_store;
wire E_jal;
wire E_rs;
wire E_rt;
wire E_rd;
//M
wire [31:0] M_pc4;
wire [31:0] M_instr;
wire [31:0] M_E_RTout;
wire [31:0] M_extout;
wire [31:0] M_aluout;
wire [31:0] M_RTout=(forwardMRT==0)? M_E_RTout:W_wdatamuxout;
wire [31:0] M_ddata;
wire [31:0] M_epcout;
wire [31:0] M_cp0out;
wire [4:0] M_oldexccode;
wire [2:0] M_BEop;
wire [2:0] M_DEop;
wire M_ismfc0;
wire M_branch;
wire M_cal_r;
wire M_cal_i;
wire M_load;
wire M_store;
wire M_jal;
wire M_rs;
wire M_rt;
wire M_rd;

//W
wire [31:0] W_pc4;
wire [31:0] W_instr;
wire [31:0] W_extout;
wire [31:0] W_aluout;
wire [31:0] W_ddata;
wire [4:0] W_wregmuxout;
wire [31:0] W_wdatamuxout;
wire [1:0] W_wdatamuxctrl;
wire [1:0] W_wregmuxctrl;
wire W_wereg;
wire W_branch;
wire W_cal_r;
wire W_cal_i;
wire W_load;
wire W_store;
wire W_jal;
wire W_rs;
wire W_rt;
wire W_rd;

/*****F_Stage*****/
wire [31:0] F_pcnext= D_iseret? (M_epcout+4):F_pcmux2out;
PC pc(clk,reset,!stall,req,F_pcnext,F_pcout);
assign i_inst_addr= D_iseret? M_epcout: F_pcout;
Adder adder(i_inst_addr,F_adderout);
PCMux1 pcmux1(F_adderout,D_naddout,D_pcmux1ctrl,F_pcmux1out);
PCMux2 pcmux2(F_pcmux1out,D_ext2out,D_RSout,D_pcmux2ctrl,F_pcmux2out);
//exception
wire [4:0] F_exc=(((|i_inst_addr[1:0]) | (i_inst_addr < `StartPC) | (i_inst_addr > `EndPC)) & (!D_iseret))? `AdEL:0;
wire F_bd = D_havedalay?1:0;
wire [31:0] F_instr = (F_exc==`AdEL)?32'h00000000:i_inst_rdata;
//FDreg
FDreg fdreg(clk,!stall,reset,req,F_instr,i_inst_addr+4,F_exc,F_bd,
                D_instr,D_pc4,D_oldexccode,D_bd);

/*****D_Stage*****/
Controller D_ctrl(.instr(D_instr),
        .isbne(D_isbne),
        .isbeq(D_isbeq),
        .pcMux2(D_pcmux2ctrl),
        .extOp(D_extop),
        .branch(D_branch),
         .cal_r(D_cal_r),
         .cal_i(D_cal_i),
          .load(D_load),
          .store(D_store),
           .jal(D_jal),
           .ismd(D_ismd),
           .iseret(D_iseret),
           .noinstr(D_noinstr),
           .issyscall(D_issyscall),
           .ismtc0(D_ismtc0),
           .havedelay(D_havedalay));
GRF grf(clk,W_wereg,reset,D_instr[25:21],D_instr[20:16],
            W_wregmuxout,W_wdatamuxout,W_pc4-4,
            D_rdata1out,D_rdata2out);
Ext ext(D_instr[15:0],D_extop,D_extout);
Ext2 ext2(D_instr[25:0],D_pc4-4,D_ext2out);


Nadd nadd(D_pc4,D_extout,D_naddout);
CMP cmp(D_RSout,D_RTout,D_cmpout);
//exception
// wire [4:0] D_excIMover=(((|D_pc4[1:0]) | ((D_pc4-4) < `StartPC) | ((D_pc4-4) > `EndPC)) & (!D_iseret))? `AdEL:0;
wire [4:0] D_excRI = (D_noinstr == 1)? `RI:0;
wire [4:0] D_excSyscall = (D_issyscall == 1)? `Syscall:0;
wire [4:0] D_exccode = (D_oldexccode!=0)?D_oldexccode:
                                // (D_excIMover!=0)?D_excIMover:
                                (D_excSyscall!=0)?D_excSyscall:
                                (D_excRI!=0)?D_excRI:0;
wire [31:0] D_outinstr = (D_excRI==`RI)?32'h00000000:D_instr;

//DEreg
DEreg dereg(clk,reset,req,stall,D_outinstr,D_pc4,D_RSout,D_RTout,D_extout,D_exccode,D_bd,
                E_instr,E_pc4,E_D_RSout,E_D_RTout,E_extout,E_oldexccode,E_bd);

/*****E_Stage*****/
Controller E_ctrl(.instr(E_instr),
        .aluMux(E_alumuxctrl),
        .aluOp(E_aluop),
        .branch(E_branch),
         .cal_r(E_cal_r),
         .cal_i(E_cal_i),
          .load(E_load),
          .store(E_store),
           .jal(E_jal),
           .hiloop(E_hiloop),
           .aluhlMux(E_aluhlmuxctrl),
           .ismtc0(E_ismtc0));
AluMux alumux(E_RTout,E_extout,E_alumuxctrl,E_alumuxout);
ALU alu(E_RSout,E_alumuxout,E_aluop,E_aluout,E_overflow);
HILO hilo(clk,reset,req,E_hiloop,E_RSout,E_alumuxout,busy,E_hiloout);
assign E_aluhiloin=(E_aluhlmuxctrl==0)?E_aluout:E_hiloout;
wire [4:0] E_excOvCal = (E_overflow & (E_cal_r | E_cal_i))?`Ov:0;
wire [4:0] E_excOvLoad = (E_overflow & E_load)? `AdEL:0;
wire [4:0] E_excOvStore = (E_overflow & E_store)? `AdES:0;
wire [4:0] E_exccode = (E_oldexccode!=0)?E_oldexccode:
                                (E_excOvCal!=0)?E_excOvCal:
                                (E_excOvLoad!=0)?E_excOvLoad:
                                (E_excOvStore!=0)?E_excOvStore:0;
//EMreg
EMreg emreg(clk,reset,req,E_instr,E_pc4,E_RTout,E_extout,E_aluhiloin,E_exccode,E_bd,
                M_instr,M_pc4,M_E_RTout,M_extout,M_aluout,M_oldexccode,M_bd);

/*****M_Stage*****/
Controller M_ctrl(.instr(M_instr),
        .branch(M_branch),
         .cal_r(M_cal_r),
         .cal_i(M_cal_i),
          .load(M_load),
          .store(M_store),
           .jal(M_jal),
           .deop(M_DEop),
           .beop(M_BEop),
           .iseret(M_iseret),
           .ismtc0(M_ismtc0),
			  .ismfc0(M_ismfc0));
wire [3:0] M_byteen;
BE be(M_aluout[1:0],M_BEop,M_RTout,M_byteen,m_data_wdata);
assign m_data_byteen = (req==0)?M_byteen:0;
assign m_data_addr=M_aluout;
assign m_inst_addr=M_pc4-4;
DE de(M_aluout[1:0],m_data_rdata,M_DEop,M_ddata);
//exception
wire M_isErrLoad24 = ((M_DEop == 0) & (|m_data_addr[1:0])) | ((M_DEop == 3'b100) & (m_data_addr[0]));
wire M_isErrStore24 = ((M_BEop == 1) & (|m_data_addr[1:0])) | ((M_BEop == 2) & (m_data_addr[0]));
wire M_ErrOutOfRange = !((m_data_addr >= `StartAddrDM) & (m_data_addr <= `EndAddrDM) |
                        (m_data_addr >= `StartAddrTC1) & (m_data_addr <= `EndAddrTC1) |
                        (m_data_addr >= `StartAddrTC2) & (m_data_addr <= `EndAddrTC2) |
                        (m_data_addr >= `StartInt) & (m_data_addr <= `EndInt));

wire M_ErrTimer = ((M_DEop != 0 & M_load) | (M_BEop != 1 & M_store)) & (m_data_addr >= `StartAddrTC1);
wire M_ErrSaveTimer = (m_data_addr >= 32'h00007f08 & m_data_addr <= 32'h00007f0b) |
                        (m_data_addr >= 32'h00007f18 & m_data_addr <= 32'h00007f1b);
wire [4:0] M_excAdEL = (M_load & (M_isErrLoad24 | M_ErrOutOfRange | M_ErrTimer))? `AdEL:0;
wire [4:0] M_excAdES = (M_store & (M_isErrStore24 | M_ErrOutOfRange | M_ErrTimer | M_ErrSaveTimer))? `AdES:0;
wire [4:0] M_exccode = (M_oldexccode!=0)?M_oldexccode:
                                (M_excAdEL!=0)?M_excAdEL:
                                (M_excAdES!=0)?M_excAdES:0;
CP0 cp0(clk,reset,M_ismtc0,M_instr[15:11],M_RTout,M_pc4-4,M_bd,M_exccode,HWint,M_iseret,M_cp0out,M_epcout,req);
wire [31:0] M_alucp0= M_ismfc0? M_cp0out:M_aluout;
//MWreg
MWreg mwreg(clk,reset | req,M_instr,M_pc4,M_extout,M_alucp0,M_ddata,
                W_instr,W_pc4,W_extout,W_aluout,W_ddata);

/*****W_Stage*****/
Controller W_ctrl(.instr(W_instr),
        .wregMux(W_wregmuxctrl),
        .wdataMux(W_wdatamuxctrl),
        .weReg(W_wereg),
        .branch(W_branch),
         .cal_r(W_cal_r),
         .cal_i(W_cal_i),
          .load(W_load),
          .store(W_store),
           .jal(W_jal)); 
WdataMux wdatamux(W_aluout,W_ddata,W_pc4+4,W_wdatamuxctrl,W_wdatamuxout);
WregMux wregmux(W_instr[15:11],W_instr[20:16],W_wregmuxctrl,W_wregmuxout);
assign w_grf_addr=W_wregmuxout;
assign w_grf_wdata=W_wdatamuxout;
assign w_inst_addr=W_pc4-4;
assign w_grf_we=W_wereg;

Conflict conflict(D_branch,D_cal_r,D_cal_i,D_load,D_store,D_jal,D_iseret,D_ismtc0,D_instr[25:21],D_instr[20:16],D_instr[15:11],
                    E_cal_r,E_cal_i,E_load,E_store,E_jal,E_ismtc0,E_instr[25:21],E_instr[20:16],E_instr[15:11],
                    M_cal_r,M_cal_i,M_load,M_store,M_jal,M_ismtc0,M_instr[25:21],M_instr[20:16],M_instr[15:11],
                    W_cal_r,W_cal_i,W_load,W_store,W_jal,W_instr[25:21],W_instr[20:16],W_instr[15:11],
                    stall_conflict,forwardDRS,forwardDRT,forwardERS,forwardERT,forwardMRT);

endmodule