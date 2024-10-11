.text
main:
	add $8 $8 $0 # maior
	add $9 $9 $0 # menor
ini:
	addi $2 $0 5 # numero
	syscall
	beq $8 $0 adicionar # se $8 == 0 -> adicionar
	j comparar
adicionar:
	add $8 $2 $0 # maior = numero
	add $9 $2 $0 # menor = numero
comparar:
	beq $2 $0 comparar_maior
	slt $10 $2 $9 # se o numero for menor que o menor -> $10 = 1
	bne $10 $0 ajustar_menor # se $10 != 0 -> ajustar_menor
comparar_maior:
	slt $10 $8 $2 # se o maior for menor que o numero -> $10 = 1
	bne $10 $0 ajustar_maior # se $10 != 0 -> ajustar_maior
	j loop
ajustar_menor:
	add $9 $2 $0
	j loop
ajustar_maior:
	add $8 $2 $0
loop:
	bne $2 $0 ini
mostrar:
	add $4 $8 $0
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $9 $0
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall