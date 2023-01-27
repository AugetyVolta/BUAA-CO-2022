`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:43 11/19/2022 
// Design Name: 
// Module Name:    BE 
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
module BE(
    input 		[31:0] 	A,
    input 		[1:0] 	BEop,
    input 		[31:0] 	WD,
	 input					WE,
	 input 		[31:0] 	m_data_rdata,
	 input					store,
	 input					DM_Ov,
	 output					Exc_AdES_M,
    output 	[3:0] 	m_data_byteen,
    output 	[31:0] 	m_data_wdata
    );
	 wire 	[7:0] 	WD0_7,WD8_15,WD16_23,WD24_31;
	 wire 	[7:0] 	RD0_7,RD8_15,RD16_23,RD24_31;
	 
	 assign {WD24_31,WD16_23,WD8_15,WD0_7} = WD;
	 
	 assign {RD24_31,RD16_23,RD8_15,RD0_7} = m_data_rdata;
	 
	 assign m_data_byteen = (WE==1'b0)? 4'b0000:
									(BEop==2'b00) ? 4'b1111:
									(BEop==2'b01&&A[1]==1'b0) ? 4'b0011:
									(BEop==2'b01&&A[1]==1'b1) ? 4'b1100:
									(BEop==2'b10&&A[1:0]==2'b00)? 4'b0001:
									(BEop==2'b10&&A[1:0]==2'b01)? 4'b0010:
									(BEop==2'b10&&A[1:0]==2'b10)? 4'b0100:
									(BEop==2'b10&&A[1:0]==2'b11)? 4'b1000: 4'b0000;
									
	 assign m_data_wdata =  (BEop==2'b00) ? WD:
									(BEop==2'b01&&A[1]==1'b0) ? {RD24_31,RD16_23,WD8_15,WD0_7}:
									(BEop==2'b01&&A[1]==1'b1) ? {WD8_15,WD0_7,RD8_15,RD0_7}:
									(BEop==2'b10&&A[1:0]==2'b00)? {RD24_31,RD16_23,RD8_15,WD0_7}:
									(BEop==2'b10&&A[1:0]==2'b01)? {RD24_31,RD16_23,WD0_7,RD0_7}:
									(BEop==2'b10&&A[1:0]==2'b10)?  {RD24_31,WD0_7,RD8_15,RD0_7}:
									(BEop==2'b10&&A[1:0]==2'b11)? {WD0_7,RD16_23,RD8_15,RD0_7} : 32'b0;
	
	assign Exc_AdES_M = (store)&&((BEop==2'b00&&A[1:0]!=2'b0)||
							  (BEop==2'b01&&A[0]!=1'b0)||
							  ((BEop==2'b01||BEop==2'b10)&&((A>=32'h7f00 && A<=32'h7f1b )))||
							  (store==1'b1&&DM_Ov==1'b1)||
							  ((A >= 32'h0000_7f08 && A <= 32'h0000_7f0b)&&store==1'b1) ||
							  ((A >= 32'h0000_7f18 && A <= 32'h0000_7f1b)&&store==1'b1) ||
							  store==1'b1&&!((A>=32'h0000 && A<=32'h2fff )||(A>=32'h7f00 && A<=32'h7f0b )||(A>=32'h7f10 && A<=32'h7f1b )||(A>=32'h7f20 && A<=32'h7f23 )));
endmodule
