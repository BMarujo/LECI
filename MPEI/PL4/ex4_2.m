n = 8000;
m = 1000;
m2 = 10000;
k = 3;

fid = fopen('wordlist-preao-20201103.txt','r');
dicionario = textscan(fid,'%s');
fclose(fid);
dicionario = dicionario{1,1};

BF = init(n);
%ex1
for i = 1:m
    BF = insert(dicionario{i}, BF, k);
end

%ex2
contador = 0;
for i = 1:m
    check = valid(dicionario{i}, BF, k);
    if ~check
        contador = contador + 1;
    end
end
falsos_negativos=contador

%ex3
contador = 0;
for i = m + 1: m + m2
    check = valid(dicionario{i}, BF, k);
    if check
        contador = contador + 1;
    end
end

falsos_positivos=contador/m2
            
%ex4
probabilidade_falsos_positivos_valor_teorico=(1-exp(-k*m/n))^k


%% ex5

n = 8000;
m = 1000;
m2 = 10000;
k_values = 4:10; 

fid = fopen('wordlist-preao-20201103.txt', 'r');
dicionario = textscan(fid, '%s');
fclose(fid);
dicionario = dicionario{1,1};

falsos_positivos_percent = zeros(size(k_values));

for idx = 1:length(k_values)
    k = k_values(idx);
    
    BF = init(n);
    
    % ex1
    for i = 1:m
        BF = insert(dicionario{i}, BF, k);
    end

    % ex3
    contador = 0;
    for i = m + 1: m + m2
        check = valid(dicionario{i}, BF, k);
        if check
            contador = contador + 1;
        end
    end

    falsos_positivos_percent(idx) = contador / m2 * 100;
end

figure;
plot(k_values, falsos_positivos_percent, '-o');
title('Falsos Positivos em Função de k');
xlabel('Número de Funções de Dispersão (k)');
ylabel('Percentagem de Falsos Positivos (%)');
grid on;

