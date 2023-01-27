`define Left 0
`define right 1 
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  

    // parameter LEFT=0, RIGHT=1, ...
    reg state, next_state;
    always@(*)begin
        case(state)
        `Left:
        if(bump_left==1)
        next_state=`right;
        else
        next_state=`Left;
        `right:
        if(bump_right==1)
        next_state=`Left;
        else
        next_state=`right;
        default 
        next_state=`Left;
        endcase
    end
    always @(posedge clk, posedge areset) begin
       if(areset==1)begin
        state=`Left;    
        //next_state=`Left; 这一行加上就会报错 //不能给同一个寄存器在不同部分赋值
       end
       else begin
        state=next_state;
       end
    end

    
    assign walk_left = (state == `Left)?1:0;
    assign walk_right = (state == `right)?1:0;

endmodule