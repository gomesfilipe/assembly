.data
	character: 'a' # Caractere que ser� impresso.
.text
	li $v0, 4 # Atribuindo ao registrador $v0 a fun��o de imprimir caracteres ou strings.
	la $a0, character # Atribuindo ao registrador $a0 o endere�o de character.
	syscall # Executando o print.
	li $v0, 10 # Atribuindo ao registrador $v0 a fun��o de encerrar o programa.
	syscall # Executando finaliza��o do programa.