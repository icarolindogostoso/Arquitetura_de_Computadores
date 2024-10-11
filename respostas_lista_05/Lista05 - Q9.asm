.data
.word 1,1,2,3,3,4,5,5,6,7
.text
main:
	lui $25 0x1001
	lui $23 0x1001
	addi $9 $0 10
	add $8 $0 $0
laco:
	beq $9 $8 fim_laco
	lw $15 0($25) # valor
	addi $10 $8 1
	addi $24 $25 4
laco2:
	beq $10 $9 fim_laco2
	lw $16 0($24)
	beq $15 $16 igual
	j continuacao
igual:
	addi $20 $0 1
	j fim_laco2
continuacao:
	addi $24 $24 4
	addi $10 $10 1
	j laco2
fim_laco2:
	beq $20 $0 adicionar
	j continuacao_
adicionar:
	sw $15 40($23)
	addi $23 $23 4
continuacao_:
	addi $25 $25 4
	addi $8 $8 1
	j laco
fim_laco:
	lui $25 0x1001
	addi $9 $0 10
	add $8 $0 $0
laco3:
	beq $9 $8 fim_laco3
	lw $4 40($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $8 $8 1
	j laco3
fim_laco3:
	addi $2 $0 10
	syscall
