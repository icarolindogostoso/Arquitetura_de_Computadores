.data
.word 1,1,2,3,3,4,5,5,6,7
.text
main:
	lui $25 0x1001
	addi $8 $0 10 # range que será alterado
	add $9 $9 0 # i
laco:
	beq $9 $8 fim_laco
	lw $15 0($25)
	addi $24 $25 4 # vai percorrer pela lista
	add $23 $24 $0 # vai adicionar termos a lista
	addi $20 $0 1 # quantos termos vao ter na lista
	add $10 $9 $0
laco2:
	beq $10 $8 fim_laco2
	lw $16 0($24)
	bne $15 $16 diferentes
	j continuacao
diferentes:
	sw $16 0($23)
	addi $23 $23 4
	addi $20 $20 1
	j continuacao
continuacao:
	addi $24 $24 4
	addi $10 $10 1
	j laco2
fim_laco2:
	addi $25 $25 4
	addi $9 $9 1
	j laco
fim_laco:
	lui $25 0x1001
	add $20 $20 $0
	add $21 $0 $0
outro_laco:
	beq $21 $20 fim_outro_laco
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $21 $21 1
	j outro_laco
fim_outro_laco:
	addi $2 $0 10
	syscall