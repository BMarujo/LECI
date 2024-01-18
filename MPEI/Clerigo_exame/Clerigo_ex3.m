% A -> B , A -> C , B -> C , C -> D

%      -> C -->D
%     /   ^
%    A    |
%     \   |
%      -> B

% cleanup
clc, clearvars, close all

%% Exercice 3)
% Para resolver deadends: estado D percisa de uma saida para outro estado
% Para resolver spidertraps: um estado percisa de uma saida para estado A 
% Logo:

T= [0       0     0     1
    0.5     0     0     0
    0.5     1     0     0
    0       0     1     0];

beta = 0.8;
N = ones(4, 4) ./ 4;
A = beta * T + 0.2 * N;

r = [1/4; 1/4; 1/4; 1/4;];

for i= 0: 9
    r = A * r;
end

r