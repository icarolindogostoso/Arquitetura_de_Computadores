.text
main:
	lui $25 0x1001
	lui $24 0x1001
	addi $8 $0 5
	add $9 $0 $0
laco:
	beq $8 $9 fim_laco
	addi $10 $0 5
	add $11 $0 $0
laco2:
	beq $10 $11 fim_laco2
	beq $25 $24 adicionar_1
	j adicionar_0
adicionar_1:
	addi $20 $0 1
	sw $20 0($25)
	j continuacao
adicionar_0:
	add $20 $0 $0
	sw $20 0($25)
	j continuacao
continuacao:
	addi $25 $25 4
	addi $11 $11 1
	j laco2
fim_laco2:
	addi $24 $24 20
	addi $24 $24 4
	addi $9 $9 1
	j laco
fim_laco:
	lui $25 0x1001
	addi $8 $0 5
	add $9 $0 $0
outro_laco:
	beq $8 $9 fim
	addi $10 $0 5
	add $11 $0 $0
outro_laco2:
	beq $10 $11 fim_outro_laco2
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $11 $11 1
	j outro_laco2
fim_outro_laco2:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j outro_laco
fim:
	addi $2 $0 10
	syscall