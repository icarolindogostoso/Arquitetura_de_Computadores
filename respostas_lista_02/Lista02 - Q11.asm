.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # primeira nota
	addi $2 $0 5
	syscall
	add $9 $2 $0 # segunda nota
	addi $2 $0 5
	syscall
	add $10 $2 $0 # terceira nota
	beq $8 $9 nao
	beq $9 $10 nao
	sub $11 $8 $9
	srl $11 $11 31
	beq $11 $0 a_maior_b
	sub $11 $9 $10
	srl $11 $11 31
	beq $11 $0 sim_p
	j nao
a_maior_b:
	sub $11 $9 $10
	srl $11 $11 31
	bne $11 $0 sim_n
	j nao
sim_p:
	addi $4 $0 'P'
	addi $2 $0 11
	syscall
	addi $4 $0 '+'
	addi $2 $0 11
	syscall
	j fim
sim_n:
	addi $4 $0 'P'
	addi $2 $0 11
	syscall
	addi $4 $0 '-'
	addi $2 $0 11
	syscall
	j fim
nao:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall