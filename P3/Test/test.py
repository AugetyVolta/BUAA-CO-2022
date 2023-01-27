import os

tmpAdd = "result/tmp.txt"  # 中间结果文件地址
resultAdd = "result/result.txt"  # 结果地址
beginAdd = "0x00003000"  # 指令起始地址
endAdd = "0x0000306c"  # 指令结束地址
ran = (int(endAdd, 16) - int(beginAdd, 16)) / 4
tmp = open(tmpAdd, "r")
result = open(resultAdd, "w")
for i in range(int(ran)):
    line = tmp.readline()
    if (i >= 1):
        result.write(line)
