%% a)

p=0.4;
q=0.6;

T =[ p^2 0 0 q^2;

    (1-p)^2 0 0 q*(1-q);

    p*(1-p) 0 0 q*(1-q);

    p*(1-p) 1 1 (1-q)^2

]


%% b)

p=0.4;
q=0.6;

T =[ p^2 0 0 q^2;

    (1-p)^2 0 0 q*(1-q);

    p*(1-p) 0 0 q*(1-q);

    p*(1-p) 1 1 (1-q)^2

];

estado_inicial = [1; 0; 0; 0];

estado_5 = T^5 * estado_inicial
estado_10 = T^10 * estado_inicial
estado_100 = T^100 * estado_inicial
estado_200 = T^200 * estado_inicial


%% c)

p=0.4;
q=0.6;

T =[ p^2 0 0 q^2;

    (1-p)^2 0 0 q*(1-q);

    p*(1-p) 0 0 q*(1-q);

    p*(1-p) 1 1 (1-q)^2

];

estado_inicial = [1/4; 1/4; 1/4; 1/4];

estado_limite = T^100000 * estado_inicial
