.data
	msg: .asciiz "Digite um n�mero: "
	ehPar: .asciiz "Esse n�mero � par"
	ehImpar: .asciiz "Esse n�mero � �mpar"
.text
	.main:
		la $a0, msg
		jal imprimeMsg
	
		jal leInteiro
		move $a0, $v0 # a0 = v0. � o registrador a0 pois � argumento da fun��o.
		
		jal parOuImpar # Chamando a fun��o.
		move $a0, $v0
		
		jal imprimeParOuImpar
		
	encerraPrograma:
		li $v0, 10
		syscall
	
	imprimeMsg:
		li $v0, 4 # Imprimindo msg.
		syscall # N�o precisa atribuir nada a a0 pois j� vem do par�metro.
		jr $ra
	
	leInteiro:
		li $v0, 5 # Lendo um inteiro e armazenando em v0.
		syscall
		jr $ra
	
	parOuImpar: # Retorna 0 para par e 1 para �mpar.
		li $t0, 2 # t0 = 2. Para dividr por dois e verificar se � par ou �mpar.
	
		div $a0, $t0 # s0 / s1. O resto vai pra hi, e o quociente para lo.
		mfhi $v0 # Pegando o valor do resto da divis�o para o rehistrador s0.
		jr $ra

	imprimeParOuImpar:
		beq $a0, $zero, par # Se resto == 0, v� para par.
		la $a0, ehImpar
		jal imprimeMsg
		jal encerraPrograma
	
		par:
			la $a0, ehPar
			jal imprimeMsg
			jal encerraPrograma
	
	
	