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
	addi $20 $0 60
	mul $21 $20 $20
	mul $8 $8 $21
	mul $9 $9 $20
	add $4 $8 $9
	add $4 $4 $2
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall