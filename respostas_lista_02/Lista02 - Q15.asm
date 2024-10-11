.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # dia
	addi $2 $0 5
	syscall
	add $9 $2 $0 # mes
	addi $2 $0 5
	syscall
	add $10 $2 $0 # ano
	addi $11 $0 3
	sub $12 $9 $11
	srl $12 $12 31
	bne $12 $0 mes_maior_3
	j continuacao
mes_maior_3:
	addi $9 $9 12 # mes
	addi $10 $10 -1 # ano
	j continuacao
continuacao:
	addi $11 $0 100
	div $10 $11
	mfhi $11
	mflo $12  
	
	addi $14 $9 1 # a
	addi $15 $0 13
	mul $14 $14 $15 # (13 * ( mes + 1 )) a
	
	addi $20 $0 4
	div $11 $20
	mflo $15 # k // 4
	div $12 $20
	mflo $16 # j // 4
	addi $20 $0 2
	mul $17 $20 $12 # 2 * j
	addi $20 $0 5
	div $14 $20
	mflo $18 # (13 * ( mes + 1 )) // 5
	add $18 $18 $11
	add $18 $18 $15
	add $18 $18 $16
	sub $18 $18 $17
	add $18 $18 $8
	addi $20 $0 7
	div $18 $20
	mfhi $19 # dia da semana
	beq $19 $0 sabado
	addi $20 $0 1
	beq $19 $20 domingo
	addi $20 $0 2
	beq $19 $20 segunda
	addi $20 $0 3
	beq $19 $20 terca
	addi $20 $0 4
	beq $19 $20 quarta
	addi $20 $0 5
	beq $19 $20 quinta
	addi $20 $0 6
	beq $19 $20 sexta
sabado:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	addi $4 $0 'A'
	addi $2 $0 11
	syscall
	addi $4 $0 'B'
	addi $2 $0 11
	syscall
	j fim
domingo:
	addi $4 $0 'D'
	addi $2 $0 11
	syscall
	addi $4 $0 'O'
	addi $2 $0 11
	syscall
	addi $4 $0 'M'
	addi $2 $0 11
	syscall
	j fim
segunda:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	addi $4 $0 'G'
	addi $2 $0 11
	syscall
	j fim
terca:
	addi $4 $0 'T'
	addi $2 $0 11
	syscall
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	addi $4 $0 'R'
	addi $2 $0 11
	syscall
	j fim
quarta:
	addi $4 $0 'Q'
	addi $2 $0 11
	syscall
	addi $4 $0 'U'
	addi $2 $0 11
	syscall
	addi $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim
quinta:
	addi $4 $0 'Q'
	addi $2 $0 11
	syscall
	addi $4 $0 'U'
	addi $2 $0 11
	syscall
	addi $4 $0 'I'
	addi $2 $0 11
	syscall
	j fim
sexta:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall