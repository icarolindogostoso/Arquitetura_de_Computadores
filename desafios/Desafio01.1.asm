.text

main:
	addi $8 $0 1	# m = 1
	addi $9 $0 10 	# range
laco:
	beq $8 $9 fim_laco
	
	addi $10 $0 1	# n = 1
	addi $11 $0 11	# range
laco2:
	beq $10 $11 fim_laco2
	
	addi $12 $8 1
	addi $13 $8 2
	
	addi $25 $0 10
	
	
	div $8 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	div $10 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	mul $20 $8 $10
	
	div $20 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	# ----------------
	
	div $12 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	div $10 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	mul $20 $12 $10
	
	div $20 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	#---------------
	
	div $13 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	div $10 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	mul $20 $13 $10
	
	div $20 $25
	mfhi $23
	mflo $24
	
	add $4 $24 $0
	addi $2 $0 1
	syscall
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $10 $10 1
	j laco2
fim_laco2:

	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $8 $8 3	# m = m + 3
	j laco
fim_laco:
	addi $2 $0 10
	syscall