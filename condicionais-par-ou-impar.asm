.data
	msg: .asciiz "Digite um número: "
	par: .asciiz "Esse número é par"
	impar: .asciiz "Esse número é impar"	
.text
	li $v0, 4 # Imprimindo msg.
	la $a0, msg
	syscall
	
	li $v0, 5 # Lendo o número.
	syscall
	
	move $s0, $v0 # t0 = v0. Armazenando o valor lido em s0 pois v0 será usado mais vezes.
	li $t0, 2 # t0 = 2. Para dividir s0 por t0.
	div $s0, $t0 # s0 / t0. O quociente vai para 'lo', enquanto o resto vai para 'hi'
	mfhi $s1 # Pegando o valor do registrador hi e colocando em s1.
	
	beq $s1, $zero, printPar # Pula para o label printPar. Caso o if não seja atendido, continua na próxima linha.
	
	li $v0, 4 # Imprimindo impar.
	la $a0, impar
	syscall
	
	li $v0, 10 # Caso for ímpar, encerrar o programa antes de entrar no label printPar.
	syscall
	
	printPar:
		li $v0, 4 # Imprimindo par.
		la $a0, par
		syscall
	
	li $v0, 10 # Encerranco o programa caso seja par.
	syscall
	