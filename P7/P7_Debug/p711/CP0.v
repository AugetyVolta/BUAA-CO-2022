`timescale 1ns / 1ps
`define IM SR[15:10]
`define EXL SR[1]
`define IE  SR[0]
`define BD  Cause[31]
`define IP  Cause[15:10]
`define ExcCode Cause[6:2]
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:47 12/01/2022 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input clk,
    input reset,
    input en,
    input [4:0] CP0Add,
    input [31:0] CP0In,
    output [31:0] CP0Out,
    input [31:0] VPC,
    input BDIn,
    input [4:0] ExcCodeIn,
    input [5:0] HWInt,
    input EXLClr,
    output [31:0] EPCOut,
    output Req,
	 output		Intrespon
    );
	 
	 reg [31:0] SR;
	 reg [31:0] Cause;
	 reg [31:0] EPC;
	 
	 always@(posedge clk)begin
		if(reset)begin
			SR<=32'b0;
			Cause<=32'b0;
			EPC<=32'b0;
		end
		else begin
			`IP <= HWInt;//将会每个周期被修改一次，修改的内容来自计时器和外部中断。
			if(EXLClr)begin
				`EXL <= 1'b0;
			end
			if(Req==1'b1)begin
				 EPC <= (BDIn==1'b1)? VPC-32'd4:VPC;
				`BD <= BDIn;
				`ExcCode <=(`EXL==1'b0&&(|ExcCodeIn)==1'b1)?ExcCodeIn:5'b0;
				`EXL <= 1'b1;
			end
			else if(en==1'b1)begin
				case(CP0Add)
					5'd12:
						SR <= CP0In;
					5'd13:
						Cause <= CP0In;
					5'd14:
						EPC <= CP0In;
				endcase
			end
		end
	 end
	 			
	   assign Req = (`EXL==1'b0&&(|ExcCodeIn)==1'b1)| //存在异常且不在异常处理程序中中
						 (`EXL==1'b0&&`IE==1'b1&&(|HWInt&`IM)==1'b1);	//不存在异常，允许中断，有中断位
		
		assign EPCOut = (CP0Add==5'd14&&en==1'b1)?CP0In:EPC;
		
		assign CP0Out = (CP0Add==5'd12)?   SR:
							 (CP0Add==5'd13)?Cause:
							 (CP0Add==5'd14)?  EPC: 32'b0;
		assign Intrespon = (`EXL==1'b0&&`IE==1'b1&&(HWInt[2]&SR[12])==1'b1);
endmodule
