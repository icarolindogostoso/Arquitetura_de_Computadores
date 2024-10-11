.text
main:
	# pascoa
	
	addi $2 $0 5 # ano           2008
	syscall
	addi $8 $0 19
	div $2 $8
	mflo $9
	mul $9 $9 $8
	sub $8 $2 $9 # ano MOD 19 = a (nao existe mais)         13
	
	addi $10 $0 100
	div $2 $10
	mflo $9 #  ano // 100 = b (nao existe mais)          20
	
	mul $10 $9 $10
	sub $10 $2 $10 # ano MOD 100 = c (nao existe mais)       8
	
	addi $12 $0 4
	div $9 $12
	mflo $11 # b // 4 = d (nao existe mais)           5
	
	mul $12 $12 $11
	sub $12 $9 $12 # b MOD 4 = e (nao existe mais)             0
	
	addi $13 $0 8
	add $13 $9 $13
	addi $14 $0 25
	div $13 $14
	mflo $13 # (b + 8) // 25 = f (nao existe mais)        1
	
	sub $13 $9 $13
	addi $13 $13 1
	addi $14 $0 3
	div $13 $14
	mflo $13 # (b - f + 1) // 3 = g (f nao exiset mais) (nao existe mais)               6
	
	addi $14 $0 19
	mul $14 $14 $8
	add $14 $14 $9
	sub $14 $14 $11
	sub $14 $14 $13
	addi $14 $14 15
	addi $15 $0 30
	div $14 $15
	mflo $16
	mul $16 $16 $15
	sub $9 $14 $16 # (19 × a + b - d - g + 15) MOD 30 = h (b, d e g nao existem mais)       1
	
	addi $14 $0 4
	div $10 $14
	mflo $11 # c // 4 = i (nao existe mais)                   2
	
	mul $14 $14 $11
	sub $13 $10 $14 # c MOD 4 = k (c nao existe mais)                  0
	
	addi $14 $0 2
	mul $15 $12 $14
	mul $16 $11 $14
	addi $17 $15 32
	add $17 $17 $16
	sub $17 $17 $9
	sub $17 $17 $13
	addi $14 $0 7
	div $17 $14
	mflo $15
	mul $15 $15 $14
	sub $10 $17 $15 # (32 + 2 × e + 2 × i - h - k) MOD 7 = L (e, i e k nao existem mais)               0
	
	addi $14 $0 11
	mul $15 $14 $9
	add $14 $14 $14
	mul $16 $14 $10
	add $8 $8 $15
	add $8 $8 $16
	addi $14 $0 451
	div $8 $14
	mflo $8 # (a + 11 × h + 22 × L) \ 451 = m (a nao existe mais)                      0
	
	addi $14 $0 7
	mul $15 $14 $8
	add $16 $9 $10
	sub $16 $16 $15
	addi $16 $16 114
	addi $14 $0 31
	div $16 $14
	mflo $12 #(h + L - 7 × m + 114) \ 31 = MES                         3
	
	mul $14 $12 $14
	sub $15 $16 $14
	addi $11 $15 1 # 1+ (h + L - 7 × m + 114)MOD 31 + 1 = DIA
	
	add $8 $11 $0 # dia
	add $9 $12 $0 # mes
	
	# carnaval
	
	addi $18 $0 3
	addi $11 $9 -1 # mes_carnaval
	beq $9 $18 marco
	addi $12 $0 47
	sub $12 $12 $8 # valor = 47 - dia
	addi $13 $0 31
	sub $12 $13 $12 # dia_carnaval = 28 - dia
	j cospus_christi
marco:
	addi $12 $0 47
	sub $12 $12 $8 # valor = 47 - dia
	addi $19 $0 4
	div $2 $19
	mfhi $13
	beq $13 $0 bissexto
	addi $13 $0 28
	sub $12 $13 $12 # dia_carnaval = 28 - dia
	j cospus_christi
bissexto:
	addi $13 $0 29
	sub $12 $13 $12 # dia_carnaval = 29 - dia
	
cospus_christi:
	
	addi $18 $0 3
	beq $9 $18 marco_
	addi $25 $0 30
	sub $15 $25 $8
	addi $25 $0 60
	sub $15 $25 $15
	addi $25 $0 31
	sub $15 $15 $25
	beq $15 $0 proximo_mes_
	add $14 $0 $15 # dia corpus christi
	addi $15 $9 2 # mes corpus christi
	j mostrar
proximo_mes_:
	sub $14 $25 $15 # dia corpus christi
	addi $15 $9 1 # mes corpus christi
	j mostrar
marco_:
	addi $25 $0 31
	sub $15 $25 $8
	addi $25 $0 60
	sub $15 $25 $15
	addi $25 $0 30
	sub $15 $15 $25
	beq $15 $0 proximo_mes
	add $14 $0 $15 # dia corpus christi
	addi $15 $9 2 # mes corpus christi
	j mostrar
proximo_mes:
	sub $14 $25 $15 # dia corpus christi
	addi $15 $9 1 # mes corpus christi
mostrar:
	addi $4 $0 'P'
	addi $2 $0 11
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	add $4 $8 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $4 $0 'C'
	addi $2 $0 11
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	add $4 $12 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $11 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $4 $0 'C'
	addi $2 $0 11
	syscall
	addi $4 $0 'C'
	addi $2 $0 11
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	add $4 $14 $0
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $15 $0
	addi $2 $0 1
	syscall