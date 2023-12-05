%% a)
tamanhos = [5e5, 1e6, 2e6];
for j = 1 : length(tamanhos)
    vector = zeros(1, tamanhos(j));
    load hashCodes_djb2.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("djb2\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_DJB31MA.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("DJB31MA\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_hashstring.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("hashstring\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load hashCodes_sdbm.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("sdbm\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
end