.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # dia
	addi $2 $0 5
	syscall
	add $9 $2 $0 # mes
	addi $2 $0 5
	syscall
	add $10 $2 $0 # ano
	addi $11 $0 31
	addi $12 $0 30
	addi $13 $0 29
	addi $14 $0 28
	addi $15 $0 12
	addi $16 $0 1
	beq $9 $16 janeiro
	addi $17 $0 2
	beq $9 $17 fevereiro
	addi $17 $0 3
	beq $9 $17 marco
	addi $17 $0 4
	beq $9 $17 meses_fim_30
	addi $17 $0 5
	beq $9 $17 meses_fim_31
	addi $17 $0 6
	beq $9 $17 meses_fim_30
	addi $17 $0 7
	beq $9 $17 meses_fim_31
	addi $17 $0 8
	beq $9 $17 meses_fim_31
	addi $17 $0 9
	beq $9 $17 meses_fim_30
	addi $17 $0 10
	beq $9 $17 meses_fim_31
	addi $17 $0 11
	beq $9 $17 meses_fim_30
	addi $17 $0 12
	beq $9 $17 dezembro
janeiro:
	beq $8 $11 dia_depois
	beq $8 $16 dia_antes_janeiro
	j dias_entre
fevereiro:
	addi $17 $0 4
	div $10 $17
	mfhi $17
	beq $17 $0 fevereiro_bissexto
	beq $8 $14 dia_depois
	beq $8 $16 dia_antes_mes_30
	j dias_entre
fevereiro_bissexto:
	beq $8 $13 dia_depois
	beq $8 $16 dia_antes_mes_30
	j dias_entre
marco:
	beq $8 $11 dia_depois
	beq $8 $16 dia_antes_marco
	j dias_entre
meses_fim_30:
	beq $8 $12 dia_depois
	beq $8 $16 dia_antes_mes_30
	j dias_entre
meses_fim_31:
	beq $8 $11 dia_depois
	beq $8 $16 dia_antes_mes_31
	j dias_entre
dezembro:
	beq $8 $11 dia_depois_dezembro
	beq $8 $16 dia_antes_mes_31
	j dias_entre
dia_depois:
	add $20 $9 $16 # mes depois
	addi $21 $0 1 # dia depois
	add $22 $10 $0 # ano depois
	add $23 $9 $0 # mes antes
	sub $24 $8 $16 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
dia_depois_dezembro:
	add $20 $0 1 # mes depois
	addi $21 $0 1 # dia depois
	add $22 $10 $16 # ano depois
	add $23 $9 $0 # mes antes
	sub $24 $8 $16 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
dia_antes_janeiro:
	add $20 $9 $0 # mes depois
	add $21 $8 $16 # dia depois
	add $22 $10 $0 # ano depois
	addi $23 $0 12 # mes antes
	addi $24 $0 31 # dia antes
	sub $25 $10 $16 # ano antes
	j mostrar
dia_antes_marco:
	add $20 $9 $0 # mes depois
	add $21 $8 $16 # dia depois
	add $22 $10 $0 # ano depois
	sub $23 $9 $16 # mes antes
	addi $17 $0 4
	div $10 $17
	mfhi $17
	beq $17 $0 marco_bissexto
	addi $24 $0 28 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
marco_bissexto:
	addi $24 $0 29 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
dia_antes_mes_30:
	add $20 $9 $0 # mes depois
	add $21 $8 $16 # dia depois
	add $22 $10 $0 # ano depois
	sub $23 $9 $16 # mes antes
	addi $24 $0 31 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
dia_antes_mes_31:
	add $20 $9 $0 # mes depois
	add $21 $8 $16 # dia depois
	add $22 $10 $0 # ano depois
	sub $23 $9 $16 # mes antes
	addi $24 $0 30 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
dias_entre:
	add $20 $9 $0 # mes depois
	add $21 $8 $16 # dia depois
	add $22 $10 $0 # ano depois
	add $23 $9 $0 # mes antes
	sub $24 $8 $16 # dia antes
	add $25 $10 $0 # ano antes
	j mostrar
mostrar:
	addi $14 $0 10
	div $21 $14
	mflo $4
	addi $2 $0 1
	syscall
	mfhi $4
	addi $2 $0 1
	syscall
	
	addi $4 $0 '/'
	addi $2 $0 11
	syscall
	
	div $20 $14
	mflo $4
	addi $2 $0 1
	syscall
	mfhi $4
	addi $2 $0 1
	syscall
	
	addi $4 $0 '/'
	addi $2 $0 11
	syscall
	
	div $22 $14
	mfhi $16 #8
	mflo $17
	div $17 $14
	mfhi $17 #0
	mflo $18
	div $18 $14
	mfhi $18 #0
	mflo $4 #2
	addi $2 $0 1
	syscall
	add $4 $18 $0
	addi $2 $0 1
	syscall
	add $4 $17 $0
	addi $2 $0 1
	syscall
	add $4 $16 $0
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	div $24 $14
	mflo $4
	addi $2 $0 1
	syscall
	mfhi $4
	addi $2 $0 1
	syscall
	
	addi $4 $0 '/'
	addi $2 $0 11
	syscall
	
	div $23 $14
	mflo $4
	addi $2 $0 1
	syscall
	mfhi $4
	addi $2 $0 1
	syscall
	
	addi $4 $0 '/'
	addi $2 $0 11
	syscall
	
	div $25 $14
	mfhi $16 #8
	mflo $17
	div $17 $14
	mfhi $17 #0
	mflo $18
	div $18 $14
	mfhi $18 #0
	mflo $4 #2
	addi $2 $0 1
	syscall
	add $4 $18 $0
	addi $2 $0 1
	syscall
	add $4 $17 $0
	addi $2 $0 1
	syscall
	add $4 $16 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall