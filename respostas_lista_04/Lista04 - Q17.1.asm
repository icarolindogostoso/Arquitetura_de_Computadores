.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal piramide
	addi $2 $0 10
	syscall

piramide:
	add $25 $4 $0
	add $8 $0 $0 #i
	add $9 $25 $0 # range
	addi $24 $0 2
	add $19 $25 $25
	div $19 $24
	mflo $23
	add $23 $23 $0 # soma
	sub $22 $23 $0 # subtracao
laco:
	beq $8 $9 fim_laco
	addi $10 $0 1 # j
	add $11 $25 $25 # range
segundo_laco:
	beq $10 $11 fim_segundo_laco
	beq $10 $22 passou
	slt $21 $22 $10
	bne $21 $0 passou
	j continuacao
passou:
	slt $21 $23 $10
	beq $21 $0 asterisco
	j continuacao
asterisco:
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	j continuacao2
continuacao:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
continuacao2:
	addi $10 $10 1
	j segundo_laco
fim_segundo_laco:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $8 $8 1
	addi $22 $22 -1
	addi $23 $23 1
	j laco
fim_laco:
	jr $31