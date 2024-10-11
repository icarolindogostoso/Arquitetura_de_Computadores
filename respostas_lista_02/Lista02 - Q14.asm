.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $2 $0 5
	syscall
	add $9 $2 $0
	addi $14 $0 10
	div $8 $14
	mfhi $16 #8
	mflo $17
	div $17 $14
	mfhi $17 #0
	mflo $18
	div $18 $14
	mfhi $18 #0
	mflo $4 #2
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $18 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $17 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $16 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	div $9 $14
	mfhi $16 #8
	mflo $17
	div $17 $14
	mfhi $17 #0
	mflo $18
	div $18 $14
	mfhi $18 #0
	mflo $4 #2
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $18 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $17 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $16 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall