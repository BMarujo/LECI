%% a)
T=rand(20,20);
for i=1:20
    T(i,:)=T(i,:)/sum(T(i,:));
end
T

%% b)

T=rand(20,20);
for i=1:20
    T(i,:)=T(i,:)/sum(T(i,:));
end
T;

estado_inicial=zeros(20,1);
estado_inicial(1)=1;


estado_final2transicoes=T^2*estado_inicial;
estado_final2transicoes=estado_final2transicoes(20)

estado_final5transicoes=T^5*estado_inicial;
estado_final5transicoes=estado_final5transicoes(20)

estado_final10transicoes=T^10*estado_inicial;
estado_final10transicoes=estado_final10transicoes(20)

estado_final100transicoes=T^100*estado_inicial;
estado_final100transicoes=estado_final100transicoes(20)


