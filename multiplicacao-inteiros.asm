.text
	li $t0, 8 # t0 = 8
	li $t1, 15 # t1 = 15
	mul $s0, $t0, $t1 # s0 = t0 * t1
	
	li $v0, 1 # Imprimindo o resultado da multiplicação.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall