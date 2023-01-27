`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:21 10/27/2022 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
    input reset,
    input Memwrite,
	 input [31:0] PC,//–¥»Î÷∏¡ÓµƒPC
    input [31:0] A,
    input [31:0] WD,
    input [1:0] DMop,
    output [31:0] RD
    );
	 integer i=0;
	 reg [31:0] RAM [0:4095]; 
	 wire [7:0] WD0_7,WD8_15,WD16_23,WD24_31;
	 wire [7:0] RD0_7,RD8_15,RD16_23,RD24_31;
	 wire [31:0] Data;
	 wire [31:0] Data0;
	 wire [31:0] Data1;
	 wire [31:0] Data2;
	 wire [31:0] RD_ram;
	 wire [31:0] RD0;
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 
	 assign RD_ram=RAM[A[13:2]];
	 assign {WD24_31,WD16_23,WD8_15,WD0_7}=WD;
	 assign {RD24_31,RD16_23,RD8_15,RD0_7}=RD_ram;
	 
	 assign Data0=WD;
	 assign Data1=(A[1]==0)?{RD24_31,RD16_23,WD8_15,WD0_7}:
									{WD8_15,WD0_7,RD8_15,RD0_7};
	 assign Data2=(A[1:0]==2'b00)?{RD24_31,RD16_23,RD8_15,WD0_7}:
					  (A[1:0]==2'b01)?{RD24_31,RD16_23,WD0_7,RD0_7}:
					  (A[1:0]==2'b10)?{RD24_31,WD0_7,RD8_15,RD0_7}:
					  (A[1:0]==2'b11)?{WD0_7,RD16_23,RD8_15,RD0_7}:
					   32'b0;
	 assign Data=(DMop==2'b00)?Data0:
					 (DMop==2'b01)?Data1:
					 (DMop==2'b10)?Data2:
					  32'b0;
					 
	 assign RD0=RD_ram;
	 assign RD1=(A[1]==0)?{{16{RD_ram[15]}},RD_ram[15:0]}:
								 {{16{RD_ram[31]}},RD_ram[31:16]};
	 assign RD2=(A[1:0]==2'b00)?{{24{RD_ram[7]}},RD_ram[7:0]}:
					(A[1:0]==2'b01)?{{24{RD_ram[15]}},RD_ram[15:8]}:
					(A[1:0]==2'b10)?{{24{RD_ram[23]}},RD_ram[23:16]}:
					(A[1:0]==2'b11)?{{24{RD_ram[31]}},RD_ram[31:24]}:
					 32'b0;
	 assign RD=(DMop==2'b00)?RD0:
				  (DMop==2'b01)?RD1:
				  (DMop==2'b10)?RD2:
				   32'b0;
					
	always@(posedge clk)begin
			if(reset==1)begin
				for(i=0;i<4096;i=i+1)
					RAM[i]<=32'b0;
			end
			else begin
				if(Memwrite==1)begin
					RAM[A[13:2]]<=Data;
					$display("@%h: *%h <= %h", PC, {A>>2,2'b0}, Data);
				end
			end
	end
	
endmodule
