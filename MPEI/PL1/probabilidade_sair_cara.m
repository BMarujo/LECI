function [probabilidade] = probabilidade_sair_cara(p,lancamentos,caras_pretendidas,numero_experiencias)
%  a probabilidade de se obter x caras ao fim de y lancamentos.
matriz_lancamentos=rand(lancamentos,numero_experiencias);
caras=matriz_lancamentos>p;
soma_total_caras=sum(caras);
resultado_pretendido=soma_total_caras==caras_pretendidas;
probabilidade=sum(resultado_pretendido)/numero_experiencias;
end