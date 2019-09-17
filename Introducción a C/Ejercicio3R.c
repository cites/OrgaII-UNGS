//Dados base y altura, calcular el área de un triángulo
#include <stdio.h>
#include <stdlib.h>

int main()
{
    float base;
    float altura;

    printf ("Ingresar la base: \n");
    scanf ("%f", &base);

    printf ("Ingresar la altura: \n");
    scanf ("%f", &altura);


    printf ("Area de triángulo: %.2f\n", (base*altura)/2);
    return 0;
}
