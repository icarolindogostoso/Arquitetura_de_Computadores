.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 10
	div $2 $8
	mfhi $9
	mflo $10
	div $10 $8
	mfhi $10
	mflo $11
	div $11 $8
	mfhi $11
	mflo $12
	
	addi $13 $0 32
	addi $14 $0 16
	sub $15 $0 $12
	srl $15 $15 31
	mul $14 $14 $15
	add $4 $13 $14
	add $4 $4 $12
	addi $2 $0 11
	syscall
	
	addi $13 $0 32
	addi $14 $0 16
	sub $15 $0 $11
	srl $15 $15 31
	mul $14 $14 $15
	add $4 $13 $14
	add $4 $4 $11
	addi $2 $0 11
	syscall
	
	addi $13 $0 32
	addi $14 $0 16
	sub $15 $0 $10
	srl $15 $15 31
	mul $14 $14 $15
	add $4 $13 $14
	add $4 $4 $10
	addi $2 $0 11
	syscall
	
	addi $13 $0 32
	addi $14 $0 16
	sub $15 $0 $9
	srl $15 $15 31
	mul $14 $14 $15
	add $4 $13 $14
	add $4 $4 $9
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall