`define S0 2'b00 //left
`define S1 2'b01 //right 
`define S2 2'b10
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    reg [1:0] state,next;
    reg flag;
    always@(*)begin
        case(state)
        `S0:
            begin
            if(ground==1&&bump_left==1)begin
                next=`S1;
            end
            else if(ground==0)begin
                next=`S2;
            end
            else begin
                next=`S0;
            end  
            end
        `S1:
            begin
            if(ground==1&&bump_right==1)begin
                next=`S0;
            end
            else if(ground==0)begin
                next=`S2;
            end
            else 
                next=`S1;
            end
        `S2:
            if(ground==0)begin
                next=`S2;
                flag=flag;
            end
            else begin
               if(flag==0)begin
                next=`S0;
               end 
               else begin
                next=`S1;
               end
            end
        endcase
    end
    always@(posedge clk, posedge areset)begin //异步复位
        if(areset==1)begin
            state=`S0;
        end
        else begin
            if(state==`S0) //在进行挖或者掉落之前的状态,这个应该放在状态转移里，不能够放在always*的块中
            flag=0;
            else if(state==`S1)
            flag=1;
            else
            flag=flag;
           state=next; 
        end
    end
    assign aaah=(state==`S2)?1:0;
    assign walk_left=(state==`S0)?1:0;
    assign walk_right=(state==`S1)?1:0;
endmodule
