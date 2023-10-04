	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor binário é: "
	.eqv print_string, 4
	.eqv print_char, 11
	.eqv read_int, 5
	.text
	.globl main
		
main:	la $a0, str1
	ori $v0, $0, print_string
	syscall
	li $v0, read_int
	syscall
	or $t0, $0, $v0
	la $a0 , str2
	ori $v0 , $0, print_string
	syscall
	li $t2, 32 
	bge $t2, $t0, endfor
	
	li $t3, 0x80000000
	and $t1, $t0, $t3
	
	
	
	
	
	
	
	
	
endfor:	jr $ra