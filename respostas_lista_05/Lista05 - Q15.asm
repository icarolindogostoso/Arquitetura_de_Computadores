.data
.word 1,10,2,9,3,8,4,7,5,6
.text
main:
	addi $8 $0 10 # n
	addi $9 $8 -1 # range = n - 1
	add $10 $0 $0 # i
laco:
	beq $9 $10 fim_laco # for (int i = 0; i < n - 1; i++)
	sub $11 $8 $9 # range = n - i
	addi $11 $8 -1 # range = n - i - 1
	add $12 $0 $0 # j
	lui $25 0x1001
laco2:
	beq $11 $12 fim_laco2 # for (int j = 0; j < n - i - 1; j++)
	lw $15 0($25) # array[j]
	lw $16 4($25) # array[j + 1]
	slt $20 $15 $16
	beq $20 $0 correto
	j continuacao
correto:
	sw $15 4($25)
	sw $16 0($25)
	j continuacao
continuacao:
	addi $25 $25 4
	addi $12 $12 1
	j laco2
fim_laco2:
	addi $10 $10 1
	j laco
fim_laco:
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
outro_laco:
	beq $8 $9 fim_outro_laco
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $9 $9 1
	j outro_laco
fim_outro_laco:
	addi $8 $0 10 # n
	addi $9 $8 -1 # range = n - 1
	add $10 $0 $0 # i
laco3:
	beq $9 $10 fim_laco3 # for (int i = 0; i < n - 1; i++)
	sub $11 $8 $9 # range = n - i
	addi $11 $8 -1 # range = n - i - 1
	add $12 $0 $0 # j
	lui $25 0x1001
laco4:
	beq $11 $12 fim_laco4 # for (int j = 0; j < n - i - 1; j++)
	lw $15 0($25) # array[j]
	lw $16 4($25) # array[j + 1]
	slt $20 $16 $15
	beq $20 $0 correto_
	j continuacao_
correto_:
	sw $15 4($25)
	sw $16 0($25)
	j continuacao_
continuacao_:
	addi $25 $25 4
	addi $12 $12 1
	j laco4
fim_laco4:
	addi $10 $10 1
	j laco3
fim_laco3:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	lui $25 0x1001
	addi $8 $0 10
	add $9 $0 $0
outro_laco2:
	beq $8 $9 fim_outro_laco2
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $9 $9 1
	j outro_laco2
fim_outro_laco2:
	addi $2 $0 10
	syscall