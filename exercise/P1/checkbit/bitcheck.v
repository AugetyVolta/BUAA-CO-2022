`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:21 10/06/2022 
// Design Name: 
// Module Name:    bitcheck 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bitcheck(
    input [31:0] date,
    input fun,
    output [31:0] result
    );
	 assign result=(fun==0)?{{((^date[30:0])==1)&~fun},date[30:0]}:{{((^date[30:0])==0)&fun},date[30:0]};

endmodule
