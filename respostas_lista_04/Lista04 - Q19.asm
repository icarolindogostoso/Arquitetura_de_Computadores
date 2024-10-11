.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0 
	jal nibble
	add $8 $2 $0
	add $9 $3 $0
	add $4 $8 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall

nibble:
	add $8 $4 $0
	addi $9 $0 15
	and $2 $8 $9
	addi $10 $0 240
	and $3 $8 $10
	addi $11 $0 16
	div $3 $11
	mflo $3
	jr $31