`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:17 10/06/2022 
// Design Name: 
// Module Name:    vote 
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
module vote(
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output res
    );
	integer cnt=0;
	integer i;
	initial
	cnt=0;
	always@(*)begin
		cnt=0;
		for(i=0;i<32;i=i+1)begin
			if(np[i]==1)
			cnt=cnt+1;
		end
		for(i=0;i<8;i=i+1)begin
			if(vip[i]==1)
			cnt=cnt+4;
		end
		if(vvip==1)
		cnt=cnt+16;
	end
	assign res=(cnt>=32);

endmodule
