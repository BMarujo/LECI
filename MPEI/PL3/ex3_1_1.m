%% a)

matriz=[0.7 0.8;
        0.3 0.2];
vetor_estado=[1;0];

probabilidade_estar_presente=((matriz^2)*vetor_estado);
probabilidade_estar_presente_se_esteve_presente=probabilidade_estar_presente(1)


%% b)


matriz=[0.7 0.8;
        0.3 0.2];

vetor_estado=[0;1];

probabilidade_estar_presente=((matriz^2)*vetor_estado);
probabilidade_estar_presente_se_nao_esteve_presente=probabilidade_estar_presente(1)


%% c)
 

matriz=[0.7 0.8;
        0.3 0.2];
vetor_estado=[1;0];

probabilidade_estar_presente=((matriz^30)*vetor_estado);
probabilidade_estar_presente_passado_15_semanas=probabilidade_estar_presente(1)



%% d)


matriz=[0.7 0.8;
        0.3 0.2];
vetor_estado=[0.85;0.15];

soma=zeros(1,30);

for i=1:30
    probabilidade_estar_presente=((matriz^i)*vetor_estado);
    probabilidade_nao_estar_presente=probabilidade_estar_presente(2);
    soma(i)=probabilidade_nao_estar_presente;
end


plot(1:30,soma)
