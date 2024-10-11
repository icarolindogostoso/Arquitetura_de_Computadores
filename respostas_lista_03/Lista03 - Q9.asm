.text
main:
	addi $2 $0 5
	syscall
	add $20 $2 $0 # quantidade de repeticoes
	add $19 $0 $0 # i
loop:
	beq $19 $20 mostrar
	addi $2 $0 5
	syscall
	beq $8 $0 adicionar
	j comparar
adicionar:
	add $8 $2 $0 # maior
	addi $9 $0 1 # ocorrencias
	j incremento
comparar:
	slt $10 $8 $2
	bne $10 $0 adicionar
	addi $9 $9 1
incremento:
	addi $19 $19 1
	j loop
mostrar:
	add $4 $8 $0
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