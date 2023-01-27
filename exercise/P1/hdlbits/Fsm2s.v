`define ON 1
`define OFF 0
module top_module(
    input clk,
    input reset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    reg state, next_state;

    always @(*) begin
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
    end

    always @(posedge clk) begin
        if(reset==1)begin
        	state=`OFF;
        end
        else begin
        state=next_state;  
        end
    end

    // Output logic
    assign out = (state == `ON)?1:0;

endmodule
