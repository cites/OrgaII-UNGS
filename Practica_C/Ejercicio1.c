//Escriba un programa que halle el menor de dos números pedidos al usuario. 
//Utilice una macro para resolver el mínimo.

#include <stdio.h>
#include <stdlib.h>

#define MENOR(n1,n2) ((n1)<(n2)?(n1):(n2))

int main ()
{
    int n1;
    int n2;
    
    printf ("Ingresar número 1: \n");
    scanf ("%d", &n1);

    printf ("Ingresar número 2: \n");
    scanf ("%d", &n2);
    
    printf ("El menor es: %d\n", MENOR(n1,n2));

    
    return 0;
}