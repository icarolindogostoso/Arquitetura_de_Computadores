.text
	lui $25 0x1001
	addi $8 $0 8 # range
	add $9 $0 $0 # i
loop:
	beq $8 $9 fim_loop
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
	addi $2 $0 5
	syscall
	add $8 $2 $0 # valor 1
	addi $2 $0 5
	syscall
	add $9 $2 $0 # valor 2
	addi $10 $0 4
	mul $8 $8 $10
	mul $9 $9 $10
	lui $25 0x1001
	add $25 $25 $8
	lw $8 0($25)
	lui $25 0x1001
	add $25 $25 $9
	lw $9 0($25)
	add $4 $8 $9
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall