.text
main:
	addi $2 $0 5
	syscall
	addi $8 $0 2
	div $2 $8
	mfhi $9
	beq $9 $0 eh_par
	j laço
eh_par:
	add $10 $10 $2
laço:
	bne $0 $2 main
mostrar:
	add $4 $10 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall
