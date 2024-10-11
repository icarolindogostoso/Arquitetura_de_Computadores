.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal floyd
	addi $2 $0 10
	syscall
	
floyd:
	addi $8 $4 1
	addi $9 $0 1 # i
	addi $25 $0 1
laco:
	beq $9 $8 fim_laco
	add $10 $0 $0 # j
segundo_laco:
	beq $10 $9 fim_segundo_laco
	add $4 $25 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $10 $10 1
	addi $25 $25 1
	j segundo_laco
fim_segundo_laco:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j laco
fim_laco:
	jr $31