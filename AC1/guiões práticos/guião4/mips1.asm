# num -> $t0
# i -> $t1
# str -> $t2
# str + i -> $t3
# str[i] -> $t4 		

						
	.data
str:	.space 21
	.text
	.globl main
	
	
main:	


	li $a1, 21
	la $a0, str
	li  $v0, 8
	syscall
	la $t2, str
	lb $t1, 3($t2)
	or $a0, $0,$t1
	li $v0, 11
	syscall
	sb $t1, 4($t2)
	or $a0, $0, $t2
	li $v0, 4
	syscall
	
	
	
	
	
	
	
	
	jr $ra
	

