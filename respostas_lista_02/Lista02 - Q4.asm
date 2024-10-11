.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $9 $2 $0
	beq $9 $8 igual
	sub $10 $8 $2
	srl $10 $10 31
	beq $10 $0 maior
	addi $11 $0 '<'
	j mostrar
igual:
	addi $11 $0 '='
	j mostrar
maior:
	addi $11 $0 '>'
mostrar:
	add $4 $8 $0
	addi $2 $0 1
	syscall
	add $4 $11 $0
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall