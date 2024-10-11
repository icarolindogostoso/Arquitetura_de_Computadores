.text
main:
	add $8 $0 $0 # i
	addi $9 $0 10
	add $10 $10 $0 # soma
loop:
	beq $8 $9 mostrar
	addi $2 $0 5
	syscall
	add $10 $10 $2
	addi $8 $8 1
	j loop
mostrar:
	add $4 $10 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall