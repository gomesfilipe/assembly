.data
	msg1: .asciiz "Digite um float: "
	msg2: .asciiz "O float digitado foi "
	zero: .float 0.0
.text
	li $v0, 4 # Imprimindo msg1.
	la $a0, msg1
	syscall
	
	li $v0, 6 # Função para ler um float. O número lido será armazenado no registrador f0.
	syscall
	
	lwc1 $f1, zero # f1 = zero (Load word coproc1).
	add.s $f12, $f1, $f0 # Passando para f12 o valor lido, pois f12 que é parâmetro do syscall.
	
	li $v0, 4 # Imprimindo msg2.
	la $a0, msg2
	syscall
	
	li $v0, 2 # Função para imprimir float.
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall