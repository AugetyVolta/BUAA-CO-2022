`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:13 10/10/2022 
// Design Name: 
// Module Name:    VoterPlus 
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
module VoterPlus(
    input clk,
    input reset,
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output [7:0] result
    );
reg [7:0] value1;
reg [7:0] value2;
reg [7:0] value3;
reg [31:0] np1;
reg [7:0] vip1;
reg vvip1;
integer i,j;

initial begin
	value1 <= 8'b0000_0000;
	value2 <= 8'b0000_0000;
	value3 <= 8'b0000_0000;
	np1 <= 32'b0;
	vip1 <= 8'b0;
	vvip1 <= 1'b0;
end

always @(posedge clk,posedge reset) begin
	if (reset) begin
		value1 <= 8'b0000_0000;
		value2 <= 8'b0000_0000;
		value3 <= 8'b0000_0000;
		np1 <= 32'b0;
	   vip1 <= 8'b0;
	   vvip1 <= 1'b0;
	end
	else begin
		for (i = 0;i < 32;i = i + 1) begin
			if ((np[i] == 1'b1)&&(np1[i] == 1'b0)) begin
			value1 <= value1 + 8'b0000_0001;
			np1[i] <= 1'b1;
			end
			else value1 <= value1;
		end
		for (j = 0;j < 8;j = j + 1) begin
			if ((vip[j] == 1'b1)&&(vip1[j] == 1'b0)) begin
			value2 <= value2 + 8'b0000_0100;
			vip1[j] <= 1'b1;
			end
			else value2 <= value2;
		end
		if ((vvip == 1'b1)&&(vvip1 == 1'b0)) begin
		value3 <= value3 + 8'b0001_0000;
		vvip1 <= 1'b1;
		end
		else value3 <= value3;
		end
end

assign result = value1 + value2 + value3;

endmodule
