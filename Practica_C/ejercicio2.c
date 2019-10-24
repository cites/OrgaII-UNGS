//Escriba un programa que compruebe la diferencia entre una variable global, 
//una variable local y un argumento de función


//Ejemplo de Variable Global, Local y Argumento de función
#include <stdio.h>
int varGlobal = 100; 

void suma1 (int x);
void suma2 (int x);

int main ()
{
    extern int varGlobal;
    int varLocal = 200;

    printf ("\nLa variable varGlobal en main vale: %d\n", varGlobal);
    printf ("\nLa variable varLocal en main vale: %d\n", varLocal);

    suma1(varLocal);

    /*En salida no se ha modificado su valor pese a que en suma1 se hagan operaciones
    con varLocal (argumento)*/

    printf ("\nLa variable varGlobal en main vale: %d\n", varGlobal);
    printf ("\nLa variable varLocal en main vale: %d\n", varLocal);

    suma2(varLocal);

    printf ("\nLa variable varGlobal en main vale: %d\n", varGlobal);
    printf ("\nLa variable varLocal en main vale: %d\n", varLocal);

    return 0;
}

void suma1 (int x)
{
    extern int varGlobal;
    ++x;
    ++varGlobal;
    printf ("\nLa variable varGlobal dentro de suma1 vale: %d\n", varGlobal);
    printf ("\nLa variable varLocal dentro de suma1 vale: %d\n", x);
    return;
}

void suma2 (int x)
{
    extern int varGlobal;
    ++x;
    ++varGlobal;
    printf ("\nLa variable varGlobal dentro de suma2 vale: %d\n", varGlobal);
    printf ("\nLa variable varLocal dentro de suma2 vale: %d\n", x);
    return;
}