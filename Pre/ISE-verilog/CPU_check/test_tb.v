`timescale  1ns / 1ps
`include "test.v"
module tb_chardet;   

// chardet Parameters
parameter PERIOD  = 10;


// chardet Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   c                                    = 0 ;

// chardet Outputs


chardet  u_chardet (
    .a                       ( a   ),
    .b                       ( b   ),
    .c                       ( c   )
);

initial
begin
    $dumpfile("test_tb.vcd");
    $dumpvars;
    $finish;
end

endmodule