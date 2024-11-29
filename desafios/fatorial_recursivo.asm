.text
main:
	addi $2 $0 5
	syscall
	
	add $4 $2 $0
	jal fat
	add $4 $2 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall
	
fat:
	sw $31 0($29)
	addi $29 $29 -4
	addi $2 $0 1
	
	beq $4 $2 certo
	
	sw $4 0($29)
	addi $29 $29 -4
	
	addi $4 $4 -1
	
	jal fat
	
	addi $29 $29 4
	lw $4 0($29)
	
	mul $2 $2 $4
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31
	
certo:
	addi $29 $29 4
	lw $31 0($29)
	jr $31