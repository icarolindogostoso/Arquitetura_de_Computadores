.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	addi $2 $0 5
	syscall
	add $5 $2 $0
	addi $2 $0 5
	syscall
	add $6 $2 $0
	jal conta
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	
conta:
	mul $2 $4 $5
	add $2 $2 $6
	jr $31