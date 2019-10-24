//Escriba un programa que pida una cadena por el teclado y la imprima después de
//convertir el primer carácter en mayúscula y el resto en minúsculas.

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main()
{
    char cadena [20];
    int i = 1;

    printf ("Ingrese una palabra: \n");

    scanf ("%s", cadena);

    //primer letra en mayúscula
    putchar (toupper(cadena[0]));
    //pasar a munúscula
    while (cadena[i]){

        putchar (tolower(cadena[i]));
        i++;
    }
    
   // printf ("\n%s", cadena);

    return 0;
}