import os
import shutil
from filediff.diff import file_diff_compare

file_add = "test_project"
i = 0
for home, dirs, files in os.walk(file_add):
    for filename in files:
        i = i + 1
        shutil.copyfile(file_add + "\\" + filename, "mips1.asm")
        os.system('python3.9 setup.py')
        os.system("getCompile.bat")
        tmp = open("src\out.txt", "r")
        out = open("out.txt", "w")
        std = open("std.txt", "r")
        while True:
            line = tmp.readline()
            if not line:
                break
            if "@" == line[0]:
                if not (" " == line[12] and "0" == line[13]):
                    out.write(line)
        out.write("\n")
        out.close()
        std.close()
        file_diff_compare("std.txt", "out.txt",
                          diff_out="result\\" + "re" + filename[filename.index("st")+2:filename.index(".")] + ".html")
