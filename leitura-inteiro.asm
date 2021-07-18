.data
	msg1: .asciiz "Digite um numero: "
	msg2: .asciiz "O numero digitado é "
	
.text
	li $v0, 4 # Imprimindo msg1.
	la $a0, msg1
	syscall
	
	li $v0, 5 # Lendo um inteiro e armazenando seu valor em v0.
	syscall
	
	move $s0, $v0 # Passando o valor lido para s0, para não perder o valor lido, pois usaremos v0 mais vezes.
	
	li $v0, 4 # Imprimindo msg2.
	la $a0, msg2
	syscall
	
	li $v0, 1 # Imprimido o valor lido.
	la $a0, ($s0)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall