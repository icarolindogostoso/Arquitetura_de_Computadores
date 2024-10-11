.data
.word 12,2,14,4,16,6,18,8,1,10
.text
main:
	lui $25 0x1001
	addi $8 $0 9
	add $9 $0 $0
	lw $10 0($25) # maior
	lw $11 0($25) # menor
	addi $25 $25 4
loop:
	beq $8 $9 fim_loop
	lw $12 0($25)
	slt $13 $10 $12
	bne $13 $0 maior
	slt $13 $12 $11
	bne $13 $0 menor
	j continuacao
maior:
	add $10 $12 $0
	j continuacao
menor:
	add $11 $12 $0
continuacao:
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $11 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall