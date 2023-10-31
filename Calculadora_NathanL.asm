# Organización y Arquitectura de Computadoras ITESO
# Nathan Lokier Cohen 734292

# Ejercicio Calculadora

.text
    addi s0, s0, 1 	# Registro s0
    addi s1, s1, 5 	# int a = 5
    addi s2, s2, 3 	# int b = 3
    addi s3, s3, 0	# int c = 0

    addi t1, t1, 1	# Para la suma
    addi t2, t2, 2 	# Resta
    addi t3, t3, 3 	# Multiplica
    
    beq s0, t1, suma	# Si es 1, va a suma
    beq s0, t2, resta	# Si es 2, va a resta
    beq s0, t3, multiplica # Si es 3, va a multiplica
    jal andBitwise	# Si no son los anteriores, llama a andBitwise

suma:
    addi s3, zero, 0 	# Resetea el valor de c
    add s3, s1, s2  	# Realiza la suma 
    jalr ra		# Regresa al código 

resta:
    addi s3, zero, 0 	# ""
    sub s3, s1, s2
    jalr ra

multiplica:
    addi s3, zero, 0
    mul s3, s1, s2
    jalr ra
    
andBitwise:
    addi s3 , zero, 0
    and s3, s1, s2
    jalr ra
    
    
    
    
