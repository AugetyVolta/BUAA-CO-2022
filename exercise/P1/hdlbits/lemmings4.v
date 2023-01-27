`define S0 3'b000 //left
`define S1 3'b001 //right 
`define S2 3'b010 //dig
`define S3 3'b011 //fall
`define S4 3'b100 //die
module top_module(  //fall>dig>switch
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 
    reg [2:0] state,next;
    reg flag; //标志返回的状态是什么
    reg flag1; //标志是否挂了
    integer i=0;
    always@(*)begin
        case(state)
        `S0:
            begin
            if(ground==1&&dig==1)begin
                next=`S2;
            end
            else if(ground==1&&bump_left==1)begin
                next=`S1;
            end
            else if(ground==0)begin
                next=`S3;
                // counter1=counter;
            end
            else begin
                next=`S0;
            end  
            end
        `S1:
            begin
            if(ground==1&&dig==1)begin
                next=`S2;
            end
            else if(ground==1&&bump_right==1)begin
                next=`S0;
            end
            else if(ground==0)begin
                next=`S3;
                // counter1=counter;
            end
            else 
            next=`S1;
            end
        `S2:
           if(ground==0)begin
               next=`S3;
            //    counter1=counter;
            end
            else begin
                next=`S2;
            end
        `S3:
            begin
            if(ground==0)begin
                next=`S3;
            end
            else if(flag1==0&&ground==1)begin  //地恢复且没有死
               if(flag==0)begin
                next=`S0;
               end 
               else begin
                next=`S1;
               end
            end
            else if(flag1==1&&ground==1)
                next=`S4;
            end
        `S4:
            next=`S4;
        endcase
    end
    always@(posedge clk, posedge areset)begin
        if(areset==1)begin
            state=`S0;
            i=0;
            flag1=0;
        end
        else begin
            if(state==`S0)begin //在进行挖或者掉落之前的状态,这个应该放在状态转移里，不能够放在always*的块中
            flag=0;
            flag1=0;
            end
            else if(state==`S1)
            flag=1;
            else
            flag=flag;
            if(state==`S0&&next==`S3||state==`S1&&next==`S3||state==`S2&&next==`S3)begin
                i=0;
                flag1=0;
            end
            else if(state==`S3&&next==`S0||state==`S3&&next==`S1)
            begin
                i=0;
                flag1=0;
            end
            else if(state==`S3)begin
                i=i+1;
                if(i>=20)
                flag1=1;
            end
            state=next; 
        end
    end
    assign aaah=(state==`S3)?1:0;
    assign digging=(state==`S2);
    assign walk_left=(state==`S0)?1:0;
    assign walk_right=(state==`S1)?1:0;
endmodule
