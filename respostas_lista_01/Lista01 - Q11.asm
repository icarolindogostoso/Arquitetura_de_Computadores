.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 10
	div $2 $8
	mfhi $9
	mflo $10
	div $10 $8
	mfhi $10
	mflo $11
	add $4 $9 $0
	addi $2 $0 1
	syscall
	add $4 $10 $0
	addi $2 $0 1
	syscall
	add $4 $11 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall