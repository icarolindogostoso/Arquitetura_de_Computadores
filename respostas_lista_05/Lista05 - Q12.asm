.text
main:
	lui $25 0x1001
	lui $24 0x1001
	addi $15 $0 2
	add $16 $0 $0 # tamanho segunda lista
	addi $8 $0 10
	add $9 $0 $0
laco:
	beq $8 $9 fim_laco
	addi $2 $0 5
	syscall
	div $2 $15
	mfhi $17
	bne $17 $0 impar
	j continuacao
impar:
	sw $2 40($24)
	addi $16 $16 1
	addi $24 $24 4
	j continuacao
continuacao:
	sw $2 0($25)
	addi $25 $25 4
	addi $9 $9 1
	j laco
fim_laco:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
loop:
	beq $8 $9 fim
	beq $9 $16 proximo
	slt $20 $9 $16
	beq $20 $0 proximo
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
	j continuacao_
proximo:
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
continuacao_:
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim:
	addi $2 $0 10
	syscall