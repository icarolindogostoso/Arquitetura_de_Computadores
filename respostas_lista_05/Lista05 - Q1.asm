.text
main:
	lui $25 0x1001
	addi $8 $0 6 # range
	add $9 $0 $0 # i
loop:
	beq $9 $8 fim_loop # entrar valores digitados do teclado na memoria
	addi $2 $0 5
	syscall
	sw $2 0($25)
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	lw $8 -4($25) # soma dos valores dos indices 5, 1 e 0 do vetor
	lw $9 -20($25)
	add $8 $8 $9
	lw $9 -24($25)
	add $4 $8 $9
	addi $2 $0 1 
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $8 $0 100 # adicionando 100 a posicao 4
	sw $8 -12($25)
	
	addi $8 $0 6 # range
	add $9 $0 $0
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
loop_2:
	beq $9 $8 fim_loop_2
	addi $25 $25 -4
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j loop_2
fim_loop_2:
	addi $2 $0 10 
	syscall