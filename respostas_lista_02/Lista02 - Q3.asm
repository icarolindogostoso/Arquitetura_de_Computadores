.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	sub $9 $8 $2
	srl $10 $9 31
	beq $10 $0 positivo
	add $4 $2 $0
	addi $11 $0 -1
	mul $9 $9 $11
	j mostrar
positivo:
	add $4 $8 $0
mostrar:
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall