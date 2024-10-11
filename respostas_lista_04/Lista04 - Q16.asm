.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0
	jal primos
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10 
	syscall
	
primos:
	add $20 $31 $0 # copia return
	add $8 $0 2 # i
	add $9 $4 $0 # range
laco:
	beq $8 $9 fim_laco
	add $4 $8 $0
	jal calcula_primo
	beq $2 $0 falso
	addi $25 $25 1
falso:
	addi $8 $8 1
	j laco
fim_laco:
	add $2 $25 $0
	add $31 $20 $0 # return
	jr $31
	
calcula_primo:
	addi $15 $0 2 # i
outro_laco:
	beq $15 $4 fim_outro_laco
	div $4 $15
	mfhi $16
	beq $16 $0 nao
	j continuacao
nao:
	add $2 $0 $0
	jr $31
continuacao:
	addi $15 $15 1
	j outro_laco
fim_outro_laco:
	addi $2 $0 1
	jr $31