.text
main:
	addi $2 $0 5
	syscall
	add $6 $2 $0
	jal triangulo
	addi $2 $0 10
	syscall
	
triangulo:
	sll $8 $6 1 # tamanho do triangulo -> 4
	addi $8 $8 -1
	add $9 $0 $0 # int i = 0
laco:
	beq $8 $9 fim_laco
	addi $10 $0 1 # int j = 1
	sll $11 $6 1 # largura do triangulo -> 4 * 2 = 8
laco2:	
	beq $10 $11 fim_laco2
	
	addi $20 $6 -1
	slt $21 $20 $9
	sub $22 $20 $9
	sll $22 $22 1
	mul $22 $22 $21
	add $23 $22 $9
	sub $12 $6 $23 # subtracao do pico do triangulo com o i (vai controlar a subida do triangulo)
	add $13 $6 $23 # adicao do pico do triangulo com i (vai controlar a descida do triangulo)
	slt $14 $10 $12 # conferindo se a posicao j que estamos faz parte do corpo do triangulo
	slt $15 $13 $10 # conferindo se a posicao j que estamos faz parte do corpo do triangulo
	add $16 $14 $15	# se a posicao que estamos estiver dentro do corpo do triangulo -> $16 = 0
	addi $17 $0 1
	slt $18 $16 $17 # confere se o numero que estamos é menor que 1, isto é, 0, se for $18 = 1
	addi $19 $0 10
	mul $19 $19 $18 # se for dentro do corpo do triangulo vai multiplicar 10 por 1 (o 10 vai existir)
	addi $4 $0 32
	add $4 $4 $19 # se a posicao que estivermos for no corpo do triangulo $4 = 42 (*), se nao = 32 ( )
	addi $2 $0 11 # print
	syscall
	addi $10 $10 1
	j laco2
fim_laco2:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j laco
fim_laco:
	jr $31
