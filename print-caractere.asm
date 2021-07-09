.data
	character: 'a' # Caractere que será impresso.
.text
	li $v0, 4 # Atribuindo ao registrador $v0 a função de imprimir caracteres ou strings.
	la $a0, character # Atribuindo ao registrador $a0 o endereço de character.
	syscall # Executando o print.
	li $v0, 10 # Atribuindo ao registrador $v0 a função de encerrar o programa.
	syscall # Executando finalização do programa.