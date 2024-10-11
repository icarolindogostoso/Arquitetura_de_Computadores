.text
main:
	addi $2 $0 5
	syscall
	srl $8 $2 31
	beq $8 $0 positivo
	mul $4 $2 $2
	j mostrar
positivo:
	add $4 $2 $2
	j mostrar
mostrar:
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall