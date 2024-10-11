.data
.word 1,1,2,3,3,4,5,5,6,7
.text
main:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
loop:
	beq $8 $9 fim_loop
	lw $10 0($25)
	addi $11 $9 1
	addi $24 $25 4
loop2:
	beq $11 $8 fim_loop2
	lw $12 0($24)
	beq $12 $10 iguais
	j continuacao
iguais:
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j fim_loop2
continuacao:
	addi $24 $24 4
	addi $11 $11 1
	j loop2
fim_loop2:
	add $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $2 $0 10
	syscall