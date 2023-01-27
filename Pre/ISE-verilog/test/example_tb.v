`timescale  1ns / 1ps
`include "example.v"
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
    $dumpfile("example.vcd");
    $dumpvars;
    #10
    a=1;
    b=0;
    c=1;
    #10
    a=0;
    b=1;
    c=0;
    #10
    a=1;
    b=1;
    c=0;
    $finish;
end

endmodule