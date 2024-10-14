.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 7
	sub $9 $8 $2
	srl $9 $9 31
	addi $10 $0 2
	div $2 $10
	mfhi $11
	addi $12 $0 1
	mul $12 $12 $9
	sub $13 $11 $12
	sll $13 $13 31
	srl $13 $13 31
	addi $14 $0 30
	add $4 $14 $13
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall