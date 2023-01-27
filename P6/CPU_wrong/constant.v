`timescale 1ns / 1ps
/*=========ALU==========*/
`define aluAdd 3'b000
`define aluSub 3'b001
`define aluOr  3'b010
`define aluAnd 3'b011
`define aluSlt 3'b100
`define aluSltu 3'b101
/*======================*/

/*=========CMP===========*/
`define      equal 3'b000
`define    n_equal 3'b001
`define 	     less 3'b010
`define        big 3'b011
`define less_equal 3'b100
`define  big_equal 3'b101
/*======================*/

/*========HAZARD========*/
`define R 	6'b000000
`define add 6'b100000
`define sub 6'b100010
`define ori 6'b001101
`define sw 	6'b101011
`define lw 	6'b100011
`define beq 6'b000100
`define Jal 6'b000011
`define Jr  6'b001000
`define lui 6'b001111
`define J   6'b000010
`define bne 6'b000101
`define Or  6'b100101
`define And 6'b100100
`define addi 6'b001000
`define andi 6'b001100
`define slt  6'b101010 
`define sltu 6'b101011
`define lb  6'b100000
`define lh  6'b100001
`define sb  6'b101000
`define sh  6'b101001
`define mult_I  6'b011000
`define multu_I 6'b011001
`define div_I   6'b011010
`define divu_I  6'b011011
`define mfhi_I  6'b010000
`define mflo_I  6'b010010
`define mthi_I  6'b010001
`define mtlo_I  6'b010011
/*======================*/

/*==========MDU=========*/
`define  mult 3'b000
`define multu 3'b001
`define   div 3'b010
`define  divu 3'b011
`define  mfhi 3'b100
`define  mflo 3'b101
`define  mthi 3'b110
`define  mtlo 3'b111
/*======================*/



