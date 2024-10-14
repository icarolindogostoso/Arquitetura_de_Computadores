.data
.word 1,2,3,4,5,6,7,8,9,10
.text
main:
	addi $2 $0 5
	syscall # numero a ser analisado
	lui $25 0x1001
	addi $8 $0 10 # range
	add $9 $0 $0 # i
laco:
	beq $8 $9 fim_laco
	lw $15 0($25)
	div $15 $2
	mfhi $16
	beq $16 $0 multiplo
	j continuacao
multiplo:
	addi $4 $4 1
continuacao:
	addi $25 $25 4
	addi $9 $9 1
	j laco
fim_laco:
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall
	