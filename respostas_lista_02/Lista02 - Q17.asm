.text
codigo_do_pais:
	addi $2 $0 5
	syscall
	addi $25 $0 10
	addi $24 $0 3
	div $2 $25
	mfhi $11 # terceiro algarismo
	mflo $9
	div $9 $25
	mfhi $10 # segundo algarismo
	mflo $9 # primeiro algarismo
	mul $10 $10 $24
	add $8 $9 $10
	add $8 $8 $11 # primeiro somatorio
codigo_fabricante:
	addi $2 $0 5
	syscall # 1 2 3 4 5
	div $2 $25
	mfhi $13 # 5
	mflo $12
	div $12 $25
	mfhi $12 # 4
	mflo $11 
	div $11 $25
	mfhi $11 # 3
	mflo $10
	div $10 $25
	mfhi $10 # 2
	mflo $9 # 1
	beq $9 $0 fabricante_4_algarismos
	mul $9 $9 $24
	add $8 $8 $9
	add $8 $8 $10
	mul $11 $11 $24
	add $8 $8 $11
	add $8 $8 $12
	mul $13 $13 $24
	add $8 $8 $13
	
	addi $2 $0 5
	syscall # 1 2 3 4
	div $2 $25
	mfhi $13 # 4
	mflo $12 # 1 2 3
	div $12 $25
	mfhi $12 # 3
	mflo $11 # 1 2
	div $11 $25
	mfhi $11 # 2
	mflo $10 # 1
	
	add $8 $8 $10
	mul $11 $11 $24
	add $8 $8 $11
	add $8 $8 $12
	mul $13 $13 $24
	add $8 $8 $13
	j conta
	
fabricante_4_algarismos:
	mul $10 $10 $24
	add $8 $8 $10
	add $8 $8 $11
	mul $12 $12 $24
	add $8 $8 $12
	add $8 $8 $13
	
	addi $2 $0 5
	syscall
	div $2 $25
	mfhi $13
	mflo $12
	div $12 $25
	mfhi $12
	mflo $11
	div $11 $25
	mfhi $11
	mflo $10
	div $10 $25
	mfhi $10
	mflo $9
	mul $9 $9 $24
	add $8 $8 $9
	add $8 $8 $10
	mul $11 $11 $24
	add $8 $8 $11
	add $8 $8 $12
	mul $13 $13 $24
	add $8 $8 $13
	j conta
conta:
	div $8 $25
	mflo $9
	mul $9 $9 $25
	sub $9 $8 $9
	sub $4 $25 $9
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall