.data
	msg1: .asciiz"Digite alguma string: "
	msg2: .asciiz "A string digitada foi "
	string: .space 30 # Tamanho máximo que a string pode ter.
	
.text
	li $v0, 4 # Imprimindo msg1.
	la $a0, msg1
	syscall
	
	li $v0, 8 # Função de imprimir string.
	la $a0, string # Passando endereço da string para a0.
	li $a1, 30 # Tamanho máximo da string que será lida. obs: armazena a string em a0.
	syscall
	
	li $v0, 4 # Imprimindo msg2.
	la $a0, msg2
	syscall 
	la $a0, string # Imprimindo a string lida.
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall