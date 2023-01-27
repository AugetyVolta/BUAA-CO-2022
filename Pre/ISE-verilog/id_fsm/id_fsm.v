`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:28 08/23/2022 
// Design Name: 
// Module Name:    id_fsm 
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
`define S0 2'b00
`define S1 2'b01
`define S2 2'b10

module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	reg [1:0] status;
	initial begin
		status=`S0;
	end
	always@(posedge clk)begin
		case(status)
			`S0:begin
			if(char>=8'd65&&char<=8'd90||char>=8'd97&&char<=8'd122)
				status=`S1;
				else
				status=`S0;
			end
			`S1:begin
				if(char>=8'd65&&char<=8'd90||char>=8'd97&&char<=8'd122)
				status=`S1;
				else if(char>=8'd48&&char<=8'd57)
				status=`S2;
				else
				status=`S0;
			end
			`S2:begin
			if(char>=8'd48&&char<=8'd57)
			status=`S2;
			else if(char>=8'd65&&char<=8'd90||char>=8'd97&&char<=8'd122)
			status=`S1;
			else
			status=`S0;
			end
		endcase
	end
	assign out=(status==`S2)?1:0;
endmodule
