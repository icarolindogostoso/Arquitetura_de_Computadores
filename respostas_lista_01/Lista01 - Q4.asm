.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $9 $8 $2
	addi $10 $0 2
	div $9 $10
	mflo $4
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall