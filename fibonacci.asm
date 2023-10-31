# Fibonacci series algortihm
#int main() 
#{
#   int n = 5;
#
#   for(int i = 0; i<n; i++) 
#   {
#      printf("%d ",fibbonacci(i));      # jal  fibbonacci
					 # sw a0, 0(arr)     
#   }
#   return 0;
#}	
# int fibbonacci(int n) 
#{
#   if(n == 0)
#      return 0;			# addi a0, a0, 0
#   else if(n == 1) 
#      return 1;			# addi a0, a0, 1
#   else 
#      return (fibbonacci(n-1) + fibbonacci(n-2));
					# add a0, zero, a0
#}
