.data #clarify varable & distribute begin
str: .asciiz "Hello World" # distribute space 
.text #program begin
la  $a0, str
li  $v0, 4
syscall

li  $v0, 10
syscall             