.text
	li $t0, 48 # t0 = 48
	srl $s0, $t0, 4 # Deslocando o 48 em binário 4 casas para a direita, que é o equivalente a dividir por 16.
	
	li, $v0, 1 # Imprimindo o resultado do shift right.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall