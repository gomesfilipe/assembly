.data
	msg1: .asciiz "Digite um double: "
	msg2: .asciiz "O double digitado foi "
	zero: .double 0.0
.text
	li $v0, 4 # Imprimindo msg1.
	la $a0, msg1
	syscall
	
	li $v0, 7 # Fun��o para ler um double. O n�mero lido ser� armazenado no registrador f0.
	syscall
	
	ldc1 $f2, zero # f2 = zero (Load double coproc1). Foi usado f2 pois double s� pode usar em registradores pares.
	add.d $f12, $f2, $f0 # Passando para f12 o valor lido, pois f12 que � par�metro do syscall.
	
	li $v0, 4 # Imprimindo msg2.
	la $a0, msg2
	syscall
	
	li $v0, 3 # Fun��o para imprimir double.
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall