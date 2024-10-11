.text
main:
	lui $25 0x1001
	addi $8 $0 6
	add $9 $0 $0
	addi $10 $0 2
loop:
	beq $8 $9 fim_loop
	addi $2 $0 5
	syscall
	div $2 $10
	mfhi $11
	beq $11 $0 par
	j impar
par:
	sw $2 0($25)
	addi $25 $25 4
	addi $9 $9 1
impar:
	j loop
fim_loop:
	add $9 $0 $0
loop2:
	beq $9 $8 fim_loop2
	addi $25 $25 -4
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 1
	j loop2
fim_loop2:
	addi $2 $0 10
	syscall