.text
main:
	lui $25 0x1001
	addi $8 $0 10 # range
	add $9 $0 $0 # i
laco: 				# primeira entrada
	beq $8 $9 fim_laco
	addi $2 $0 5
	syscall
	sw $2 0($25)
	sw $2 80($25)
	addi $20 $20 1 # tamanho do vetor uniao
	addi $25 $25 4
	addi $9 $9 1
	j laco
fim_laco:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $24 $25 $0
	lui $25 0x1001
	addi $8 $0 10 # range
	add $9 $0 $0 # i
loop:
	beq $8 $9 fim_loop
	addi $2 $0 5
	syscall
	add $10 $0 $0
	lui $23 0x1001
loop2:
	beq $10 $20 adicionar
	lw $16 80($23)
	beq $2 $16 pular
	j continuacao
pular:
	j fim_loop2
continuacao:
	addi $23 $23 4
	addi $10 $10 1
	j loop2
adicionar:
	sw $2 80($24)
	addi $24 $24 4
	addi $20 $20 1
fim_loop2:
	sw $2 40($25)
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	lui $25 0x1001
	add $8 $20 $0
	add $9 $0 $0
repeticao:
	beq $8 $9 fim
	lw $4 80($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $9 $9 1
	j repeticao
fim:
	addi $2 $0 10
	syscall