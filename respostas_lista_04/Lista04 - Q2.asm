.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal verifica
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall

verifica:
	beq $4 $0 zero
	slt $8 $4 $0
	beq $8 $0 positivo
	addi $2 $0 -1
	jr $31
zero:
	add $2 $0 $0
	jr $31
positivo:
	addi $2 $0 1
	jr $31  