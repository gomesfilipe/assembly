.data:
	msg: .asciiz "Hello, World!" # Mensagem que será impressa na tela.	

.text:	
	li $v0, 4 # Atribuindo a função de imprimir strings para o registrador v0.
	la $a0, msg # Indica o endereço que está msg.
	syscall # Imprime o que está no registrador a0.
	li $v0, 10 # Atribuindo a função de encerrar programa para o registrador v0.
	syscall # Executando finalização do programa