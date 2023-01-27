`define S0 3'b000
`define S1 3'b001
`define S2 3'b010
`define S3 3'b011
`define S4 3'b100
module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena);
    reg [2:0] state;
    initial begin
        state=`S0;
    end
    always@(posedge clk)begin
        if(reset==1)
        begin
            state=`S0;
        end
        else begin
            case(state)
            `S0:
            state=`S1;
            `S1:
            state=`S2;
            `S2:
            state=`S3;
            `S3:
            state=`S4;
            `S4:
            state=`S4;
            default
            state=`S0;
            endcase
        end
    end
    assign shift_ena=(state==`S4)?0:1;
endmodule