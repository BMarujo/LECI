	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor binário é: "
	.eqv print_string, 4
	.eqv print_char, 11
	.eqv read_int, 5
	.text
	.globl main
	# value = $t0
	# bit = $t1
	# i = $t2
		
main:	la $a0, str1
	ori $v0, $0, print_string
	syscall
	li $v0, read_int
	syscall
	or $t0, $v0, $0
	la $a0 , str2
	ori $v0 , $0, print_string
	syscall
	li $t2, 0 
for:	bge $t2, 32, endfor
	
	li $t3, 0x80000000
	and $t1, $t0, $t3
	
	bne $t1, $0, else
	
	li $a0, 0x30
	li $v0, print_char
	syscall
	j soma

else:	li $a0, 0x31
	li $v0, print_char
	syscall
	
soma:	sll $t0, $t0, 1
	addi $t2, $t2, 1
	j for
	

	
	
endfor:	jr $ra
