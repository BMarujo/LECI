% cleanup
clc, clearvars, close all
%% Exercice 1 a)
N =  10000;
Y = 0:7;
results = zeros(size(Y));
for i = 0:N
    v1 = randi([1 4], 1);
    v2 = randi([4 8], 1);

    X = v2 - v1;
    results(X+1) = results(X+1) + 1;
end

for i = 1:8
    results(i) = results(i) / N;
end

stem(Y,results)

%% Exercice 1 b)

% valor esperado
VE = 0*results(1,1) + 1*results(1,2) + 2*results(1,3) + 3*results(1,4) + 4*results(1,5) + 5*results(1,6) + 6*results(1,7) + 7*results(1,8)

% variância
VAR = 0*results(1,1) + 1*results(1,2) + 4*results(1,3) + 9*results(1,4) + 16*results(1,5) + 25*results(1,6) + 36*results(1,7) + 49*results(1,8);
VAR = VAR + VE*VE

% desvio padrão
DP = sqrt(VAR)

%% Exercice 1 c)
% probabilidade de X > 3 = casos favoráveis / casos possíveis
% casos possíveis = {4,5,6,7,8} = 5
% casos favoráveis = {6,7,8} = 3
fprintf('Probabilidade de X > 3 sabendo V1 =2: %f\n', 3/5)