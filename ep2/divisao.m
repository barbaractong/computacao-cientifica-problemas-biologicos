%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Computacao Cientifica aplicada a Problemas Biol�gicos
% Resolucao EP2 
% Por Barbara Gaspar Chan Tong
% 
% Funcao divisao:
%     Entradas: a - numero real
%               b - numero real
%     Saida: c - numero real
%     Tratativa para b = 0: Nao executa divisao e re-
%                           torna c = NaN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function c = divisao(a, b)
  if b == 0
    c = NaN;
  else
    c = a/b;
  endif
endfunction
