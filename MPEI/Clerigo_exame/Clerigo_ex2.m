% cleanup
clc, clearvars, close all

%% Exercice 2 a)
T= [0.2     0.4     0.1     0
    0.4     0.3     0.1     0.1
    0.3     0.3     0.8     0.1
    0.1     0       0       0.8];

X0 = [0; 1; 0; 0];
X5 = T^5*X0;

fprintf('Probabilidade de estar no estado 4 após 5 transições: %f\n', X5(4));

%% Exercice 2 b)
X = [0; 1; 0; 0];
total = 1;
for i = 1:5
    X = T^i*X;
    total = total * X(2);
end

fprintf('Probabilidade de manter-se no estado 2 nas 5 primeiras transições: %f\n', total);