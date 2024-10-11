.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal fatorial
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
	
fatorial:
	addi $8 $0 1 # i
	addi $4 $4 1
	addi $2 $0 1
laco:
	beq $8 $4 fim_laco
	mul $2 $2 $8
	addi $8 $8 1
	j laco
fim_laco:
	jr $31