.text
main:
	add $23 $0 $0 # numero de picos
	
	addi $2 $0 5
	syscall
	add $16 $2 $0 # $16 => N = numero de amostras
	
	addi $2 $0 5
	syscall
	add $17 $2 $0 # primeiro valor
	
	addi $2 $0 5
	syscall
	add $18 $2 $0 # segundo valor
	
	add $4 $17 $0
	add $5 $18 $0
	
	addi $19 $16 -2 # $19 <= N - 2
test:
	beq $19 $0 fimlaco
	
	addi $2 $0 5
	syscall
	add $6 $2 $0
	
	jal pico
	
	add $23 $23 $2
	
	add $4 $5 $0
	add $5 $6 $0
	
	addi $19 $19 -1
	j test

fimlaco:
	add $6 $17 $0
	
	jal pico
	
	
	add $23 $23 $2
	
	add $4 $5 $0
	add $5 $6 $0
	add $6 $18 $0
	
	jal pico
	
	add $23 $23 $2
	
	add $4 $23 $0
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall

#======================================
# funcao pico
# entrada: $4, $5, $6
# saida: $2
# reg usados: $8, $9, $10, $11
# rotulos usados:

pico:
	slt $8 $4 $5 # $8 = $4 < $5 ? 1 : 0
	slt $9 $6 $5 # $9 = $6 < $5 ? 1 : 0
	
	and $10 $8 $9
	
	slt $8 $5 $4 # $8 = $5 < $4 ? 1 : 0
	slt $9 $5 $6 # $9 = $5 < $6 ? 1 : 0
	
	and $11 $8 $9
	
	or $2 $10 $11
	
	jr $31
