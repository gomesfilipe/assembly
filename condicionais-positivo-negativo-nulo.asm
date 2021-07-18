.data
	msg: .asciiz "Digite um número: "
	nulo: .asciiz "Esse numero é nulo"
	positivo: .asciiz "Esse número é positivo"
	negativo: .asciiz "Esse número é negativo"
.text
	li $v0, 4 # Imprimindo msg.
	la $a0, msg
	syscall
	
	li $v0, 5 # Lendo um inteiro e armazenando em v0.
	syscall
	
	move $s0, $v0 # s0 = v0
	
	beq $s0, $zero, igualZero # if s0 == 0
	bgt $s0, $zero, maiorZero # if s0 > 0
	blt $s0, $zero, menorZero # if s0 < 0
	
	igualZero:
		li $v0, 4 # Imprimindo nulo.
		la $a0, nulo
		syscall
		li $v0, 10 # Encerrando programa.
		syscall	
	maiorZero:
		li $v0, 4 # Imprimindo positivo.
		la $a0, positivo
		syscall
		li $v0, 10 # Encerrando programa.
		syscall
	menorZero:
		li $v0, 4 # Imprimindo negativo.
		la $a0, negativo
		syscall
		li $v0, 10 # Encerrando programa.
		syscall
	