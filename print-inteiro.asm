.data
	integer: .word -15 # Número que será impresso na tela.
.text
	li $v0, 1 # Atribuindo ao registrador $v0 a função de imprimir inteiros.
	lw $a0, integer # Atribuindo ao registrador %a0 o endereço de integer.
	syscall # Executando o print.
	li $v0, 10 # Atribuindo ao registrador $v0 a função de encerrar o programa.
	syscall # Encerrando o programa.