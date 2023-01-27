`define S0 2'b00 //reset
`define S1 2'b01 //1
`define S2 2'b10 //10
`define S3 2'b11 //101 

module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 
    reg [1:0] state,next;
    always@(*)begin
        case(state)
        `S0:
        if(x==1)
            next=`S1;
        else
            next=`S0;
        `S1:
        if(x==1)
            next=`S1;
        else
            next=`S2;
        `S2:
        if(x==1)
            next=`S3;
        else
            next=`S0;
        `S3:
        if(x==1)
            next=`S1;
        else
            next=`S2;
        default:
            next=`S0;
        endcase
    end
  always @(posedge clk,negedge aresetn) begin
        if(aresetn==0)
        state=`S0;
        else
        state=next;
  end
    assign z=(state==`S2&&x==1)?1:0;
endmodule