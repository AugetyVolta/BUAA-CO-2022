`timescale 1ns / 1ps
module PCMux1(
input [31:0] adder,//ctrl=0
input [31:0] nadd,//ctrl=1
input ctrl,
output [31:0] pcmux1
);
assign pcmux1=(ctrl==0)?adder:nadd;
endmodule

module PCMux2(
input [31:0] pcmux1,//ctrl=0
input [31:0] ext2,//ctrl=1
input [31:0] rdata1,//ctrl=2
input [1:0] ctrl,
output [31:0] pcmux2
);
assign pcmux2=(ctrl==0)?pcmux1:
            (ctrl==1)?ext2:rdata1;
endmodule

module WregMux(
input [4:0] rd,//ctrl=0
input [4:0] rt,//ctrl=1
input [1:0] ctrl,
output [4:0] wreg
);
assign wreg=(ctrl==0)?rd:
            (ctrl==1)?rt:31;
endmodule

module WdataMux(
input [31:0] alu,//ctrl=0
input [31:0] DM,//ctrl=1
input [31:0] adder,//ctrl=2
input [1:0] ctrl,
output [31:0] wdata
);
assign wdata=(ctrl==0)?alu:
            (ctrl==1)?DM:adder;
endmodule

module AluMux(
input [31:0] rdata2,//ctrl=0
input [31:0] ext,//ctrl=1
input ctrl,
output [31:0] alub
);
assign alub=(ctrl==0)?rdata2:ext;
endmodule