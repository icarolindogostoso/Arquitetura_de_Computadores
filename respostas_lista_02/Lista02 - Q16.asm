.text
	addi $2 $0 5
	syscall
	add $8 $2 $0 # 1
	addi $2 $0 5
	syscall
	add $9 $2 $0 # 2
	addi $2 $0 5
	syscall
	add $10 $2 $0 # 3
	addi $2 $0 5
	syscall
	add $11 $2 $0 # 4
	addi $2 $0 5
	syscall
	add $12 $2 $0 # 5
	addi $2 $0 5
	syscall
	add $13 $2 $0 # 6
	addi $2 $0 5
	syscall
	add $14 $2 $0 # 7
	addi $2 $0 5
	syscall
	add $15 $2 $0 # 8
	addi $2 $0 5
	syscall
	add $16 $2 $0 # 9
	
	addi $18 $0 10
	mul $17 $18 $8
	addi $18 $0 9
	mul $18 $18 $9
	add $17 $17 $18
	addi $18 $0 8
	mul $18 $18 $10
	add $17 $17 $18
	addi $18 $0 7
	mul $18 $18 $11
	add $17 $17 $18
	addi $18 $0 6
	mul $18 $18 $12
	add $17 $17 $18
	addi $18 $0 5
	mul $18 $18 $13
	add $17 $17 $18
	addi $18 $0 4
	mul $18 $18 $14
	add $17 $17 $18
	addi $18 $0 3
	mul $18 $18 $15
	add $17 $17 $18
	addi $18 $0 2
	mul $18 $18 $16
	add $17 $17 $18
	
	addi $20 $0 11
	div $17 $20
	mflo $18
	mul $18 $18 $20
	sub $18 $17 $18
	
	addi $21 $0 2
	sub $19 $18 $21
	srl $22 $19 31
	bne $22 $0 menor_2
	sub $17 $20 $18 # primeiro digito
	j busca_segundo_digito
menor_2:
	addi $17 $0 0 # primeiro digito
	j busca_segundo_digito
busca_segundo_digito:
	addi $20 $0 11
	mul $18 $20 $8
	addi $20 $0 10
	mul $19 $20 $9
	add $18 $18 $19
	addi $20 $0 9
	mul $19 $20 $10
	add $18 $18 $19
	addi $20 $0 8
	mul $19 $20 $11
	add $18 $18 $19
	addi $20 $0 7
	mul $19 $20 $12
	add $18 $18 $19
	addi $20 $0 6
	mul $19 $20 $13
	add $18 $18 $19
	addi $20 $0 5
	mul $19 $20 $14
	add $18 $18 $19
	addi $20 $0 4
	mul $19 $20 $15
	add $18 $18 $19
	addi $20 $0 3
	mul $19 $20 $16
	add $18 $18 $19
	addi $20 $0 2
	mul $19 $20 $17
	add $18 $18 $19
	
	addi $25 $0 11
	div $18 $25
	mflo $19
	mul $19 $19 $25
	sub $19 $18 $19
	
	addi $24 $0 2
	sub $20 $19 $24
	srl $20 $20 31
	bne $20 $0 outro_menor_2
	sub $18 $25 $19
	j mostrar
outro_menor_2:
	addi $18 $0 0
	j mostrar
mostrar:
	add $4 $17 $0
	addi $2 $0 1
	syscall
	add $4 $18 $0
	add $2 $0 1
	syscall
fim:
	add $2 $0 10
	syscall