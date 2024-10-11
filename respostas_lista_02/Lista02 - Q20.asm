.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # i
	addi $2 $0 5
	syscall
	add $9 $2 $0 # m
	addi $2 $0 5
	syscall
	add $10 $2 $0 # j
	
	div $8 $9
	mfhi $11 # i % m
	div $10 $9
	mfhi $12 # j % m
	beq $11 $12 sim
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	j fim
sim:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall