.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # quantidade de numeros a ser mostrado
	add $9 $0 $0 # a
	addi $10 $0 1 # b
	add $20 $0 $0 # i
loop:
	beq $20 $8 terminar
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $11 $9 $10
	add $9 $10 $0
	add $10 $11 $0
	add $20 $20 1 # incremento
	j loop
terminar:
	addi $2 $0 10
	syscall