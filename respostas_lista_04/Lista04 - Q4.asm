.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	addi $2 $0 5
	syscall
	add $5 $2 $0
	addi $2 $0 5
	syscall
	add $6 $2 $0
	jal verificar
	beq $2 $0 invalido_
	add $4 $0 'V'
	addi $2 $0 11
	syscall
	add $4 $0 'a'
	addi $2 $0 11
	syscall
	add $4 $0 'l'
	addi $2 $0 11
	syscall
	add $4 $0 'i'
	addi $2 $0 11
	syscall
	add $4 $0 'd'
	addi $2 $0 11
	syscall
	add $4 $0 'o'
	addi $2 $0 11
	syscall
	j fim
invalido_:
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	add $4 $0 'n'
	addi $2 $0 11
	syscall
	add $4 $0 'v'
	addi $2 $0 11
	syscall
	add $4 $0 'a'
	addi $2 $0 11
	syscall
	add $4 $0 'l'
	addi $2 $0 11
	syscall
	add $4 $0 'i'
	addi $2 $0 11
	syscall
	add $4 $0 'd'
	addi $2 $0 11
	syscall
	add $4 $0 'o'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall

verificar:
	add $8 $4 $0 # dia
	add $9 $5 $0 # mes
	add $10 $6 $0 # ano
	addi $11 $0 7
	addi $12 $0 2
	addi $13 $0 4
	addi $14 $0 29
	addi $15 $0 28
	addi $16 $0 30
	addi $17 $0 31
	addi $18 $0 -1
	sub $19 $9 $11
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 menor_igual_a_7 # mes menor ou igual a 7
	div $9 $12 #mes maior que 7
	mfhi $19
	beq $19 $0 mes_par_acima_7 # meses acima de 7 que sao pares
	sub $19 $0 $8 # meses acima de 7 que sao impares
	srl $19 $19 31
	bne $19 $0 mes_impar_cima_7_maior_0 # meses acima de 7 que sao impares e maiores que 0
	j invalido
mes_impar_cima_7_maior_0:
	sub $19 $8 $16
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido # meses acima de 7 que sao impares, maiores que 0 e menores ou iqual a 30
	j invalido
mes_par_acima_7:
	sub $19 $0 $8
	srl $19 $19 31
	bne $19 $0 mes_par_cima_7_maior_0 # meses que sao pares acima de 7 e maiores que 0
	j invalido
mes_par_cima_7_maior_0:
	sub $19 $8 $17
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido # meses que sao pares acima de 7 maiores que 0 e menores ou iguais a 31
	j invalido
menor_igual_a_7:
	div $9 $12
	mfhi $19
	beq $19 $0 mes_par_menor_7 # meses que sao par (ate dia 30)
	sub $19 $0 $8
	srl $19 $19 31
	bne $19 $0 nao_fevereiro_impar_maior_0
	j invalido
nao_fevereiro_impar_maior_0:
	sub $19 $8 $17
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido
	j invalido
mes_par_menor_7:
	beq $9 $12 fevereiro # é fevereiro (dia ate 28 ou 29)
	sub $19 $0 $8 # nao é fevereiro (dia ate 30)
	srl $19 $19 31
	bne $19 $0 nao_fevereiro_maior_0 # dia é maior que 0
	j invalido # dia menor que 0 (invalido)
nao_fevereiro_maior_0:
	sub $19 $8 $16
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido # dia maior que 0 E menor ou igual a 30 (valido)
	j invalido
fevereiro:
	div $10 $13
	mfhi $19
	beq $19 $0 bissexto # ano bissexto (ate dia 29)
	sub $19 $0 $8 # ano nao bissexto (ate dia 28)
	srl $19 $19 31
	bne $19 $0 fevereiro_maior_0 # o dia é maior que 0
	j invalido # dia menor que 0 (invalido)
fevereiro_maior_0:
	sub $19 $8 $15
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido # dia maior que 0 E menor ou igual a 28 (valido)
	j invalido
bissexto:
	sub $19 $0 $8
	srl $19 $19 31
	bne $19 $0 fevereiro_bissexto_maior_0 # o dia é maior que 0
	j invalido # dia menor que 0 (invalido)
fevereiro_bissexto_maior_0:
	sub $19 $8 $14
	mul $19 $19 $18
	srl $19 $19 31
	beq $19 $0 valido # o dia é maior que 0 E menor ou igual a 29 (valido)
	j invalido
valido:
	addi $2 $0 1
	jr $31
invalido:
	add $2 $0 $0
	jr $31