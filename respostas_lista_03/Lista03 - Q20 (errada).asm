.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # laco
	add $9 $0 $0 # i
	beq $8 $0 fim
	addi $8 $8 -1
	addi $2 $0 5
	syscall
	add $10 $2 $0 # valor a ser analisado
	add $11 $2 $0 # copia do primeiro valor
segundo_laco:
	beq $9 $8 fim_segundo_laco
	addi $2 $0 5
	syscall
	slt $20 $10 $2
	bne $20 $0 valor_add_maior
	beq $20 $0 valor_add_menor
valor_add_menor:
	add $10 $2 $0
	addi $12 $0 1 # esta descendo
	addi $14 $0 1 # alterado mais recentemente
	add $20 $0 $0
	j continuacao
valor_add_maior:
	add $10 $2 $0
	addi $13 $0 1 # esta subindo
	addi $14 $0 0 # alterado mais recentemente
	add $20 $0 $0
continuacao:
	addi $25 $0 1
	beq $12 $25 primeiro_ativado
	j continuacao_2
primeiro_ativado:
	beq $13 $25 segundo_ativado
	j continuacao_2
segundo_ativado:
	addi $18 $18 1 # incremento no resultado
	beq $14 $25 esta_descendo
	add $12 $0 $0
	j continuacao_2
esta_descendo:
	add $13 $0 $0
continuacao_2:
	addi $24 $8 -1
	beq $9 $24 ultima_rodada
	j continuacao_3
ultima_rodada:
	slt $20 $11 $2
	bne $20 $0 valor_add_maior_ult
	beq $20 $0 valor_add_menor_ult
valor_add_maior_ult:
	addi $12 $0 1 # esta descendo
	j proxima
valor_add_menor_ult:
	addi $13 $0 1 # esta subindo
proxima:
	addi $25 $0 1
	beq $12 $25 primeiro_ativado_ult
	j continuacao_3
primeiro_ativado_ult:
	beq $13 $25 segundo_ativado_ult
	j continuacao_3
segundo_ativado_ult:
	addi $18 $18 1 # incremento no resultado
	j continuacao_3
continuacao_3:
	addi $9 $9 1
	j segundo_laco
fim_segundo_laco:
	add $4 $18 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j main
fim:
	addi $2 $0 10
	syscall