//Escriba un programa que copie un fichero a otro
#include <stdio.h>

int main()

{
      FILE *Fd,*copia;

      char texto[100];
      
      Fd=fopen("texto.txt","r");

      copia=fopen("copia.txt","a");

      //par=fopen("par.txt","a");

      if (Fd==NULL)

         printf("Error abriendo el fichero texto.txt");
      
      if (copia == NULL)
        printf("jdksjfd");
      


      while (feof(Fd)==0)

      {
            fgets(texto,100,Fd);
            fputs(texto,copia);
      }

      printf("¡Se ha copiado el archivo!");

      getchar();

  return 0;
}