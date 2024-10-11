.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # soma
	addi $25 $0 2
	div $8 $25
	mflo $24
	addi $9 $0 1 # a
primeiro_laco:
	beq $9 $24 fim_do_primeiro_laco
	add $10 $9 $0 # b começando de a
	sub $20 $8 $9 # vai terminar em (soma - a)
segundo_laco:
	beq $10 $20 fim_do_segundo_laco # enquanto b é menor que (soma - a), vai ficar nesse laço
	add $18 $10 $9
	sub $18 $8 $18
	mul $15 $9 $9
	mul $16 $10 $10
	mul $17 $18 $18
	add $16 $16 $15
	bne $16 $17 continuacao_segundo_laco
	addi $4 $0 'a'
	addi $2 $0 11
	syscall
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $4 $0 'b'
	addi $2 $0 11
	syscall
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	add $4 $10 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $4 $0 'c'
	addi $2 $0 11
	syscall
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	add $4 $18 $0
	addi $2 $0 1
	syscall
continuacao_segundo_laco:
	addi $10 $10 1
	j segundo_laco
fim_do_segundo_laco:
	addi $9 $9 1
	j primeiro_laco
fim_do_primeiro_laco:
	addi $2 $0 10
	syscall
