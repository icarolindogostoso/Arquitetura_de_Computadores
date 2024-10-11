main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal fator
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	
fator:
	addi $25 $0 -1 # maior
	addi $8 $0 2
primeiro_loop:
	div $4 $8
	mflo $10
	mfhi $9
	bne $9 $0 fim_primeiro_loop
	add $25 $8 $0
	add $4 $10 $0
	j primeiro_loop
fim_primeiro_loop:
	addi $8 $0 3 # i
segundo_laco:
	mul $9 $8 $8
	beq $9 $4 fim_segundo_laco
	slt $9 $9 $4
	beq $9 $0 fim_segundo_laco
terceiro_laco:
	div $4 $8
	mflo $10
	mfhi $9
	bne $9 $0 fim_terceiro_laco
	add $25 $8 $0
	add $4 $10 $0
	j terceiro_laco
fim_terceiro_laco:
	addi $8 $8 2
	j segundo_laco
fim_segundo_laco:
	add $8 $0 2
	slt $8 $8 $4
	bne $8 $0 maior
	j terminar
maior:
	add $25 $4 $0
	add $2 $25 $0
terminar:
	jr $31