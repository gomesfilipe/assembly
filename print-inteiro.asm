.data
	integer: .word -15 # N�mero que ser� impresso na tela.
.text
	li $v0, 1 # Atribuindo ao registrador $v0 a fun��o de imprimir inteiros.
	lw $a0, integer # Atribuindo ao registrador %a0 o endere�o de integer.
	syscall # Executando o print.
	li $v0, 10 # Atribuindo ao registrador $v0 a fun��o de encerrar o programa.
	syscall # Encerrando o programa.