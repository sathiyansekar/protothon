#include <stdio.h>

int fact(int n) {
   int f;
   
   for(f = 1; n > 1; n--)
      f *= n;
      
   return f;
}

int ncr(int n,int r) {
   return fact(n) / ( fact(n-r) * fact(r) );
}

int main() {
   int n, i, j;
   printf("enter no of rows");

   scanf("%d",&n);

   for(i = 0; i < n; i++) {
      for(j = 0; j < n-i; j++)
         printf("  ");
         
      for(j = 0; j <= i; j++)
         printf(" %3d", ncr(i, j));

      printf("\n");
   }
   return 0;
}
