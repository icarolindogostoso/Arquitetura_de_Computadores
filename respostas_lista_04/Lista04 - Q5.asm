.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal quadrado_perfeito
	bne $2 $0 sim_
	addi $4 $0 'n'
	addi $2 $0 11
	syscall
	j fim
sim_:
	addi $4 $0 'e'
	addi $2 $0 11
	syscall
	addi $4 $0 'h'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall

quadrado_perfeito:
	beq $4 $0 nao
	slt $8 $4 $0
	bne $8 $0 nao
	addi $8 $0 1
	beq $4 $8 sim
	add $8 $0 $0 # i
	addi $9 $0 2
	div $4 $9
	mflo $9 # range
	addi $9 $9 1
loop:
	beq $8 $9 nao
	mul $10 $8 $8
	beq $10 $4 sim
	addi $8 $8 1
	j loop
nao:
	add $2 $0 $0
	jr $31
sim:	
	addi $2 $0 1
	jr $31