.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # n
	add $9 $0 $0 # i
loop:
	beq $9 $8 fim
	addi $2 $0 5
	syscall
	add $10 $2 $0 # x
	addi $2 $0 5
	syscall
	add $11 $2 $0 # y
	beq $10 $0 x_igual_zero
	beq $11 $0 y_igual_zero
	slt $12 $0 $11
	bne $12 $0 y_maior_zero
	slt $12 $10 $0
	bne $12 $0 x_menor_zero
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
x_menor_zero:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	addi $4 $0 'O'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
y_maior_zero:
	slt $12 $0 $10
	bne $12 $0 x_maior_zero
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	addi $4 $0 'O'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
x_maior_zero:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	addi $4 $0 'E'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
x_igual_zero:
	beq $11 $0 y_igual_zero
	addi $4 $0 'D'
	addi $2 $0 11
	syscall
	addi $4 $0 'V'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
y_igual_zero:
	addi $4 $0 'D'
	addi $2 $0 11
	syscall
	addi $4 $0 'V'
	addi $2 $0 11
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	j continuacao
continuacao:
	addi $9 $9 1
	j loop
fim:
	addi $2 $0 10
	syscall