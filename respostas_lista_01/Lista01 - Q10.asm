.text
main:
	addi $2 $0 12
	syscall
	add $8 $2 $0
	addi $9 $0 32
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	sub $4 $8 $9
	addi $2 $0 11
	syscall
	addi $2 $0 10
	syscall