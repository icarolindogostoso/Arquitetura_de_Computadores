.text
main:
	addi $8 $0 1	# i
	addi $9 $0 10
laco1:
	beq $8 $9 fim_laco1
	
	addi $10 $0 1	# j
	addi $11 $0 11
laco2:
	beq $10 $11 fim_laco2

	addi $12 $0 0	# k
	addi $13 $0 3
laco3:
	beq $12 $13 fim_laco3
	
	add $20 $8 $12
	add $6 $20 $0
	
	jal numero
	jal espaco
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	add $6 $10 $0
	
	jal operacao
	jal numero
	jal espaco
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	jal espaco
	
	mul $20 $20 $10
	add $6 $20 $0
	
	jal operacao
	jal numero
	jal espaco
	jal espaco
	jal espaco
	
	addi $12 $12 1
	j laco3
	
fim_laco3:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall

	addi $10 $10 1
	j laco2
	
fim_laco2:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
			
	addi $8 $8 3
	j laco1
fim_laco1:

	addi $8 $0 11
	addi $9 $0 1
laco4:
	beq $8 $9 fim_laco4
	
	addi $6 $0 10
	
	jal operacao
	jal numero
	jal espaco
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	add $6 $9 $0
	
	jal operacao
	jal numero
	jal espaco
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	jal espaco
	
	add $10 $0 10
	mul $6 $10 $9
	
	jal operacao
	jal numero
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $9 $9 1
	j laco4
fim_laco4:
	addi $2 $0 10
	syscall

operacao:
	add $25 $0 10
	div $6 $25
	mflo $24
	beq $24 $0 zero
	jr $31
	
zero:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31
	
espaco:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31

numero:
	add $4 $6 $0
	addi $2 $0 1
	syscall
	jr $31