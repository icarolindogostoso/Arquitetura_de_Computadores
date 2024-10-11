.text
main:
	addi $2 $0 5
	syscall
	addi $8 $2 1 # n + 1
	add $9 $0 $0 # i
	addi $20 $0 1
pao:
	beq $9 $8 fim_pao
	add $10 $0 $0 # j
bosta:
	beq $10 $9 fim_bosta
	add $4 $20 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $20 $20 1
	addi $10 $10 1
	j bosta
fim_bosta:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j pao
fim_pao:
	addi $2 $0 10
	syscall