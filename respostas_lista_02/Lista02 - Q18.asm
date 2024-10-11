.text
main:
	addi $2 $0 5
	syscall # numero inteiro
	addi $25 $0 2
	addi $24 $0 4
	addi $23 $0 8
	addi $22 $0 16
	addi $21 $0 32
	addi $20 $0 64
	addi $19 $0 128
	addi $18 $0 256
	addi $17 $0 512
	sub $8 $2 $25
	srl $8 $8 31
	bne $8 $0 um_bit
	sub $8 $2 $24
	srl $8 $8 31
	bne $8 $0 dois_bit
	sub $8 $2 $23
	srl $8 $8 31
	bne $8 $0 tres_bit
	sub $8 $2 $22
	srl $8 $8 31
	bne $8 $0 quatro_bit
	sub $8 $2 $21
	srl $8 $8 31
	bne $8 $0 cinco_bit
	sub $8 $2 $20
	srl $8 $8 31
	bne $8 $0 seis_bit
	sub $8 $2 $19
	srl $8 $8 31
	bne $8 $0 sete_bit
	sub $8 $2 $18
	srl $8 $8 31
	bne $8 $0 oito_bit
	sub $8 $2 $17
	srl $8 $8 31
	bne $8 $0 nove_bit
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $8
	div $8 $25
	mfhi $13
	mflo $8
	div $8 $25
	mfhi $14
	mflo $8
	div $8 $25
	mfhi $15
	mflo $8
	div $8 $25
	mfhi $16
	mflo $8
	div $8 $25
	mfhi $17
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $17
	addi $2 $0 1
	syscall
	add $4 $0 $16
	addi $2 $0 1
	syscall
	add $4 $0 $15
	addi $2 $0 1
	syscall
	add $4 $0 $14
	addi $2 $0 1
	syscall
	add $4 $0 $13
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
um_bit:
	div $2 $25
	mfhi $4
	addi $2 $0 1
	syscall
	j fim
dois_bit:
	div $2 $25
	mflo $4
	addi $2 $0 1
	syscall
	mfhi $4
	addi $2 $0 1
	syscall
	j fim
tres_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $10 $0
	addi $2 $0 1
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
	j fim
quatro_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $4
	addi $2 $0 1 
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
cinco_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
seis_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $8
	div $8 $25
	mfhi $13
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $13
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
sete_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $8
	div $8 $25
	mfhi $13
	mflo $8
	div $8 $25
	mfhi $14
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $14
	addi $2 $0 1
	syscall
	add $4 $0 $13
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
oito_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $8
	div $8 $25
	mfhi $13
	mflo $8
	div $8 $25
	mfhi $14
	mflo $8
	div $8 $25
	mfhi $15
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $15
	addi $2 $0 1
	syscall
	add $4 $0 $14
	addi $2 $0 1
	syscall
	add $4 $0 $13
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
nove_bit:
	div $2 $25
	mfhi $9
	mflo $8
	div $8 $25
	mfhi $10
	mflo $8
	div $8 $25
	mfhi $11
	mflo $8
	div $8 $25
	mfhi $12
	mflo $8
	div $8 $25
	mfhi $13
	mflo $8
	div $8 $25
	mfhi $14
	mflo $8
	div $8 $25
	mfhi $15
	mflo $8
	div $8 $25
	mfhi $16
	mflo $4
	addi $2 $0 1
	syscall
	add $4 $0 $16
	addi $2 $0 1
	syscall
	add $4 $0 $15
	addi $2 $0 1
	syscall
	add $4 $0 $14
	addi $2 $0 1
	syscall
	add $4 $0 $13
	addi $2 $0 1
	syscall
	add $4 $0 $12
	addi $2 $0 1
	syscall
	add $4 $0 $11
	addi $2 $0 1
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
fim:
	addi $2 $0 10
	syscall