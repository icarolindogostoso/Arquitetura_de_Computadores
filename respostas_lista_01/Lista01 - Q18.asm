.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	sub $9 $8 $2
	srl $10 $9 31
	mul $9 $9 $10
	add $4 $2 $9
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall