% cleanup
clc, clearvars, close all


%% Exercice 4 b)

CH1= {'Amelia','Emma','Damian','Joe','Madison','Megan','Susan','Thomas'};
CH2= {'George','Jack','Oscar','Sarah'};

BF = Init(100);
k = 6;

for i = 1:length(CH1)
    BF = AddElement(BF, CH1{i}, k);
end

Verify = 0;
for i = 1:length(CH1)
    Verify = VerifyElement(BF, CH1{i}, k);
    if Verify == 0
        fprintf("Erro chave não esta presente no filtro!\n")
        break
    end

    if i == length(CH1)
        fprintf("Todas as chaves estão presentes no filtro.\n")
    end
end

for i = 1:length(CH2)
    Verify = VerifyElement(BF, CH2{i}, k);
    if Verify == 0
        fprintf("Chave não esta no filtro.\n")
    else
        fprintf("Chave esta no filtro, falso positivo.\n")
    end
end


% Funcoes dadas pelos professores
function BF= Init(n)
    BF= zeros(n,1);
end

function BF= AddElement(BF,chave,k)
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        BF(mod(h,nBF)+1)= 1;
    end
end

% Funcoes que eu criei
function Check = VerifyElement(BF,chave,k)
    h= 127;
    chave= double(chave);
    nBF= length(BF);
    Check = 1;
    for i= 1:length(chave)
        h= mod(31*h+chave(i),2^32-1);
    end
    for i= k:-1:1
        h= mod(31*h+i,2^32-1);
        if BF(mod(h,nBF)+1) == 0
            Check = 0;
            break
        end
    end 
end