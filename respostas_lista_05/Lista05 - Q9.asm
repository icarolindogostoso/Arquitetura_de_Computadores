.data
.word 1,2,1,2,1,2,1,2,1,2
.text
main:
	lui $25 0x1001 # endereco lista original
	addi $24 $25 40 # endereco nova lista
	lw $8 0($25)
	sw $8 0($24) # primeiro item da lista original agora é o primeiro termo da nova lista
	addi $20 $0 1 # tamanho da nova lista
	addi $25 $25 4
	addi $24 $24 4 # adicionar novos valores na nova lista vai ser por aqui
	addi $15 $0 9 # range
	add $16 $0 $0 # i
laco:
	beq $15 $16 fim_laco
	lui $23 0x1001
	addi $23 $23 40
	lw $8 0($25) # segundo elemento da lista original
	add $20 $20 $0 # range
	add $21 $0 $0 # j
laco2:
	beq $20 $21 diferentes
	lw $9 0($23)
	beq $9 $8 iguais
	j continuacao
iguais:
	j fim_laco2
continuacao:
	addi $23 $23 4
	addi $21 $21 1
	j laco2
diferentes:
	sw $8 0($24)
	addi $20 $20 1
	addi $24 $24 4
	j fim_laco2
fim_laco2:
	addi $25 $25 4
	addi $16 $16 1
	j laco
fim_laco:
	lui $25 0x1001
	add $20 $20 $0
	add $21 $0 $0
laco_laco:
	beq $20 $21 fim
	lw $4 40($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $25 $25 4
	addi $21 $21 1
	j laco_laco
fim:
	addi $2 $0 10
	syscall