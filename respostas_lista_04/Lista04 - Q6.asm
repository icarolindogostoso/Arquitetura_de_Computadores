.text
main:
	addi $2 $0 5
	syscall
	add $4 $2 $0 # hora
	addi $2 $0 5
	syscall
	add $5 $2 $0 # minutos
	addi $2 $0 5
	syscall
	add $6 $2 $0 # segundos
	jal converte
	add $4 $2 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall

converte:
	addi $8 $0 60
	mul $9 $8 $8
	mul $4 $4 $9
	mul $5 $5 $8
	add $2 $4 $5
	add $2 $2 $6
	jr $31