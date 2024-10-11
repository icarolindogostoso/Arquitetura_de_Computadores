main:
	addi $2 $0 5
	syscall
	add $4 $2 $0 # a
	addi $2 $0 5
	syscall
	add $5 $2 $0 # b
	jal mdc
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	
mdc:	
	add $4 $4 $0 # a
	add $5 $5 $0 # b
	beq $5 $0 fim_loop
	add $8 $5 $0 # temp = b
	div $4 $5
	mfhi $5 # b = a % b
	add $4 $8 $0 # a = temp
	j mdc
fim_loop:
	slt $8 $4 $0
	bne $8 $0 corrigir
	j continuacao
corrigir:
	addi $8 $0 -1
	mul $4 $4 $8
continuacao:
	add $2 $4 $0
	jr $31