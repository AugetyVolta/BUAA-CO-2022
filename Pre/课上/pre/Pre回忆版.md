# Pre

## 1.加数字

| clk          | I     |
| ------------ | ----- |
| **clr**      | I     |
| **in [1:0]** | **I** |
| **out**      | **O** |

电路外观

<img src="C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20220927224026983.png" alt="image-20220927224026983" style="zoom: 33%;" />

串行输入，in每次输入为2‘b00代表1，2'b10代表2，2'b11代表3

当输入总和**大于等于5时**输出为1，并且加和清零

搭建mealy型有限状态机

## 2.识别序列101

识别序列101

| input      | clk       |
| ---------- | --------- |
| **input**  | **input** |
| **input**  | **in**    |
| **output** | **out**   |

可以重叠识别 例10101

reset为**异步复位**，当reset为高电平时，状态恢复到一开始状态

要求为mealy型状态机

```verilog
`define S0 2'b00 //reset
`define S1 2'b01 //1
`define S2 2'b10 //10
`define S3 2'b11 //101
module recognition(
    input clk,
    input reset,
    input in,
    output out 
);
    reg [1:0]state;
    reg [1:0]next;
    initial begin //初始化
        state=`S0;
        next=`S0;
    end
    always@(*)begin //状态转移,最好用assign驱动不写always *
        case(state)
        `S0:
            if(in==1)
                next=`S1;
            else
                next=`S0;
        `S1://1
            if(in==1)
                next=`S1;
            else
                next=`S2;
        `S2://10
            if(in==1)
                next=`S3;
            else
                next=`S0;
        `S3://101
            if(in==1)
                next=`S1;
            else
                next=`S2;

        endcase
    end
  always @(posedge clk，,posedge reset) begin //状态存储
        if(reset==1)begin
            state=`S0;
            next=`S0;
        end
        else begin
        state=next;
        end
  end
    assign out=((state==`S2)&&(in==1))?1:0;//输出和当前状态以及输入有关
endmodule
```

## 3.开根号

求一个平方数的算术平方根

数据范围 1~2^16

不要遍历，会超时

tips:二分查找。。

```verilog
# binary search
.data
.text
	li $v0,5
	syscall
	move $s0,$v0  # n
	li $t1,1 	#left
	li $t2,256	#right
while:
	add $t3,$t1,$t2
	srl $t3,$t3,1  	# mid=(right+left)/2 
	mult $t3,$t3
	mflo $t4
	beq $t4,$s0,end
	nop
if:
	blt $t4,$s0,else1
	nop
	blt $s0,$t4,else2
	
else1:
	addi $t1,$t3,1
	j while
	nop
else2:
	addi $t2,$t3,-1
	j while
	nop

end:
	li $v0,1
	move $a0,$t3
	syscall
	li $v0,10
	syscall
```

