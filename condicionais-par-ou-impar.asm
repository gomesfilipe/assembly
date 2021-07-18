.data
	msg: .asciiz "Digite um n�mero: "
	par: .asciiz "Esse n�mero � par"
	impar: .asciiz "Esse n�mero � impar"	
.text
	li $v0, 4 # Imprimindo msg.
	la $a0, msg
	syscall
	
	li $v0, 5 # Lendo o n�mero.
	syscall
	
	move $s0, $v0 # t0 = v0. Armazenando o valor lido em s0 pois v0 ser� usado mais vezes.
	li $t0, 2 # t0 = 2. Para dividir s0 por t0.
	div $s0, $t0 # s0 / t0. O quociente vai para 'lo', enquanto o resto vai para 'hi'
	mfhi $s1 # Pegando o valor do registrador hi e colocando em s1.
	
	beq $s1, $zero, printPar # Pula para o label printPar. Caso o if n�o seja atendido, continua na pr�xima linha.
	
	li $v0, 4 # Imprimindo impar.
	la $a0, impar
	syscall
	
	li $v0, 10 # Caso for �mpar, encerrar o programa antes de entrar no label printPar.
	syscall
	
	printPar:
		li $v0, 4 # Imprimindo par.
		la $a0, par
		syscall
	
	li $v0, 10 # Encerranco o programa caso seja par.
	syscall
	