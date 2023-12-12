%% a)
tamanhos = [5e5, 1e6, 2e6];
for j = 1 : length(tamanhos)
    vector = zeros(1, tamanhos(j));
    load hashCodes_djb2.mat
    h = hashCodes/length(vector);
    figure;
    histogram(hashCodes, 100)
    title(tamanhos(j), "djb2");
    fprintf("djb2\n");
    fprintf('Momento 2: %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_DJB31MA.mat
    h = hashCodes/length(vector);
    figure;
    histogram(hashCodes, 100)
    title(tamanhos(j), "DJB31MA");
    fprintf("DJB31MA\n");
    fprintf('Momento 2: %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_hashstring.mat
    h = hashCodes/length(vector);
    figure;
    histogram(hashCodes, 100)
    title(tamanhos(j), "hashstring");
    fprintf("hashstring\n");
    fprintf('Momento 2: %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_sdbm.mat
    h = hashCodes/length(vector);
    figure;
    histogram(hashCodes, 100)
    title(tamanhos(j), "sdbm");
    fprintf("sdbm\n");
    fprintf('Momento 2: %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: %f teorico - %f\n\n', mean(h.^10),1/(10+1));
end

%% alíneas (b) e (c) feitas no ficheiro ex4_1_2.m