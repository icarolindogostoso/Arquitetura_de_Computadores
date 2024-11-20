.text
main:
	addi $2 $0 5
	syscall
	add $6 $2 $0
	jal triangulo
	addi $2 $0 10
	syscall
	
triangulo:
	sll $9 $6 1 # range do laco -> for (int i = 1; i < 8; i++)
	addi $10 $0 1 # int i = 1
laco:
	beq $9 $10 fim_laco
	slt $15 $6 $10 # se 4 < $10 -> 1, senao -> 0
	sub $16 $6 $10	# subtracao dos valores
	sll $16 $16 1	# multiplicacao da subtracao por 2
	mul $16 $16 $15	# multiplicacao pelo slt, se o numero for maior que 4, vai existir, se nao, nao
	add $11 $10 $16 # subtracao do valor mutavel pela multiplicacao (sera o range do segundo laco)
	add $12 $0 $0
laco2:
	beq $11 $12 fim_laco2
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $12 $12 1
	j laco2
fim_laco2:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $10 $10 1
	j laco
fim_laco:
	jr $31
