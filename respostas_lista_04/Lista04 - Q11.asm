main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	addi $2 $0 5
	syscall
	add $5 $2 $0
	jal exponencial
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall

exponencial:
	beq $5 $0 zero
	addi $8 $0 1 # i
	add $9 $4 $0
loop:
	beq $8 $5 resultado
	mul $4 $4 $9
	addi $8 $8 1
	j loop	
resultado:
	add $2 $4 $0
	jr $31
zero:
	addi $2 $0 1
	jr $31