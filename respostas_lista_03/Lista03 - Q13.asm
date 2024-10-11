.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0
	addi $8 $8 1
	addi $9 $0 1 # i
	add $10 $0 1 # fatorial
loop:
	beq $8 $9 mostrar
	mul $10 $10 $9
	addi $9 $9 1
	j loop
mostrar:
	add $4 $10 $0
	addi $2 $0 1
	syscall
terminar:
	addi $2 $0 10
	syscall