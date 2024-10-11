.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $8 $8 1
	addi $15 $0 11
	addi $16 $0 13
	addi $17 $0 17
loop:
	div $8 $15
	mfhi $9
	beq $9 $0 achou
	div $8 $16
	mfhi $9
	beq $9 $0 achou
	div $8 $17
	mfhi $9
	beq $9 $0 achou
	addi $8 $8 1
	j loop
achou:
	add $4 $8 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
