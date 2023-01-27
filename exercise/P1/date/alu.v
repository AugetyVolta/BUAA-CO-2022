`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:14 10/10/2022 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
	reg [31:0] c;
	always@(*)begin
		case(ALUOp)
		3'b000:
			c=A+B;
		3'b001:
			c=A-B;
		3'b010:
			c=A&B;
		3'b011:
			c=A|B;
		3'b100:
			c=A>>B;
		3'b101:
			c=$signed($signed(A)>>>B);
		3'b110:
			c=(A>B);
		3'b111:
			c=($signed(A)>$signed(B));
		default
		c=32'b0;
		endcase
	end
	assign C=c;
endmodule
