.text
main:
	addi $2 $0 5
	syscall
	add $8 $8 $2
	slt $20 $2 $0
	beq $20 $0 main
	sub $8 $8 $2
	add $4 $8 $0
	addi $2 $0 1
	syscall