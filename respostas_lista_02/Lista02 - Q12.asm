.text
	addi $2 $0 5
	syscall
	add $8 $2 $0 # primeira nota
	addi $2 $0 5
	syscall
	add $9 $2 $0 # segunda nota
	addi $2 $0 5
	syscall
	add $10 $2 $0 # faltas
	addi $11 $0 2
	addi $12 $0 3
	mul $13 $8 $11
	mul $14 $9 $12
	add $13 $13 $14
	add $14 $11 $12
	div $13 $14
	mflo $13 # media
	addi $14 $0 5
	div $10 $14
	mflo $14 # penalidade
	addi $15 $0 10
	mul $15 $14 $15
	sub $15 $13 $15 # media final
	add $4 $13 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $14 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $15 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall