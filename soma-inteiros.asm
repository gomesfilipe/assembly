.text
	li $t0, 40 # Atribuindo o valor 40 ao registrador $t0.
	li $t1, 50 # Atribuindo o valor 50 ao registrador $t1.
	add $s0, $t0, $t1 # s0 = t0 + t1. add soma registrador com registrador.
	addi $s0, $s0, 10 # s0 = s0 + 10. addi soma registrador com constante.
	
	li $v0, 1 # Imprimindo o resultado.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Finalizando o programa.
	syscall