%% a

T = [
        0.7    0.2     0.3;
        0.2    0.3     0.3;
        0.1    0.5     0.4
    ]

%% b
    
T = [
    0.7    0.2     0.3;
    0.2    0.3     0.3;
    0.1    0.5     0.4
];

x0=[1;0;0];

sol_segundo_dia=T * x0;
sol_segundo_dia=sol_segundo_dia(1)

sol_terceiro_dia=T^2 * x0;
sol_terceiro_dia=sol_terceiro_dia(1)

%% c

T = [
    0.7    0.2     0.3;
    0.2    0.3     0.3;
    0.1    0.5     0.4
];

x0=[1;0;0];

nao_chuva_segundo_dia=T * x0;

nao_chuva_segundo_dia(3) = 0;

nao_chuva_segundo_dia = sum(nao_chuva_segundo_dia)

nao_chuva_terceiro_dia=T^2 * x0;

nao_chuva_terceiro_dia(3) = 0;

nao_chuva_terceiro_dia = sum(nao_chuva_terceiro_dia)


%% d

T = [
    0.7    0.2     0.3;
    0.2    0.3     0.3;
    0.1    0.5     0.4
];

x0=[1;0;0];
estados=zeros(3,31);
for i = 1:31
    estados(:,i) = T^i * x0;
end

dias_de_sol=sum(estados(1,:))
dias_de_nuvens=sum(estados(2,:))
dias_de_chuva=sum(estados(3,:))


%% e

T = [
    0.7    0.2     0.3;
    0.2    0.3     0.3;
    0.1    0.5     0.4
];

x0=[0;0;1];
estados=zeros(3,31);
for i = 1:31
    estados(:,i) = T^i * x0;
end

dias_de_sol_primeiro_dia_chuva=sum(estados(1,:))
dias_de_nuvens_primeiro_dia_chuva=sum(estados(2,:))
dias_de_chuva_primeiro_dia_chuva=sum(estados(3,:))


% Conclusão: Comparando com o item anterior, o número médio de dias de sol, de nuvens e de chuva são equivalentes.

%% f

T = [
    0.7    0.2     0.3;
    0.2    0.3     0.3;
    0.1    0.5     0.4
];

x0=[1;0;0];
estados=zeros(3,31);
for i = 1:31
    estados(:,i) = T^i * x0;
end

dores_dias_de_sol_primeiro_dia_sol=sum(estados(1,:))*0.1;
dores_dias_de_nuvens_primeiro_dia_sol=sum(estados(2,:))*0.3;
dores_dias_de_chuva_primeiro_dia_sol=sum(estados(3,:))*0.5;

dias_totais_com_dores_primeiro_dia_sol=dores_dias_de_sol_primeiro_dia_sol+dores_dias_de_nuvens_primeiro_dia_sol+dores_dias_de_chuva_primeiro_dia_sol


x0=[0;0;1];
estados=zeros(3,31);
for i = 1:31
    estados(:,i) = T^i * x0;
end

dores_dias_de_sol_primeiro_dia_chuva=sum(estados(1,:))*0.1;
dores_dias_de_nuvens_primeiro_dia_chuva=sum(estados(2,:))*0.3;
dores_dias_de_chuva_primeiro_dia_chuva=sum(estados(3,:))*0.5;

dias_totais_com_dores_primeiro_dia_chuva=dores_dias_de_sol_primeiro_dia_chuva+dores_dias_de_nuvens_primeiro_dia_chuva+dores_dias_de_chuva_primeiro_dia_chuva

