.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # quantidade de vezes que vai ser repetido
	add $9 $0 $0 # i
loop:
	slt $10 $8 $9 # quando passar vai aparecer 1
	bne $10 $0 fim
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 2
	j loop
fim:
	addi $2 $0 10
	syscall
	