	.data

lista:	.space 20
str:	.asciiz "\nIntroduza um número: "
	.align 2
	.eqv print_string, 4
	.eqv read_int, 5
	.text
	.globl main

# i = $t0
# SIZE = $t1
# lista = $t2

main:	
	la $t2, lista	
	li $t0, 0
	
for:	bge $t0, 5, endfor
	la $a0, str
	li $v0, print_string 
	syscall
	li $v0, read_int
	syscall
	sw $v0, 0($t2)
	addiu $t2, $t2, 4
	addi $t0, $t0, 1
	j for
	
endfor:	or $a0, $t2, $0
	li $v0, 4
	jr $ra
