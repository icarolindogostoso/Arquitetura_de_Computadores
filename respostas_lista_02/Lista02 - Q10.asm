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
	add $11 $8 $9
	add $11 $11 $10
	addi $12 $0 3
	div $11 $12
	mflo $13 # parte inteira
	mfhi $14
	addi $15 $0 10
	mul $14 $14 $15
	div $14 $12
	mflo $14
	addi $15 $0 5
	sub $16 $14 $15
	srl $16 $16 31
	beq $16 $0 arredonda
	j mostrar
arredonda:
	addi $13 $13 1
	add $14 $0 $0
mostrar:
	add $4 $13 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	add $2 $0 11
	syscall
	add $4 $14 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall