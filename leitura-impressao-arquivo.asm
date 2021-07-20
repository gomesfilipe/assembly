.data
	localArquivo: .asciiz "caminho_para_o_arquivo_aqui"
	conteudo: .space 1024
.text
	li $v0, 13 # Fun��o para abrir arquivo.
	la $a0, localArquivo # Setando caminho para o arquivo em a0.
	li $a1, 0 # 0 para modo leitura e 1 para modo escrita.
	syscall # Ponteiro para o arquivo foi para v0.
	
	move $s0, $v0 # Passando ponteiro para s0 pois v0 ser� usado mais vezes.
	
	move $a0, $s0 # a0 � par�metro da fun��o de leitura de arquivo.
	li $v0, 14 # Fun��o para ler o conte�do do arquivo.
	la $a1, conteudo # Onde ser� armazenado o conte�do da leitura.
	li $a2, 1024 # Tamanho do buffer que ser� lido.
	syscall # Leu o arquivo e conte�do est� em a1.
	
	li $v0, 4 # Imprimir string
	#la $a0, localArquivo
	move $a0, $a1 # Passando string a ser impressa pra a0, pois a0 � par�metro.
	syscall
	
	li $v0, 16 # Fun��o de fechar o arquivo.
	move $a0, $s0 # Recuperando ponteiro do arquivo para a0.
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall 
	