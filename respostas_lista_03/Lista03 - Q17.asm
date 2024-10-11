.text
main:
	addi $25 $0 10
	addi $8 $0 1
	addi $10 $0 1000
primeiro_laco:
	beq $8 $10 fim_primeiro_laco
	addi $9 $0 1
segundo_laco:
	beq $9 $10 fim_segundo_laco
	mul $11 $8 $9
	add $12 $11 $0 # copia do numero
	add $13 $0 $0 # numero que vai ser invertido
terceiro_laco:
	beq $12 $0 fim_terceiro_laco
	slt $14 $0 $12 # zero < numero
	beq $0 $14 fim_terceiro_laco
	div $12 $25
	mfhi $15 # resto da divisao
	mflo $12 # copia do numero inteiro agora sem o ultimo termo
	mul $13 $13 $25
	add $13 $13 $15 # adiciona ao numero invertido o ultimo termo
	j terceiro_laco
fim_terceiro_laco:
	beq $11 $13 palindromo
	j continuacao
palindromo:
	add $4 $8 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	add $4 $11 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
continuacao:
	addi $9 $9 1
	j segundo_laco
fim_segundo_laco:
	addi $8 $8 1
	j primeiro_laco
fim_primeiro_laco:
	addi $2 $0 10
	syscall
