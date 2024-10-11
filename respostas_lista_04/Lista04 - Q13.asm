main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	addi $2 $0 5
	syscall
	add $5 $2 $0
	addi $2 $0 12
	syscall
	add $6 $2 $0
	jal operacao
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

operacao:
	addi $8 $0 '+'
	addi $9 $0 '-'
	addi $10 $0 '*'
	beq $6 $8 adicao
	beq $6 $9 subtracao
	beq $6 $10 multiplicacao
	div $4 $5
	mflo $2
	jr $31
adicao:
	add $2 $4 $5
	jr $31
subtracao:
	sub $2 $4 $5
	jr $31
multiplicacao:
	mul $2 $4 $5
	jr $31