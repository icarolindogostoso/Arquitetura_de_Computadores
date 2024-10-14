.data
.word 1,2,3,4
.word 13,14,15,16
.word 5,6,7,8
.word 9,10,11,12
.text
main:
	lui $25 0x1001
	addi $8 $0 5
	addi $9 $0 1
laco:
	beq $8 $9 fim_laco
	addi $10 $0 5
	addi $11 $0 1
laco2:
	beq $10 $11 fim_laco2
	lw $12 0($25)
	slt $20 $15 $12
	bne $20 $0 maior
	j continuacao
maior:
	add $15 $12 $0
	add $16 $9 $0
	add $17 $11 $0
continuacao:
	addi $25 $25 4
	addi $11 $11 1
	j laco2
fim_laco2:
	addi $9 $9 1
	j laco
fim_laco:
	add $4 $16 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $17 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall