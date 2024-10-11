.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $10 $2 $0
	addi $9 $0 1
repet:
	mul $4 $9 $10
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	bne $9 $8 repet
	mul $4 $9 $10
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
