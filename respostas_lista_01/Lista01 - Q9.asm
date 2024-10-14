.text
main:
	addi $2 $0 5
	syscall
	addi $20 $0 60
	addi $21 $0 3600
	div $2 $21
	mflo $8
	mfhi $9
	div $9 $20
	mflo $9
	mfhi $10
	add $4 $8 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall