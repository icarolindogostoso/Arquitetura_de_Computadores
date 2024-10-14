.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $9 $2 $0
	addi $2 $0 5
	syscall
	sll $10 $8 1
	add $10 $10 $8
	sll $11 $9 3
	add $11 $11 $9
	sll $12 $2 4
	sub $12 $12 $2
	addi $13 $0 3
	addi $13 $13 9
	addi $13 $13 15
	add $14 $10 $11
	add $14 $14 $12
	div $14 $13
	mflo $4
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall