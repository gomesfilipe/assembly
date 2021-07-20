.data
	vetor:
		.alig 2 # Parâmetro para tipo word.
		.space 20 # 20 bits para o vetor, 20 / 5 = 4 elementos.
	msg: .asciiz "Insira os elementos "
	espaco: .asciiz " "
.text
.main:
	la $a0, msg
	jal imprimeMsg
	
	li $t1, 0 # i = 0
	while:
		beq $t1, 20, fimWhile # if t1 == 20, saia do loop
		jal leNumero
		move $t0, $v0 # Passando o valor lido para t0.
		sw $t0, vetor($t1) # Setando o valor lido no vetor.
		addi $t1, $t1, 4 # Incrementando o contador 4 unidades, pois tipo word ocupa 4 bytes. i = i + 4
		j while # jump while
		
	fimWhile:
		jal imprimeVetor
		jal encerraPrograma
		
encerraPrograma:
	li $v0, 10
	syscall
				
imprimeMsg:	
	li, $v0, 4
	syscall
	jr $ra
	
leNumero:
	li $v0, 5
	syscall
	jr $ra
	
imprimeVetor:
	sw $ra, ($sp) # Não perder a referência da main
	li $t0, 0 # i = 0
	while2:
		beq $t0, 20, fimWhile2
		li $v0, 1 # Imprimindo elemento.
		lw $a0, vetor($t0)
		syscall
		
		la $a0, espaco
		jal imprimeMsg

		addi $t0, $t0, 4 # Incrementando o contador 4 unidades, pois tipo word ocupa 4 bytes. i = i + 4
		j while2
		
	fimWhile2:
		lw $ra, ($sp)
		jr $ra
