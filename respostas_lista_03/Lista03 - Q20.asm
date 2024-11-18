.text
main:
      	addi $23 $0 0  # numero de picos

      	addi $2 $0 5
      	syscall
      
     	beq $2 $0 fim
      
      	add $16 $0 $2 # $16 => N = numero de amostras
      
      	addi $2 $0 5
      	syscall
      	add $17 $0 $2 # primeiro valor
      
      	addi $2 $0 5
      	syscall
      	add $18 $0 $2 # segundo valor
     
      	add $4 $0 $17    
      	add $5 $0 $18
     
      	addi $19 $16 -2 #$19 <= N-2
test: 
	beq $19 $0 fimlaco
	
      	addi $2 $0 5
      	syscall
      	add $6 $0 $2
      	
      	jal pico
      	
      	add $23 $23 $2
      	
      	add $4 $0 $5
      	add $5 $0 $6
      	
      	addi $19 $19 -1
      	j test
fimlaco:
      	add $6 $0 $17
      	
      	jal pico
      	
      	add $23 $23 $2
      	
      	add $4 $0 $5
      	add $5 $0 $6
      	add $6 $0 $18
      	
      	jal pico
      	
      	add $23 $23 $2
      	      
      	add $4 $0 $23
      	addi $2 $0 1
      	syscall
      	
      	add $4 $0 '\n'
      	addi $2 $0 11
      	syscall
      	
      	j main
 
terminou:
      	addi $2 $0 10
      	syscall
#===================================      
# Função pico
# entrada: $4, $5, $6
# saida: $2
# Reg usados: $8, $9, $10, $11
# Rotulos usados:      
pico: 
	slt $8, $4, $5 # $8 = $4<$5 ? 1 : 0
      	slt $9, $6, $5 # $8 = $6<$5 ? 1 : 0
      	
      	and $10, $8, $9
      	
      	slt $8, $5, $4 # $8 = $5<$4 ? 1 : 0
      	slt $9, $5, $6 # $8 = $5<$6 ? 1 : 0
      	
      	and $11, $8, $9
      	
      	or $2, $10, $11
      	
      	jr $31
