#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ANSI_COLOR_GREEN  "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_RESET  "\x1b[0m"

FILE *resul;

int main()
{
  printf(ANSI_COLOR_GREEN " [!] " ANSI_COLOR_RESET);
  printf("CONFIGURANDO\n");

  printf(ANSI_COLOR_GREEN " [!] " ANSI_COLOR_RESET);
  printf("DEFININDO VARIAVEIS\n");

  int aa, mm, dd;

  printf(ANSI_COLOR_GREEN " [!] " ANSI_COLOR_RESET);
  printf("CARREGANDO\n");

  printf(ANSI_COLOR_YELLOW " [!] GERANDO \n" ANSI_COLOR_RESET);
  
  resul = fopen("WD_L4.txt", "w");

  for (aa = 1850; aa < 2050; aa++) // Data minima e maxima
    for (mm = 1; mm < 13; mm ++)
      for ( dd = 1; dd < 32; dd++)
      {
        fprintf(resul, "%02d%02d%02d\n", dd, mm, aa);// 01011990
        fprintf(resul, "%02d%02d%02d\n", mm, dd, aa);// 01011990
      }
  printf(ANSI_COLOR_GREEN " [!] CONCLUIDO \n" ANSI_COLOR_RESET);
  fclose(resul);
  return 0;
}