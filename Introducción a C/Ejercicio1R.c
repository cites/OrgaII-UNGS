#include <stdio.h>
#include <string.h>

struct Persona {
    char nombre [30];
    char telefono [30];
};
int main()
{
    struct Persona agenda [4];

    strcpy(agenda[0].nombre, "Juan");
    strcpy(agenda[0].telefono, "0303456");

    strcpy(agenda[1].nombre, "Flor");
    strcpy(agenda[1].telefono, "1165276665");

    strcpy(agenda[2].nombre, "Lucas");
    strcpy(agenda[2].telefono, "1161944175");

    strcpy(agenda[3].nombre, "Julian");
    strcpy(agenda[3].telefono, "1168580846");


    for (int i=0 ; i<4 ; i++){
        printf ("\nNombre: %s", agenda[i].nombre);
        printf ("\nTelefono: %s", agenda[i].telefono);
        printf ("\n");
    }
    return 0;
}