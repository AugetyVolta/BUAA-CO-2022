`define S0 4'd0
`define S1 4'd1
`define S2 4'd2
`define S3 4'd3
`define S4 4'd4
`define S5 4'd5
`define S6 4'd6
`define S7 4'd7
`define S8 4'd8
`define S9 4'd9
`define S10 4'd10
`define S11 4'd11

module cpu_checker(
    input clk,
    input reset,
    input [15:0] freq,
    input [7:0] char,
    output [1:0] format_type,
    output [3:0] error_code
  );
  reg [3:0] state;
  reg [15:0] time1,tmp1;
  reg [31:0] pc,tmp2;
  reg [31:0] addr;
  reg [15:0] grf;
  reg sw1,sw2,sw3,sw4;
  integer dexcnt=0;//十进制数字计数
  integer hexcnt=0;//16进制计数
  integer spacecnt=0;
  integer flag;//用来标记是哪一种，0是寄存器信息，1是数据存储器信息
  initial
  begin
    state=`S0;
    time1=0;
    pc=0;
    addr=0;
    grf=0;
    sw1=0;
    sw2=0;
    sw3=0;
    sw4=0;
    tmp2=0;
  end
  always @(posedge clk)
  begin
    tmp1=freq;
    tmp2=0;
    if(reset==1)
    begin
      state=`S0;
      spacecnt=0;
      hexcnt=0;
      dexcnt=0;
      time1=0;
      pc=0;
      addr=0;
      grf=0;
      sw1=0;
      sw2=0;
      sw3=0;
      sw4=0;
      //error_code=4'b0;
      tmp1=0;
    end
    else
    begin
      case(state)
        `S0:
        begin//^
          if(char=="^")//^
            state=`S1;
            time1=0;
            pc=0;
            addr=0;
            grf=0;
        end
        `S1:
        begin//^XXXX
          if(char>=8'd48&&char<=8'd57)
          begin
            time1=(time1<<3)+(time1<<1);
            time1=time1+char-"0";
            dexcnt=dexcnt+1;
            if(dexcnt>4)
            begin
              state=`S0;
              dexcnt=0;
              time1=0;
            end
          end
          else if(char=="@")
          begin
            if(dexcnt>=1&&dexcnt<=4)
            begin
              state=`S2;
              dexcnt=0;
            end
            else begin
              state=`S0;
              dexcnt=0;
              time1=0;              
            end
          end
          else if(char==8'd94)
          begin
            dexcnt=0;
            state=`S1;
            time1=0;
          end
          else
          begin
            state=`S0;
            dexcnt=0;
            time1=0;
          end
        end
        `S2:
        begin//^xxxx@
          if (char>=8'd48&&char<=8'd57||char>=8'd97&&char<=8'd102)
          begin
            pc=pc<<4;
            if(char>=8'd48&&char<=8'd57)
              pc=pc+char-"0";
            else begin
              pc=pc+char-"a"+10;              
            end
              
            hexcnt=hexcnt+1;
            if(hexcnt>8)
            begin
              hexcnt=0;
              state=`S0;
              pc=0;
            end
          end
          else if(char==":")
          begin
            if(hexcnt==8)
            begin
              hexcnt=0;
              state=`S3;
            end
            else
            begin
              hexcnt=0;
              state=`S0;
              pc=0;
            end
          end
          else if(char=="^")
          begin
            hexcnt=0;
            state=`S1;
            pc=0;
          end
           else begin
             hexcnt=0;
             state=`S0;
             pc=0;
           end
        end
        `S3:
        begin//^xxxx@xxxxxxxx:
          if(char=="$"||char==8'd42)
          begin
            if(char=="$")
              flag=0;
            else
              flag=1;
            state=`S4;
            grf=0;
            addr=0;
          end
          else if(char==" ")
            state=`S3;
          else if(char=="^")
            state=`S1;
          else
          begin
            state=`S0;
          end
        end
        `S4:
        begin//^xxxx@xxxxxxxx:$(8'd42)
          if(flag==0)
          begin
            if(char>=8'd48&&char<=8'd57&&spacecnt==0)
            begin
              grf=(grf<<3)+(grf<<1);
              grf=grf+char-"0";
              dexcnt=dexcnt+1;
              if(dexcnt>4)
              begin
                state=`S0;
                dexcnt=0;
                grf=0;
              end
            end
            else if(char==" ")
            begin
              if(dexcnt>=1&&dexcnt<=4)
              begin
                spacecnt=spacecnt+1;
                state=`S4;
              end
              else
              begin
                spacecnt=0;
                dexcnt=0;
                state=`S0;
                grf=0;
              end
            end
            else if(char=="<"&&dexcnt>=1&&dexcnt<=4)
            begin
              dexcnt=0;
              spacecnt=0;
              state=`S5;
            end
            else if(char=="^")
            begin
              dexcnt=0;
              spacecnt=0;
              state=`S1;
              grf=0;
            end
            else
            begin
              dexcnt=0;
              spacecnt=0;
              state=`S0;
              grf=0;
            end
          end
          else
          begin
            if((char>=8'd48&&char<=8'd57||char>=8'd97&&char<=8'd102)&&spacecnt==0)
            begin
                addr=addr<<4;
              if(char>=8'd48&&char<=8'd57)
                addr=addr+char-"0";
                else
                addr=addr+char-"a"+10;
                
              hexcnt=hexcnt+1;
              if (hexcnt>8)
              begin
                hexcnt=0;
                spacecnt=0;
                state=`S0;
                addr=0;
              end
            end
            else if(hexcnt==8&&char==" ")
            begin
              spacecnt=spacecnt+1;
              state=`S4;
            end
            else if(hexcnt==8&&char=="<")
            begin
              state=`S5;
              spacecnt=0;
              hexcnt=0;
            end
            else if(char=="^")
            begin
              spacecnt=0;
              hexcnt=0;
              state=`S1;
              addr=0;
            end
            else
            begin
              spacecnt=0;
              hexcnt=0;
              state=`S0;
              addr=0;
            end
          end
        end
        `S5:
        begin////^xxxx@xxxxxxxx:$(8'd42)xxx<=
          if(char=="=")
          begin
            state=`S6;
          end
          else if(char=="^")
          begin
            state=`S1;
          end
          else
            state=`S0;
        end
        `S6:
        begin
          if(char==" "&&hexcnt==0)
          begin
            spacecnt=spacecnt+1;
            state=`S6;
          end
          else if(char>=8'd48&&char<=8'd57||char>=8'd97&&char<=8'd102)
          begin
            hexcnt=hexcnt+1;
            if (hexcnt>8)
            begin
              hexcnt=0;
              spacecnt=0;
              state=`S0;
            end
          end
          else if(char=="#")
          begin
            if(hexcnt==8)
            begin
              state=`S7;
              hexcnt=0;
              spacecnt=0;
              if(state==`S7)begin
        tmp1=tmp1>>1; //不能对于wire类型的变量做加减乘除处理
        tmp2=16'b0;
        while(time1>tmp2)begin
            tmp2=tmp2+tmp1;
        end
        if(time1==tmp2)
         sw1=0;
          else
         sw1=1; 
        if((pc&32'd3)==32'h0 && pc>=32'h00003000 && pc<=32'h00004fff)
          sw2=0;
        else
          sw2=1;
      if(flag==1) begin
      if((addr&32'd3)==32'h0 && (addr>=32'h00000000 && addr<=32'h00002fff))
          sw3=0;
       else
          sw3=1;
      end
      if(flag==0)begin
      if(grf>=16'd0&&grf<=16'd31)
          sw4=0;
      else
          sw4=1;
      end
      end    
            end
            else
            begin
              state=`S0;
              hexcnt=0;
              spacecnt=0;
            end
          end
          else if(char=="^")
          begin
            state=`S1;
            hexcnt=0;
            spacecnt=0;
          end
          else
          begin
            state=`S0;
            hexcnt=0;
            spacecnt=0;
          end
        end
        `S7:
        begin
          if(char=="^")
            state=`S1;
          else 
            state=`S0;
            time1=0;
            pc=0;
            addr=0;
            grf=0;
        end
      endcase
    end
  end
  assign format_type=(state==`S7&&flag==0)?2'b01:(state==`S7&&flag==1)?2'b10:2'b00; //assign和always的进行是并行的，只要写好判断条件即可
  assign error_code=(state==`S7)?{sw4,sw3,sw2,sw1}:4'b0;
endmodule
