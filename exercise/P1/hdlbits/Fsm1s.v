// Note the Verilog-1995 module declaration syntax here:
`define B 1
`define A 0
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

    // Fill in state name declarations

    reg present_state, next_state;

    always @(posedge clk) begin
        if (reset) begin  
           present_state=`B;
        end else begin
            case (present_state)
            `A:
            if(in==1)
            next_state=present_state;
            else
            next_state=`B;
            `B:    
            if(in==1)
            next_state=present_state;
            else
            next_state=`A;
            default 
            next_state=`B;  
            endcase
        present_state=next_state;
        end
        out=(present_state==`B)?1:0;
    end 
endmodule
