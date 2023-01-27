`timescale 1ns / 1ps
module Conflict(
    //**D instru type**//
    input D_branch,
    input D_cal_r,
    input D_cal_i,
    input D_load,
    input D_store,
    input D_jal,
    input D_eret,
    input D_mtc0,
    input [4:0] D_rs,
    input [4:0] D_rt,
    input [4:0] D_rd,
    //**E instru type**//
    input E_cal_r,
    input E_cal_i,
    input E_load,
    input E_store,
    input E_jal,
    input E_mtc0,
    input [4:0] E_rs,
    input [4:0] E_rt,
    input [4:0] E_rd,
    //**M instru type**//
    input M_cal_r,
    input M_cal_i,
    input M_load,
    input M_store,
    input M_jal,
    input M_mtc0,
    input [4:0] M_rs,
    input [4:0] M_rt,
    input [4:0] M_rd,
    //**W instru type**//
    input W_cal_r,
    input W_cal_i,
    input W_load,
    input W_store,
    input W_jal,
    input [4:0] W_rs,
    input [4:0] W_rt,
    input [4:0] W_rd,
    //****//
    output stall,
    //**forward**//
    output [2:0] forwardDRS,
    output [2:0] forwardDRT,
    output [1:0] forwardERS,
    output [1:0] forwardERT,
    output forwardMRT
);
wire stall_branch= D_branch &
        ((E_cal_r & ((E_rd==D_rs & D_rs!=0)|(E_rd==D_rt & D_rt!=0))) | 
        (E_cal_i & ((E_rt==D_rs & D_rs!=0)|(E_rt==D_rt & D_rt!=0))) | 
        (E_load & ((E_rt==D_rs & D_rs!=0)|(E_rt==D_rt & D_rt!=0))) | 
        (M_load & ((M_rt==D_rs & D_rs!=0)|(M_rt==D_rt & D_rt!=0))));
wire stall_cal_r= D_cal_r &
        (E_load & ((E_rt==D_rs & D_rs!=0)|(E_rt==D_rt & D_rt!=0)));
wire stall_cal_i= D_cal_i & (D_rs!=0) &
        (E_load & (E_rt==D_rs));
wire stall_load= D_load & (D_rs!=0) &
        (E_load & (E_rt==D_rs));
wire stall_store= D_store & (D_rs!=0) &
        (E_load & (E_rt==D_rs));
wire stall_eret= D_eret & ((E_mtc0 & (E_rd == 5'd14)) | (M_mtc0 & (M_rd == 5'd14)));
wire stall_mtc0= D_mtc0 & (D_rt!=0) & (
        ((E_cal_i | E_load) & (E_rt==D_rt)) | 
        ((M_cal_i | M_load) & (M_rt==D_rt)) |
        (E_cal_r & (E_rd==D_rt)) |
        (M_cal_r & (M_rd==D_rt)) |
        ((E_jal | M_jal) & D_rt == 5'd31));
assign stall = stall_branch | stall_cal_r | stall_cal_i | stall_load | stall_store | stall_eret | stall_mtc0;
//**FORWARD**//
assign forwardDRS= (D_branch & E_jal & D_rs==5'd31)? 4:
                    (D_branch & M_cal_r & D_rs==M_rd & D_rs!=0)? 3:
                    (D_branch & M_cal_i & D_rs==M_rt & D_rs!=0)? 3:
                    (D_branch & M_jal & D_rs==5'd31)? 2:
                    (D_branch & W_jal & D_rs==5'd31)? 1:
                    (D_branch & W_cal_r & D_rs==W_rd & D_rs!=0)? 1:
                    (D_branch & (W_cal_i | W_load) & D_rs==W_rt & D_rs!=0)? 1:0;
assign forwardDRT= (D_branch & E_jal & D_rt==5'd31)? 4:
                    (D_branch & M_cal_r & D_rt==M_rd & D_rt!=0)? 3:
                    (D_branch & M_cal_i & D_rt==M_rt & D_rt!=0)? 3:
                    (D_branch & M_jal & D_rt==5'd31)? 2:
                    (D_branch & W_jal & D_rt==5'd31)? 1:
                    (D_branch & W_cal_r & D_rt==W_rd & D_rt!=0)? 1:
                    (D_branch & (W_cal_i | W_load) & D_rt==W_rt & D_rt!=0)? 1:0;
assign forwardERS= ((E_cal_r | E_cal_i | E_load | E_store) & M_cal_r & E_rs==M_rd & E_rs!=0)? 3:
                    ((E_cal_r | E_cal_i | E_load | E_store) & M_cal_i & E_rs==M_rt & E_rs!=0)? 3:
                    ((E_cal_r | E_cal_i | E_load | E_store) & M_jal & E_rs==5'd31)? 2:
                    ((E_cal_r | E_cal_i | E_load | E_store) & W_jal & E_rs==5'd31)? 1:
                    ((E_cal_r | E_cal_i | E_load | E_store) & W_cal_r & E_rs==W_rd & E_rs!=0)? 1:
                    ((E_cal_r | E_cal_i | E_load | E_store) & (W_cal_i | W_load) & E_rs==W_rt & E_rs!=0)? 1:0;
assign forwardERT= ((E_cal_r | E_store) & M_cal_r & E_rt==M_rd & E_rt!=0)? 3:
                    ((E_cal_r | E_store) & M_cal_i & E_rt==M_rt & E_rt!=0)? 3:
                    ((E_cal_r | E_store) & M_jal & E_rt==5'd31)? 2:
                    ((E_cal_r | E_store) & W_jal & E_rt==5'd31)? 1:
                    ((E_cal_r | E_store) & W_cal_r & E_rt==W_rd & E_rt!=0)? 1:
                    ((E_cal_r | E_store) & (W_cal_i | W_load) & E_rt==W_rt & E_rt!=0)? 1:0;
assign forwardMRT=  (M_store & W_jal & M_rt==5'd31)? 1:
                    (M_store & W_cal_r & M_rt==W_rd & M_rt!=0)? 1:
                    (M_store & (W_cal_i | W_load) & M_rt==W_rt & M_rt!=0)? 1:0;

endmodule