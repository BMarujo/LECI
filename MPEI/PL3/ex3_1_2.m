%% a)
matriz = [1/3 1/4 0;
          1/3 11/20 1/2 ;
          1/3  1/5 1/2]

sum(matriz)

%% b)
estado_inicial_b = [60;15;15]

%% c)
matriz = [1/3 1/4 0;
          1/3 11/20 1/2 ;
          1/3  1/5 1/2];

estado_inicial = [60;15;15];

estado_final = matriz^30 * estado_inicial

%% d)

matriz = [1/3 1/4 0;
          1/3 11/20 1/2 ;
          1/3  1/5 1/2];

estado_inicial2 = [30;30;30];

estado_final2 = matriz^30 * estado_inicial2