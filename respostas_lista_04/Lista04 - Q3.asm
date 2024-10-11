.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal desenhalinha
	addi $2 $0 10
	syscall

desenhalinha:
	add $8 $4 $0
	add $9 $0 $0 # i
laco:
	beq $8 $9 fim_laco
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j laco
fim_laco:
	jr $31
