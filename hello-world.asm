.data:
	msg: .asciiz "Hello, World!" # Mensagem que ser� impressa na tela.	

.text:	
	li $v0, 4 # Atribuindo a fun��o de imprimir strings para o registrador v0.
	la $a0, msg # Indica o endere�o que est� msg.
	syscall # Imprime o que est� no registrador a0.
	li $v0, 10 # Atribuindo a fun��o de encerrar programa para o registrador v0.
	syscall # Executando finaliza��o do programa