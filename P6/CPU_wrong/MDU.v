`timescale 1ns / 1ps
`include "constant.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:51 11/10/2022 
// Design Name: 
// Module Name:    MDU 
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
module MDU(
	 input   				clk,
	 input 	   			reset,
    input    	[31:0] 	SrcA,
    input    	[31:0] 	SrcB,
	 input    				Start,
	 input		[2:0]		MDUop,
    output reg	[31:0] 	HI,
    output reg	[31:0] 	LO,
	 output		[31:0]	MDUout,
    output reg				Busy
    );
	reg [31:0] cnt;
	reg [31:0] HI_tmp;
	reg [31:0] LO_tmp;
	
	initial begin
		HI <= 32'b0;
		LO <= 32'b0;
		Busy <= 1'b0;
		cnt <= 32'b0;
		HI_tmp <= 32'b0;
		LO_tmp <= 32'b0;
	end
	
	assign MDUout = (MDUop == `mfhi) ? HI:
						 (MDUop == `mflo) ? LO:
						 32'b0;
						 
	always@(posedge clk)begin
		if(reset)begin
			HI <= 32'b0;
			LO <= 32'b0;
			Busy <= 1'b0;
			cnt <= 32'b0;
			HI_tmp <= 32'b0;
			LO_tmp <= 32'b0;
		end
		else begin
			if(MDUop == `mthi) begin
				HI <= SrcA;
			end
			else if(MDUop == `mtlo)begin
				LO <= SrcA;
			end
			else begin
			if(cnt == 32'b0)begin
				if(Start)begin
					Busy <= 1'b1;
					case(MDUop)
						`mult: begin
							cnt <= 32'd6;
							{HI_tmp,LO_tmp} <= $signed(SrcA)*$signed(SrcB);
						end
						`multu: begin
							cnt <= 32'd6;
							{HI_tmp,LO_tmp} <= SrcA*SrcB;
						end
						`div: begin
							cnt <= 32'd11;
							HI_tmp <= $signed(SrcA)%$signed(SrcB);
							LO_tmp <= $signed(SrcA)/ $signed(SrcB);
						end
						`divu: begin
							cnt <= 32'd11;
							HI_tmp <= SrcA%SrcB;
							LO_tmp <= SrcA/SrcB;
						end
					endcase
				end
			end
			else if(cnt == 32'd2)begin
					HI <= HI_tmp;
					LO <= LO_tmp;
					cnt <= cnt - 32'd1;
			end
			else if(cnt == 32'd1)begin
					Busy <= 1'b0;
					cnt <= 32'd0;
			end
			else begin
				cnt <= cnt - 32'd1;
			end	
		  end
		end
	end
	
endmodule
