`define S0 3'b000
`define S1 3'b001
`define S2 3'b010
`define S3 3'b011
`define S4 3'b100
module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output start_shifting);
    reg [2:0] state;
    initial begin
        state = `S0;
    end
    always@(posedge clk)begin
        if(reset==1)begin
            state=`S0;
        end
        else begin
            case(state)
            `S0:
            if(data==1)
                state=`S1;
            else
                state=`S0;
            `S1:
            if(data==1)
                state=`S2;
            else
                state=`S0;
            `S2:
            if(data==1)
                state=`S2;
            else
                state=`S3;
            `S3:
            if(data==1)
                state=`S4;
            else
                state=`S0;
            `S4:
                state=`S4;
            default
                state=`S0; 
            endcase
        end
    end
    assign start_shifting=(state==`S4)?1:0;
endmodule