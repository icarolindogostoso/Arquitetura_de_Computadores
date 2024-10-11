main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal soma_termos
	addi $8 $0 -1
	beq $2 $8 invalido_
	add $4 $2 $0
	addi $2 $0 1
	syscall
	j fim
invalido_:
	addi $4 $0 'I'
	addi $2 $0 11
	syscall
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	addi $4 $0 'V'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall

soma_termos:
	addi $8 $0 -1
	mul $8 $4 $8
	srl $8 $8 31
	beq $8 $0 invalido
	add $2 $0 $0 # soma
	addi $9 $0 10
loop:
	div $4 $9
	mfhi $11
	mflo $4
	add $2 $2 $11
	bne $4 $0 loop
	jr $31
invalido:
	addi $2 $0 -1
	jr $31