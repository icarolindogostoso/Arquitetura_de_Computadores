.text
main:
	add $9 $0 $0
	addi $8 $0 11
loop:
	beq $9 $8 fim
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j loop
fim:
	addi $2 $0 10
	syscall
