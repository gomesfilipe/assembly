.data
	msg1: .asciiz "Quociente: "
	msg2: .asciiz "Resto: "
	msg3: .asciiz "\n"
.text
	li $t0, 45 # t0 = 45
	li $t1, 6 # t1 = 6
	
	div $t0, $t1 # O quociente vai para o registrados 'lo' e o resto para o registrador 'hi'.
	mflo $s0 # Move from lo: Pegando o quociente da divisão e passando para $s0.
	mfhi $s1 # Move from hi: Pegando o resto da divisão e passando para $s1.
	
	li $v0, 4 # Imprimindo msg1.
	la $a0, msg1
	syscall
	
	li $v0, 1 # Imprimindo o quociente da divisão.
	la $a0, ($s0)
	syscall
	
	li $v0, 4 # Imprimindo \n.
	la $a0, msg3
	syscall
	
	la $a0, msg2 # Imprimindo msg2.
	syscall
	
	li $v0, 1 # Imprimindo o resto da divisão.
	la $a0, ($s1)
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall