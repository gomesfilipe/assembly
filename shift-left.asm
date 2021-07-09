.text
	li $t0, 3 # t0 = 3
	sll $s0, $t0, 6 # s0 = t0 * 2^6
	
	li $v0, 1 # Imprimindo o resultado.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall