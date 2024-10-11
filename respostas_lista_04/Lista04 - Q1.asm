.text
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal dobro
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	
dobro:
	add $2 $4 $0
	add $2 $2 $2
	jr $31
