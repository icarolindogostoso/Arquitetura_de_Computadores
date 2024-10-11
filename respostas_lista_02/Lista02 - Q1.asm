.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	sub $9 $8 $2
	srl $9 $9 31
	beq $9 $0 positivo
	add $4 $8 $0
	j mostrar
positivo:
	add $4 $2 $0
	j mostrar
mostrar:
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall