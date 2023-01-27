`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:38 10/09/2022 
// Design Name: 
// Module Name:    FloatType 
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
module FloatType(
    input [31:0] num,
    output [4:0] type
    );
	reg flag;
	reg [7:0] edges;
	reg [22:0] tail;
	always@(*)begin
	{flag,edges,tail}=num;
	end
	assign  type[0]=(edges==8'b0&&tail==23'b0);
	assign  type[1]=(edges>8'b0&&edges<8'b11111111);
	assign  type[2]=(edges==8'b0&&tail!=23'b0);
	assign  type[3]=(edges==8'b11111111&&tail==23'b0);
	assign  type[4]=(edges==8'b11111111&&tail!=23'b0);

endmodule
