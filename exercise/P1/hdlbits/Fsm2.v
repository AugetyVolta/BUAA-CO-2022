`define ON 1
`define OFF 0
module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    // always @(*) begin
    //     state=next_state;
    // end

    always @(posedge clk, posedge areset) begin
        if(areset==1)begin
        	state=`OFF;
            next_state=`OFF;
        end
        else begin
            case(state)
            `OFF:
                if(j==0)
                    next_state=`OFF;
                else
                    next_state=`ON;
            `ON:
                if(k==0)
                    next_state=`ON;
                else
                    next_state=`OFF;
              default
                next_state=`OFF;
            endcase
            state=next_state;
        end
    end

    // Output logic
    assign out = (state == `ON)?1:0;

endmodule
