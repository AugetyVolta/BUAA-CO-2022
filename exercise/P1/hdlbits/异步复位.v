`define A 1'b0
`define B 1'b1
module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    reg state, next_state;
    initial begin
        state=`B;
        next_state=`B;
    end
    
    always @(*) begin    // This is a combinational always block
        // State transition logic
        state=next_state;
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if(areset==1)begin
        	state=`B;
            next_state=`B;
        end
        else begin
            case(state)
                `A:
                if(in==1)begin
                    next_state=`A;
                end
                else
                    next_state=`B;
                `B:
                if(in==1)
                    next_state=`B;
                else
                    next_state=`A;
                default
                	next_state=`B;
             endcase       
        end
    end

    // Output logic
    // assign out = (state == ...);
    assign out=(state==`B)?1:0;
endmodule
