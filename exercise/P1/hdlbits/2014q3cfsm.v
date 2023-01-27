module top_module (
    input clk,
    input [2:0] y,
    input x,
    output Y0,
    output z
);
    assign Y0 = (y[0]&(~x)) | ( (~y[0]) & (y[2]^x) );
    assign z  = (y == 3'b011) | (y == 3'b100);  //这个就只是实现一个逻辑的展现，并不要求状态转移的东西
endmodule