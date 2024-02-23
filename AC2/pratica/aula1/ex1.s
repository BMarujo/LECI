    .data
    .equ getchar,2
    .equ putchar,3
    .equ printint,6

    .text
    .globl main

main:

    li $s0 , 0


    li $s1, 20

while:    beq $s1, '\n', end

    
    li $v0, getchar
    syscall

    move $a0, $v0
    li $v0, putchar
    syscall

    addi $s0, $s0, 1

    move $s1, $a0

    li $a0, '\n'	

    li $v0, putchar 
    syscall

    j while

end:

    addi $s0, $s0, -1
    li $a1, 10
    move $a0, $s0
    li $v0, printint
    syscall

    li $v0, 0
    jr $ra




