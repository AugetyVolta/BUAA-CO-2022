`timescale 1ns / 1ps
//cal_r
`define Rtype 6'b000000
`define add 6'b100000
`define sub 6'b100010
`define and 6'b100100
`define or 6'b100101
`define slt 6'b101010
`define sltu 6'b101011
`define mult 6'b011000
`define multu 6'b011001
`define mthi 6'b010001
`define mtlo 6'b010011
`define mfhi 6'b010000
`define mflo 6'b010010
`define div 6'b011010
`define divu 6'b011011
`define syscall 6'b001100
//cal_i
`define ori 6'b001101
`define addi 6'b001000
`define andi 6'b001100
`define lui 6'b001111
`define slti 6'b001010
//load
`define lw 6'b100011
`define lb 6'b100000
`define lh 6'b100001
//store
`define sw 6'b101011
`define sh 6'b101001
`define sb 6'b101000
//branch
`define beq 6'b000100
`define bne 6'b000101
`define j 6'b000010
`define jal 6'b000011
`define jr 6'b001000
//exception
`define exc 6'b010000//opcode
`define mtc0 5'b00100//rs
`define mfc0 5'b00000
`define eret 6'b011000
module Controller (
    input [31:0] instr,
    output reg isbeq,
    output reg isbne,
    output reg ismd,
    output reg aluhlMux,
    output reg [1:0] pcMux2,
    output reg [1:0] wregMux,
    output reg [1:0] wdataMux,
    output reg aluMux,
    output reg [3:0] aluOp,
    output reg [1:0] extOp,
    output reg weReg,
    output reg [3:0] hiloop,
    output reg [2:0] deop,
    output reg [2:0] beop,
    output reg iseret,
    output reg ismtc0,
    output reg ismfc0,
    output reg noinstr,
	 output reg issyscall,
   output reg havedelay,
    //**type of instruction**//
    output reg branch,
    output reg cal_r,
    output reg cal_i,
    output reg load,
    output reg store,
    output reg jal
);
wire [5:0] opcode=instr[31:26];
wire [5:0] funct=instr[5:0];
wire [4:0] rs=instr[25:21];
always @* begin
  havedelay=0;
  isbne=0;
  aluhlMux=0;
  hiloop=0;
  deop=0;
  beop=0;
  ismd=0;
  iseret=0;
  ismtc0=0;
  ismfc0=0;
  noinstr=0;
  issyscall=0;
    case(opcode)
    `Rtype:begin
        case(funct)
        `add: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=0;
            extOp=0;
            weReg=1;
            
//**type of instruction**//
            branch=0;
            cal_r=1;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
        `sub: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=1;
            extOp=0;
            weReg=1;
            
//**type of instruction**//
            branch=0;
            cal_r=1;
            cal_i=0;
            load=0;
            store=0;
            jal=0;           
        end
        `jr: begin
            isbeq=0;
            pcMux2=2;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
             havedelay=1;
//**type of instruction**//
            branch=1;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;            
        end
        `and: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=4;
            extOp=0;
            weReg=1;
             
//**type of instruction**//
            branch=0;
            cal_r=1;
            cal_i=0;
            load=0;
            store=0;
            jal=0;            
        end
        `or: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=2;
           extOp=0;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
       `slt: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=5;
           extOp=0;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
       `sltu: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=6;
           extOp=0;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `mult: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=1;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `multu: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=2;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `div: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=3;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `divu: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=4;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `mfhi: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=1;
           ismd=1;  
            aluhlMux=1;
            hiloop=5;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `mflo: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=1;
           ismd=1;  
            aluhlMux=1;
            hiloop=6;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `mthi: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=7;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
      `mtlo: begin
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
           ismd=1;  
            hiloop=8;
            //**type of instruction**//
           branch=0;
            cal_r=1;
            cal_i=0;
             load=0;
            store=0;
              jal=0;
       end
       `syscall: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
            issyscall=1;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
        default: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
        endcase
    end
/******exception******/
    `exc:begin
      case(funct)
        0:begin
        case(rs)
        `mtc0: begin
          isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
            ismtc0=1;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
      `mfc0: begin
          isbeq=0;
            pcMux2=0;
            wregMux=1;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=1;
            ismfc0=1;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=1;
            load=0;
            store=0;
            jal=0;
        end
        endcase
        end
      `eret: begin
          isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
            iseret=1;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
      default: begin
            isbeq=0;
            pcMux2=0;
            wregMux=0;
            wdataMux=0;
            aluMux=0;
            aluOp=15;
            extOp=0;
            weReg=0;
            noinstr=1;
//**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
        end
        endcase
    end
/******cal_i type*****/
    `ori: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=0;
          aluMux=1;
           aluOp=2;
           extOp=1;
           weReg=1;
             
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=1;
            load=0;
            store=0;
            jal=0;
       end
    `addi: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=0;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=1;
             load=0;
            store=0;
              jal=0;
       end
    `andi: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=0;
          aluMux=1;
           aluOp=4;
           extOp=1;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=1;
             load=0;
            store=0;
              jal=0;
       end
    `slti: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=0;
          aluMux=1;
           aluOp=5;
           extOp=0;
           weReg=1;
             
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=1;
             load=0;
            store=0;
              jal=0;
       end
/**********load type*************/
    `lw: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=1;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=1;
          
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=0;
             load=1;
            store=0;
              jal=0;
       end
    `lh: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=1;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=1;
          deop=3'b100;
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=0;
             load=1;
            store=0;
              jal=0;
       end
    `lb: begin
           isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=1;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=1;
          deop=3'b010;
            //**type of instruction**//
           branch=0;
            cal_r=0;
            cal_i=0;
             load=1;
            store=0;
              jal=0;
       end
/**********load type*************/
    `sw: begin
          isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=0;
          beop=1;
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=1;
            jal=0;
       end
    `sh: begin
          isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=0;
          beop=2;
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=1;
            jal=0;
       end
    `sb: begin
          isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=1;
           aluOp=0;
           extOp=0;
           weReg=0;
          beop=3;
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=1;
            jal=0;
       end
    `beq: begin
          isbeq=1;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=3;
           weReg=0;
           havedelay=1;
            //**type of instruction**//
            branch=1;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
       end
    `bne: begin
           isbne=1;
           isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=3;
           weReg=0;
        havedelay=1;     
            //**type of instruction**//
            branch=1;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
       end
    `lui: begin
          isbeq=0;
          pcMux2=0;
         wregMux=1;
        wdataMux=0;
          aluMux=1;
           aluOp=3;
           extOp=2;
           weReg=1;
             
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=1;
            load=0;
            store=0;
            jal=0;
       end
    // `j: begin
    //       isbeq=0;
    //       pcMux2=1;
    //      wregMux=0;
    //     wdataMux=0;
    //       aluMux=0;
    //        aluOp=0;
    //        extOp=0;
    //        weReg=0;
             
    //         //**type of instruction**//
    //         branch=0;
    //         cal_r=0;
    //         cal_i=0;
    //         load=0;
    //         store=0;
    //         jal=0;
    //    end
    `jal: begin//jal
          isbeq=0;
          pcMux2=1;
         wregMux=2;
        wdataMux=2;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=1;
         havedelay=1;    
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=1;
       end
		 default:begin
          isbeq=0;
          pcMux2=0;
         wregMux=0;
        wdataMux=0;
          aluMux=0;
           aluOp=15;
           extOp=0;
           weReg=0;
          noinstr=1;
            //**type of instruction**//
            branch=0;
            cal_r=0;
            cal_i=0;
            load=0;
            store=0;
            jal=0;
       end
    endcase
end
endmodule