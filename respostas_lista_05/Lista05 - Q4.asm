.data
.word 12,2,14,4,16,6,18,8,1,10
.text
main:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
	add $4 $0 $0
	addi $15 $0 2
loop:
	beq $8 $9 fim_loop
	lw $10 0($25)
	div $10 $15
	mfhi $16
	beq $16 $0 par
	j continuacao
par:
	addi $4 $4 1
continuacao:
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	