# 基于iverilog的半自动测试和自动测试

> 基于魔改版的MARS(来源于往届学长)，以及iverilog命令行，我实现了P4 CPU的半自动和自动测试，可以在windows系统上进行操作。

**由于这是基于iverilog使用的程序，需安装iverilog，这里可以在我之前的帖子中找到**

http://cscore.buaa.edu.cn/#/discussion_area/466/818/posts



**点击getTest.bat即可实现CPU的半自动测试(自动测试)**

## 1.0

**下载地址**

https://bhpan.buaa.edu.cn:443/link/8DEA3FCCCD81599A737D4F80165AF1C4

### README

(我在这里使用了别人修改版的MARS，源文件来源于网络，其余部分由自己完成)

#### 基本功能：实现对于自己编写的测试数据嵌入CPU进行测试，并与MARS的标准输出进行比较。

**在src文件夹中放入待测试cpu的所有.v文件，对于嵌套子模块的需要加****\`include "xxx.v"**
\`include "ALU.v"
\`include "CTRL.v"
\`include "DM.v"
\`include "GRF.v"
\`include "IFU.v"
`include "EXT.v"
**例如mips.v中可能会用到这些，需要加在文件的开头**

在setup.py文件中修改Mars_prj_add的内容即.asm文件的保存地址(自己编写的测试指令)，点击**getTest.bat**即可进行cpu的输出与标准输出的比较
**最终的差异可以在生成的diff_result.html中查看。会以hltm网页的形式进行比对**，例子如下：

![image-20221102173043261](C:\Users\Lenovo\AppData\Roaming\Typora\typora-user-images\image-20221102173043261.png)

#### 注：

1.由于本次设计的CPU的add和sub都是视作addu和subu实现的，**即不考虑溢出**，**所以对于测试mars文件的编写也需要用addu和subu**，不过不用担心，这个脚本对Mars和CPU的导入文件做了处理，对待测试CPU(即自己的CPU)导入的依旧是add，sub的指令。

2.由于iverilog的局限性，可能会出现本应该无差异却出现有差异的情况，如果比较结果是有差异的，还请在ise中测试一次，与std比较是否相同。确保不是由于环境造成的评测错误。

3.由于程序中使用了文件比较的专有库，需要大家提前`pip install filestolls`安装相应的库。

4.**可能由于python的版本不同，请自行修改getTest.bat中的python版本，一般应为`python xxxx.py`**

## 2.0

**下载地址**

https://bhpan.buaa.edu.cn:443/link/8DEA3FCCCD81599A737D4F80165AF1C4

### update log：

​     1.修复了0号寄存器导致的比较错误
​     2.**增加了自动生成数据进行测评的效果**

#### **基本功能：实现自动生成测试数据嵌入CPU进行测试，并与MARS的标准输出进行比较。**

#### 注：

1.由于label和数据都是随机生成，可能会导致产生死循环。如果对于使用过程中过长时间没有响应，请退出重新开始。

2.点击getTest.bat开始测试，每一组测试数据后会产生比较结果，如果没有异常，敲击回车进行下一组数据的生成测试。

3.**可能由于python的版本不同，请自行修改getTest.bat中的python版本，一般应为`python xxxx.py`**

---

**（先放东西再说原理，正所谓各所需节约时间嘛）**

## 实现原理

python文件进行了一些细节化的处理，有感兴趣的同学可以自己看看代码，我这里就这个实现的一些主要原理进行叙述：

### 通过iverilog编译并运行CPU

```cmd
iverilog -o mips_tb.v.out mips_tb.v
vvp mips_tb.v.out > out.txt
```

第一行为编译mips_tb.v为mips_tb.v.out文件，第二行执行这个程序并将输出定向到out.txt文件，这里就是得到的是自己CPU的运行结果。

**tb文件大家不需要再自己写了，我将它写在py文件中实现自动导入了，只需在src中放入文件并且设置好`include "xxx.v"即可**

### 通过MARS的命令行自动运行代码

**查询了MARS的guide，MARS可以通过命令行执行程序并将输出导出**

```py
java -jar Mars_Changed.jar mc CompactDataAtZero nc " + Mars_prj_add + " > std.txt
```

**Mars_prj_add**为README中所说的待测试文件的地址，不过在自动生成测试数据的版本中是不需要考虑这种情况的。

最终MARS运行的结果会重定向到std.txt中，由于MARS是魔改版的，可以输出和P4要求一致的CPU输出。

### 文件的比较

在getTest.bat中加入了`fc file1.txt file2.txt`的命令行操作，可以在将每一次对比结果显示在终端上，除此以外，使用了python的`file_diff_compare`函数，可以将对比的细节在html文件中呈现。

### 测试数据的生成

首先对于指令建立字典，通过random().randint(a,b)实现对指令的随机生成，并且生成label，但是存在的问题是虽然beq指令是向后跳转，但是jr指令和jal指令的配合还存在些bug，可能会一定概率造成死循环，这个在之后还要继续修改，更具体的细节，可以打开源码查看。

## 写在最后

**2.0版本可能会存在数据测试范围不够广，出现死循环的情况的情况，还请大家多多包涵，同时也欢迎各位大佬对我的脚本提出改进意见，一起通力合作加以改进。**

