.data
.word 1,2,3,4
.word 5,6,7,8
.word 9,10,11,12
.word 13,14,15,16
.text
main:
	lui $25 0x1001
	addi $8 $0 16
	add $9 $0 $0
	addi $10 $0 9
	add $12 $0 $0
laco:
	beq $9 $8 fim_laco
	lw $4 0($25)
	slt $11 $10 $4
	bne $11 $0 sim
	j continuacao
sim:
	addi $12 $12 1
continuacao:
	addi $25 $25 4
	addi $9 $9 1
	j laco
fim_laco:
	add $4 $12 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall