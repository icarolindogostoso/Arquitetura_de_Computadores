.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	add $9 $2 $0
	
	addi $10 $0 10
	div $8 $10
	mfhi $20 # 8
	mflo $8
	div $8 $10
	mfhi $21 # 0
	mflo $8
	div $8 $10
	mfhi $22 # 0
	mflo $23 # 2

	beq $23 $0 esp
	add $4 $9 $0
	addi $2 $0 1
	syscall
	j fim	
esp:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $22 $0 esp2
	add $4 $9 $0
	addi $2 $0 1
	syscall
	j fim
	
esp2:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $21 $0 esp3
	add $4 $9 $0
	addi $2 $0 1
	syscall
	j fim
	
esp3:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $9 $0
	addi $2 $0 1
	syscall

fim:
	addi $2 $0 10
	syscall
