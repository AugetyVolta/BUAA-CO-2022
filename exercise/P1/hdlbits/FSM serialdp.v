`define S0 4'b0000
`define S1 4'b0001
`define S2 4'b0010
`define S3 4'b0011
`define S4 4'b0100
`define S5 4'b0101
`define S6 4'b0110
`define S7 4'b0111
`define S8 4'b1000
`define S9 4'b1001
`define S10 4'b1010
`define S11 4'b1011
module top_module(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output [7:0] out_byte,
    output done
);  
reg [3:0] state,next_state;
reg flag,lab;
reg [7:0] out;
always@(*)begin
    case(state)
    `S0:begin
    if(in==1)begin
        next_state=`S0;
    end
    else
        next_state=`S1;
    end
    `S1:begin
    next_state=`S2;
    out[0]=in;
    end
    `S2:begin
    next_state=`S3;
    out[1]=in;
    end
    `S3:begin
    next_state=`S4;
    out[2]=in;
    end
    `S4:begin
    next_state=`S5;
    out[3]=in;
    end
    `S5:begin
    next_state=`S6;
    out[4]=in;
    end
    `S6:begin
    next_state=`S7;
    out[5]=in;
    end
    `S7:begin
    next_state=`S8;
    out[6]=in;
    end
    `S8:begin
    next_state=`S9;
    out[7]=in;
    end
    `S9:
    begin
    next_state=`S10;
    lab=in;
    end
    `S10:
    if(in==1)
    next_state=`S11;
    else begin
    next_state=`S10;
    end
    `S11:
    if(in==1) begin
        next_state=`S0;
    end
    else begin
         next_state=`S1;
    end
    endcase
end
always@(posedge clk)begin
    if(reset==1) begin
        state=`S0;
        flag=0;
    end
    else begin    // 所有的标志类的变化存储都应该放在状态存储部分，放在状态转移就会出问题
        if(state==`S10&&next_state==`S10)
        flag=1;
        else if(next_state==`S1)
        flag=0;
        state=next_state;
    end
        

end
    assign done=(state==`S11&&flag==0&&((^out)^lab)==1);
    assign out_byte=(state==`S11&&flag==0&&((^out)^lab)==1)?out:8'b0;
endmodule
