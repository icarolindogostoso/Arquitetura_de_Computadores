.text
main:
	addi $2 $0 5
	syscall # numero binario
	addi $25 $0 10
	div $2 $25
	mfhi $8
	mflo $16
	div $16 $25
	mfhi $9
	mflo $16
	div $16 $25
	mfhi $10
	mflo $16
	div $16 $25
	mfhi $11
	mflo $16
	div $16 $25
	mfhi $12
	mflo $16
	div $16 $25
	mfhi $13
	mflo $16
	div $16 $25
	mfhi $14
	mflo $15
	addi $25 $0 2
	addi $24 $0 4
	addi $23 $0 8
	addi $22 $0 16
	addi $21 $0 32
	addi $20 $0 64
	addi $19 $0 128
	mul $9 $9 $25
	mul $10 $10 $24
	mul $11 $11 $23
	mul $12 $12 $22
	mul $13 $13 $21
	mul $14 $14 $20
	mul $15 $15 $19
	add $8 $8 $9
	add $8 $8 $10
	add $8 $8 $11
	add $8 $8 $12
	add $8 $8 $13
	add $8 $8 $14
	add $4 $8 $15
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall