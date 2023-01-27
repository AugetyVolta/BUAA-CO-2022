`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:13 11/19/2022 
// Design Name: 
// Module Name:    DE 
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
module DE(
    input [31:0] A,
    input [31:0] Din,
    input [2:0] DEop,
	 input		 load,
	 input		 DM_Ov,
    output [31:0] Dout,
	 output		 Exc_AdEL_M
    );
	wire [31:0] signed_byte;
	wire [31:0] unsigned_byte;
	wire [31:0] signed_half;
	wire [31:0] unsigned_half;
	
	assign signed_byte = (A[1:0] == 2'b00)? {{24{Din[7]}},Din[7:0]}    :
								(A[1:0]== 2'b01)? {{24{Din[15]}},Din[15:8]}  :
								(A[1:0] == 2'b10)? {{24{Din[23]}},Din[23:16]} :{{24{Din[31]}},Din[31:24]};
	assign unsigned_byte = (A[1:0] == 2'b00)? {24'b0,Din[7:0]}   :
								  (A[1:0] == 2'b01)? {24'b0,Din[15:8]}  :
								  (A[1:0] == 2'b10)? {24'b0,Din[23:16]} :{24'b0,Din[31:24]};
	assign signed_half = ( A[1]== 1'b0) ? {{16{Din[15]}},Din[15:0]} : {{16{Din[31]}},Din[31:16]};
	
	assign unsigned_half = ( A[1]== 1'b0) ? {16'b0,Din[15:0]} : {16'b0,Din[31:16]};
	assign Dout = (DEop == 3'b000)? Din          :
					  (DEop == 3'b001)? unsigned_byte:
					  (DEop == 3'b010)? signed_byte  :
					  (DEop == 3'b011)? unsigned_half:
					  (DEop == 3'b100)? signed_half  : 32'b0;
	assign Exc_AdEL_M = (load)&&((DEop==3'b000&&A[1:0]!=2'b0)|
							  (DEop==3'b100&&A[0]!=1'b0)|
							  (DEop==3'b100||DEop==3'b010)&&(A>=32'h7f00&&A<=32'h7f1b)|
							  (load==1'b1&&DM_Ov==1'b1)|
							  !((A>=32'h0000 && A<=32'h2fff )||(A>=32'h7f00 && A<=32'h7f0b )||(A>=32'h7f10 && A<=32'h7f1b )||(A>=32'h7f20 && A<=32'h7f23 )));
endmodule
