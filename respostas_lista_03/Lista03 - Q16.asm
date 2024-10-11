.text
main:
	addi $2 $0 5
	syscall
	addi $8 $2 1 # a + 1
	addi $15 $0 2
	beq $8 $15 eh_dois
	j nao_eh_dois
eh_dois:
	addi $20 $20 1
nao_eh_dois:
	addi $2 $0 5
	syscall
	add $9 $2 $0 # b
primeiro_laco:
	beq $8 $9 fim_primeiro_laco
	addi $10 $0 2 # j = 2 -> a + 1
segundo_laco:
	beq $10 $8 fim_segundo_laco
	div $8 $10
	mfhi $11 # b % j
	beq $11 $0 fim_segundo_laco
	addi $19 $8 -1
	beq $10 $19 eh_primo
	j nao_eh_primo
eh_primo:
	addi $20 $20 1
nao_eh_primo:
	addi $10 $10 1
	j segundo_laco
fim_segundo_laco:
	addi $8 $8 1
	j primeiro_laco
fim_primeiro_laco:
	add $4 $20 $0
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall
