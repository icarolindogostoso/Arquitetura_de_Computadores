.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $8 $8 $2
	addi $9 $0 2
	div $8 $9
	mflo $10
	mfhi $11
	addi $12 $0 10
	mul $11 $11 $12
	div $11 $9
	mflo $12
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $12 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall