.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 2
	div $2 $8
	mfhi $4
	sub $4 $0 $4
	sra $4 $4 31
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall