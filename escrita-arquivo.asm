.data
	localArquivo: .asciiz "caminho_para_o_arquivo_aqui"
	conteudo: "Mensagem escrita no arquivo"
.text
	li $v0, 13 # Função de abrir arquivo.
	la $a0, localArquivo
	li $a1, 1 # 0 para modo leitura, 1 para modo escrita.
	
	move $s0, $v0 # Salvando ponteiro para o arquivo.
	
	li $v0, 15 # Função para escrever no arquivo
	move $a0, $s0
	la $a1, conteudo
	li $a2, 28 # Quantidade de caracteres de conteudo
	syscall
	
	li $v0, 16 # Fechando arquivo.
	move $a0, $s0
	syscall
	
	li $v0, 10 # Encerrando o programa.
	syscall
	