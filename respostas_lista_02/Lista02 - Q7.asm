.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 4
	div $2 $8
	mfhi $9
	beq $9 $0 bissexto
	add $4 $0 'N'
	j mostrar
bissexto:
	add $4 $0 'S'
mostrar:
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall