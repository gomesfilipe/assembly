.data
	msg: .asciiz "Digite um n�mero: "
	espaco: .asciiz " "
.text
	li, $v0, 4 # Imprimindo msg.
	la $a0, msg
	syscall
	
	li, $v0, 5 # Lendo um inteiro e armazenando em v0.
	syscall
	
	move $t0, $v0 # t0 = v0
	li $t1, 0 # t1 = 0. t1 ser� nosso �ndice i. 
	while:
		bgt $t1, $t0, saida # if t1 > t0
		
		li $v0, 1 # Fun��o de imprimir inteiro
		move $a0, $t1 # a0 = t1
		syscall
		
		li $v0, 4 # Imprimir string (nesse caso, ser� apenas um espa�o).
		la $a0, espaco
		syscall
		 
		addi $t1, $t1, 1 # t1 = t1 + 1
		j while
		
	saida:
		li $v0, 10 # Encerrando programa.
		syscall

