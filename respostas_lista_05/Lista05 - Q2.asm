.text
main:
	lui $25 0x1001
	addi $8 $0 6 # range
	add $9 $0 $0 # i
loop:
	beq $8 $9 fim_loop
	addi $2 $0 5
	syscall
	sw $2 0($25)
	addi $25 $25 4
	addi $9 $9 1
	j loop
fim_loop:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	lui $25 0x1001
	add $9 $0 $0
loop2:
	beq $8 $9 fim_loop2
	lw $4 0($25)
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $25 $25 4
	addi $9 $9 1
	j loop2
fim_loop2:
	addi $2 $0 10
	syscall