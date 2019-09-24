//Calcular factorial de un número
#include <stdio.h>
int main ()
{
    long int n;
    long int resultado;
    printf ("Ingrese un número entero: \n");
    scanf ("%ld", &n);
    // Calcular el factorial del numero solicitado
    if (n == 0)
        resultado = 0;
    else
        resultado = 1;
    while(n > 1) {
       resultado *= n;
       //printf(" %ld x",n);
       n--;
    }
    printf("Su factorial es: %ld\n\n",resultado);
    return 0;
}
