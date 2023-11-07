%% a 

    H = [
        0   0   0   0   1/3     0;
        1   0   0   0   1/3     0;
        0   1/2 0   1   0       0;
        0   0   1   0   0       0;
        0   1/2 0   0   0       0;
        0   0   0   0   1/3     0;
    ];


x0 = [1/6; 1/6; 1/6; 1/6; 1/6; 1/6];

for i= 0: 9
    x0 = H * x0;
end

depois_de_10_iteracoes=x0

% as páginas com maior pagerank são C (0.3315) e D (0.3304)

%% b

% F deadlock
% c e D spider

%% c

H = [
        0   0   0   0   1/3     1/6;
        1   0   0   0   1/3     1/6;
        0   1/2 0   1   0       1/6;
        0   0   1   0   0       1/6;
        0   1/2 0   0   0       1/6;
        0   0   0   0   1/3     1/6;
    ];

x0 = [1/6; 1/6; 1/6; 1/6; 1/6; 1/6];
for i= 0: 9
    x0 = H * x0;
end

depois_de_10_iteracoes_no_dead_end=x0

%% d

H = [
        0   0   0   0   1/3     1/6;
        1   0   0   0   1/3     1/6;
        0   1/2 0   1   0       1/6;
        0   0   1   0   0       1/6;
        0   1/2 0   0   0       1/6;
        0   0   0   0   1/3     1/6;
    ];

beta = 0.8;
A = beta * H + (1-beta) * (ones(6)/6);


x0 = [1/6; 1/6; 1/6; 1/6; 1/6; 1/6];
for i= 0: 9
    x0 = A * x0;
end

no_spider_trap_and_no_dead_end=x0

%% e 
x0 = [1/6; 1/6; 1/6; 1/6; 1/6; 1/6];
for i= 0: 19
    x0 = A * x0;
    pagerankporiteracao(:,i+1) = x0;
end

pagerankporiteracao=pagerankporiteracao

% são necessárias 12 iterações
% nas 10 transicoes a matriz é quase estacionária

