.text
main:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
laco:
	beq $8 $9 fim_laco
	addi $2 $0 5
	syscall
	addi $10 $0 2
laco2:
	beq $10 $2 primo
	slt $11 $2 $10
	bne $11 $0 nao_primo
	div $2 $10
	mfhi $15
	beq $15 $0 nao_primo
	addi $10 $10 1
	j laco2
nao_primo:
	j continuacao
primo:
	sw $2 0($25)
	sw $9 40($25)
	addi $20 $20 1 # tamanho do vetor primos
	addi $25 $25 4
continuacao:
	addi $9 $9 1
	j laco
fim_laco:
	lui $25 0x1001
	add $8 $20 $0
	add $9 $0 $0
loop:
	beq $9 $8 fim_loop
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	lw $4 40($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $2 $0 10
	syscall