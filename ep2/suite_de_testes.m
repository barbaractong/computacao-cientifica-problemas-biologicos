%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Computacao Cientifica aplicada a Problemas Biol�gicos
% Resolucao EP2 - Testes Unitarios
% Por Barbara Gaspar Chan Tong
% 
%   Para execucao da suite de testes: executar aquivo
% ou chamar a funcao no console.    
%               
%    Define-se os casos de teste dentro da funcao, deno
% minados caso_um, caso_dois, caso_3 e caso_4.     
%    Para otimizacao do teste, coloca-se os vetores de 
% caos em um tensor de dimensao (2, 2, 3). As respostas
% esperadas para o teste estao alocadas na variavel 
% resposta_caso (o indice deste vetor deve coincidir com
% com o indice (:, :, i) do tensor.
%    Para tratativa de erros na execucao de um caso de
% teste, utiliza-se um try-catch para verificar se ocor
% rer a execucao correta da funcao que esta sendo tes
% tada. Indicara qual teste falhou.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function suite_de_testes()
  caso_um = [1, 2];
  caso_dois = [0, 2];
  caso_tres = [0, 0];
  caso_quatro = [-10, 5];

  resposta_caso = [0.5, 0, NaN, -2];
  
  casos_de_teste = cat(3, caso_um, caso_dois, caso_tres, caso_quatro);

  [xIndex, yIndex, zIndex] = size(casos_de_teste);

  falhaTeste = 0;
  sucessoTeste = 0;
  nanResultado = 0;


  for i = 1:zIndex
    a = casos_de_teste(1, 1, i);
    b = casos_de_teste(1, 2, i);
    
    try
      c = divisao(a, b)
    catch e
      falhaTeste += 1
      printf('Falha no teste %d.\n Mensagem de erro: %s\n', i, e.message);
    end_try_catch
 
    printf('Caso de teste %d: a = %d, b = %d. Resposta esperada: %d.\n', i, a, b, resposta_caso(i));

    printf( '\n');
    if isnan(c) == 1
      nanResultado += 1;
    else
      sucessoTeste += 1;
    endif
  endfor

  printf('\nFinalizando suite de testes...\n\n');
  printf('Testes executados com sucesso: %d\n', sucessoTeste);
  printf('Testes executados com falha: %d\n', falhaTeste);
  printf('Testes executados resultando em NaN: %d\n', nanResultado);
endfunction




