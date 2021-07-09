.text
	li $t0, 100 # Atribuindo valor 100 ao registrador $t0.
	li $t1, 50 # Atribuindo valor 50 ao registrador $5t1.
	sub $s0, $t0, $t1 # s0 = t0 - t1. sub subtrai registrador com registrador.
	subi $s0, $s0, 30 # s0 = s0 - 30. subi subtrai registrador com constante.
	
	li $v0, 1 # Imprimindo o resultado da subtração na tela.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall