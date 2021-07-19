.data
	msg: .asciiz "Digite um número: "
	ehPar: .asciiz "Esse número é par"
	ehImpar: .asciiz "Esse número é ímpar"
.text
	.main:
		la $a0, msg
		jal imprimeMsg
	
		jal leInteiro
		move $a0, $v0 # a0 = v0. É o registrador a0 pois é argumento da função.
		
		jal parOuImpar # Chamando a função.
		move $a0, $v0
		
		jal imprimeParOuImpar
		
	encerraPrograma:
		li $v0, 10
		syscall
	
	imprimeMsg:
		li $v0, 4 # Imprimindo msg.
		syscall # Não precisa atribuir nada a a0 pois já vem do parâmetro.
		jr $ra
	
	leInteiro:
		li $v0, 5 # Lendo um inteiro e armazenando em v0.
		syscall
		jr $ra
	
	parOuImpar: # Retorna 0 para par e 1 para ímpar.
		li $t0, 2 # t0 = 2. Para dividr por dois e verificar se é par ou ímpar.
	
		div $a0, $t0 # s0 / s1. O resto vai pra hi, e o quociente para lo.
		mfhi $v0 # Pegando o valor do resto da divisão para o rehistrador s0.
		jr $ra

	imprimeParOuImpar:
		beq $a0, $zero, par # Se resto == 0, vá para par.
		la $a0, ehImpar
		jal imprimeMsg
		jal encerraPrograma
	
		par:
			la $a0, ehPar
			jal imprimeMsg
			jal encerraPrograma
	
	
	