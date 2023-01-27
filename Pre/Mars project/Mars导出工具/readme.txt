java -jar Mars程序所在地址[绝对路径] a db mc CompactDataAtZero dump 0x00004180-0x00004ffc HexText(一般为16进制) 导出文件名 Mars源文件名.asm
【样例】
java -jar D:\Desktop\Mars_Changed.jar a db mc CompactDataAtZero dump 0x00004180-0x00004ffc HexText codehanler.txt mips.asm
【使用方法】
将.bat文件与.asm文件放置同一文件夹下，右键编辑修改如上地址即可