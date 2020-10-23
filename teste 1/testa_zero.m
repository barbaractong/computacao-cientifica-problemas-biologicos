function testa_zero(saida, entrada1, entrada2)
  printf("Inicio do teste unitario...\n")
  printf("Suite de teste - funcao multiplica...\n");
  num = multiplica(entrada1, entrada2);
  
  if length(entrada1) > 1 || length(entrada2) > 1
   fprintf("Saida obtida: vetor - Saida esperada: %.2f\n", saida)
  else
   printf("Saida obtida: %.2f - Saida esperada: %.2f\n", num, saida)
  endif
    
  if num == saida 
    printf("Suite concluida sem erros.\n") 
  else
    printf("Suite concluida com erros.\n") 
  endif
