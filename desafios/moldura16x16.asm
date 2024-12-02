.text
main:
	lui $8 0x1001
	ori $9 $0 0xff00
	addi $20 $0 32 
topo:
	beq $20 $0 fim_t
	sw $9 0($8)
	addi $8 $8 4
	addi $20 $20 -1
	j topo
fim_t:
	lui $8 0x1001
	addi $10 $0 128
	mul $10 $10 15
	add $8 $8 $10
	ori $9 $0 0xff00
	addi $20 $0 32
baixo:
	beq $20 $0 fim_b
	sw $9 0($8)
	addi $8 $8 4
	addi $20 $20 -1
	j baixo
fim_b:
	lui $8 0x1001
	ori $9 $0 0xff00
	addi $20 $0 16
esquerda:
	beq $20 $0 fim_e
	sw $9 0($8)
	addi $8 $8 128
	addi $20 $20 -1
	j esquerda
fim_e:
	lui $8 0x1001
	addi $10 $0 124
	add $8 $8 $10
	ori $9 $0 0xff00
	addi $20 $0 16
direita:
	beq $20 $0 fim_d
	sw $9 0($8)
	addi $8 $8 128
	addi $20 $20 -1
	j esquerda
fim_d:
	addi $2 $0 10
	syscall
