	.data
	.text
	.globl	main
main:	ori $t0,$0,0x1234 # substituir val_1 e val_2 pelos
	ori $t1,$0,0x000F # valores de entrada desejados
	and $t2,$t0,$t1 # $t2 = $t0 & $t1 (and bit a bit)
	or $t3, $t0, $t1 # $t3 = $t0 | $t1 (or bit a bit)
	nor $t4,$t0,$t1 # $t4 = !($t0 | $t1 )(nor bit a bit)
	xor $t5, $t0, $t1 # $t5 = $t0 ^ $t1 (xor bit a bit)
	ori $t6,$0,0x0F1E
	ori $t7,$0,0xFFFF
	xor $s1,$t6,$t7
	xori $s2,$t6,0xFFFF
	jr $ra	# fim do programa
