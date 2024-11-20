main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal triangulo
	addi $2 $0 10
	syscall

triangulo:
	add $25 $4 $0
	addi $8 $0 2
	mul $8 $4 $8 # maximo
	addi $9 $0 1 # i
	addi $16 $0 2
primeiro_laco:
	beq $9 $8 fim_primeiro_laco
	add $10 $0 $0 # j
	add $15 $9 $0
	slt $20 $25 $15
	bne $20 $0 subtrai
	j segundo_laco
subtrai:
	sub $15 $15 $16
	addi $16 $16 2
segundo_laco:
	beq $10 $15 fim_segundo_laco
	add $4 $0 '*'
	addi $2 $0 11
	syscall
	addi $10 $10 1
	j segundo_laco
fim_segundo_laco:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j primeiro_laco
fim_primeiro_laco:
	jr $31
