.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # nota 1
	addi $2 $0 5
	syscall
	add $9 $2 $0 # nota 2
	addi $2 $0 5
	syscall
	add $10 $2 $0 # nota 3
	addi $11 $0 1 # peso 1
	addi $12 $0 2 # peso 2
	addi $13 $0 3 # peso 3
	mul $14 $9 $12
	mul $15 $10 $13
	add $16 $8 $14
	add $16 $16 $15 # soma das notas multiplicadas pelos pesos
	add $17 $11 $12
	add $17 $17 $13 # soma dos pesos
	div $16 $17
	mflo $18 # media
	addi $19 $0 60
	sub $20 $18 $19
	srl $20 $20 31
	beq $20 $0 aprovado
	addi $21 $0 'R'
	j mostrar
aprovado:
	addi $21 $0 'A'
mostrar:
	add $4 $18 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $21 $0
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall 