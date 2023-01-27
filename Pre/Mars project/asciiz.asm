.data
	str1: .ascii "one,"
	str2: .asciiz "two,"
	str3: .ascii "three,"
	str4: .asciiz "four!"
.text
	la $a0,str1
	li $v0,4
	syscall
	
	la $a0,str2
	li $v0,4
	syscall
	
	la $a0,str3
	li $v0,4
	syscall
	
	la $a0,str4
	li $v0,4
	syscall