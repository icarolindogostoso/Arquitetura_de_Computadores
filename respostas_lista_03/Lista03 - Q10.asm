.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # primeiro numero
	addi $2 $0 5
	syscall
	add $9 $2 $0 # segundo numero
loop:
	beq $9 $0 mostrar
	div $8 $9
	mflo $10
	mul $10 $10 $9
	sub $11 $8 $10
	add $8 $9 $0
	add $9 $11 $0
	j loop
mostrar:
	add $4 $8 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
