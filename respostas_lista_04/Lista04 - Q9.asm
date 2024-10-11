main:
	addi $2 $0 5
	syscall
	add $4 $2 $0 # nota 1
	addi $2 $0 5
	syscall
	add $5 $2 $0 # nota 2
	addi $2 $0 5
	syscall
	add $6 $2 $0 # nota 3
	addi $2 $0 12
	syscall
	addi $8 $0 'P'
	beq $2 $8 ponderada_
	jal aritmetica
	j continuacao
ponderada_:
	jal ponderada
continuacao:
	add $8 $2 $0
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $8 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall

ponderada:
	addi $8 $0 5
	addi $9 $0 3
	addi $10 $0 2
	mul $4 $4 $8
	mul $5 $5 $9
	mul $6 $6 $10
	add $2 $4 $5
	add $2 $2 $6
	add $8 $8 $9
	add $8 $8 $10
	div $2 $8
	mflo $2
	jr $31
	
aritmetica:
	addi $8 $0 3
	add $2 $4 $5
	add $2 $2 $6
	div $2 $8
	mflo $2
	jr $31