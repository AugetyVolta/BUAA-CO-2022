`timescale  1ns / 1ps
`include "cpu_checker.v"
module tb_cpu_checker;

// cpu_checker Parameters


// cpu_checker Inputs
reg   clk                                  = 0 ;
reg   reset                                = 0 ;
reg   [15:0]  freq                         = 0 ;
reg   [7:0]  char                          = 0 ;

// cpu_checker Outputs
wire  [1:0]  format_type                   ;
wire  [3:0]  error_code                    ;


cpu_checker  u_cpu_checker (
    .clk                     ( clk                 ),
    .reset                   ( reset               ),
    .freq                    ( freq         [15:0] ),
    .char                    ( char         [7:0]  ),

    .format_type             ( format_type  [1:0]  ),
    .error_code              ( error_code   [3:0]  )
);

initial
begin
    $dumpfile("cpu_checker_wave.vcd");
		$dumpvars;
		clk = 0;
		reset = 1;
		char = 0;
		freq = 16'd4;
		#10 reset = 0;
#2 char = "^";
#2 char = "3";
#2 char = "2";
#2 char = "@";
#2 char = "0";
#2 char = "0";
#2 char = "0";
#2 char = "0";
#2 char = "3";
#2 char = "0";
#2 char = "0";
#2 char = "4";
#2 char = ":";
#2 char = " ";
#2 char = "$";
#2 char = "0";
#2 char = "0";
#2 char = "4";
#2 char = "0";
#2 char = "<";
#2 char = "=";
#2 char = "1";
#2 char = "2";
#2 char = "3";
#2 char = "4";
#2 char = "5";
#2 char = "6";
#2 char = "7";
#2 char = "8";
#2 char = "#";
#2 char=  " ";
#2 char=  " ";
#2 char=  " ";
#20
		$finish;
    $finish;
end
    always #1 clk = ~clk;
endmodule