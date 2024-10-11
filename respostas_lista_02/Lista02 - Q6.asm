.text
main:
	addi $2 $0 5
	syscall
	add $8 $2 $0 # idade
	addi $2 $0 5
	syscall 
	add $9 $2 $0 # tempo de trabalho
	addi $10 $0 65 # idade minima
	addi $11 $0 40 # tempo de trabalho minimo
	addi $12 $0 60 # idade + trabalho
	addi $13 $0 35 # trabalho + idade
	sub $14 $8 $10
	srl $14 $14 31
	beq $14 $0 pode_aposentar
	sub $14 $9 $11
	srl $14 $14 31
	beq $14 $0 pode_aposentar
	sub $14 $8 $12
	srl $14 $14 31
	beq $14 $0 mais_60_anos
	j nao_pode_aposentar
mais_60_anos:
	sub $14 $9 $13
	srl $14 $14 31
	bne $14 $0 nao_pode_aposentar
	j pode_aposentar
pode_aposentar:
	addi $4 $0 'S'
	j mostrar
nao_pode_aposentar:
	addi $4 $0 'N'
mostrar:
	addi $2 $0 11
	syscall
fim:
	addi $2 $0 10
	syscall