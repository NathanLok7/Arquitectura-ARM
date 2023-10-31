#int main(void) {
#int selector = 0; //registro s0
#int a = 5; // registro s1
#int b = 3; // registro s2
#int c = 0; // registro s3
.text
    addi s0,s0,1
    addi s1,s1,5
    addi s2,s2,3
    addi s3,s3,0
    #temporales
    addi t1,t1,1 #1
    addi t2,t2,2 #2
    addi t3,t3,3 #3
    
#switch (selector){
#case 1:
#c = suma(a,b);
#break;
#case 2:
#c = resta(a,b);
#break;
#case 3:
#c = multiplica(a, b);
#break;
#default:
#c = andBitwise(a,b);
#break;}}
    beq s0,t1,suma
    beq s0,t2,resta
    beq s0,t3,multiplica
    jal else

#int suma(int a, int b){
#int c = 0;
#c = a + b;
#return c;}
suma:
    addi s3,zero,0
    add s3,s1,s2
    jalr ra
    
#int resta(int a, int b){
#int c = 0;
#c = a - b;
#return c;}
resta:
    addi s3,zero,0
    sub s3,s1,s2
    jalr ra

#int multiplica(int a, int b){
#int c = 0;
#c = a * b;
#return c;}
multiplica:
    addi s3,zero,0
    mul s3,s1,s2
    jalr ra
    
#int andBitwise(int a, int b){
#int c = 0;
#c = a & b;
else:
    addi s3,zero,0
    and s3,s1,s2
    jalr ra
