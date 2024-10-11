.data
.word -5,-4,-3,-2,-1,0,1,2,3,4
.text
main:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
	add $10 $0 $0 # quantos negativos
	add $11 $0 $0 # soma positivos
loop:
	beq $8 $9 fim_loop
	lw $12 0($25)
	slt $13 $12 $0
	bne $13 $0 negativo
	add $11 $11 $12
	j continuacao
negativo:
	addi $10 $10 1
continuacao:
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $11 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	