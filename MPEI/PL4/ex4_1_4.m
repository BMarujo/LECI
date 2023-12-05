load keys_prob.mat;
tamanhos = [5e5, 1e6, 2e6];

%% String2Hash djb2

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys_prob));
    tic
    for i = 1 : length(keys_prob)
        hashCodes(i) = mod(string2hash(keys_prob{i}), length(vector)) + 1;
        if vector(hashCodes(i)) > 0 
            count = count + 1;
        end

        vector(hashCodes(i)) = vector(hashCodes(i)) + 1;
    end
    fprintf('Chaining HashTable %d djb2\n', tamanhos(j));
    fprintf('Number of Collisions: %d\n', count);
    fprintf('Number of atributions: %d\n', max(vector));
    fprintf('Running time: %f seconds\n', toc);
 
end

save 2hashCodes_djb2 hashCodes
%% String2Hash sdbm

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys_prob));
    tic
    for i = 1 : length(keys_prob)
        hashCodes(i) = mod(string2hash(keys_prob{i}, "sdbm"), length(vector)) + 1;
        if vector(hashCodes(i)) > 0 
            count = count + 1;
        end

        vector(hashCodes(i)) = vector(hashCodes(i)) + 1;
    end
    fprintf('Chaining HashTable %d sdbm\n', tamanhos(j));
    fprintf('Number of Collisions: %d\n', count);
    fprintf('Number of atributions: %d\n', max(vector));
    fprintf('Running time: %f seconds\n', toc);
end

save 2hashCodes_sdbm hashCodes
%% DJB31MA

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys_prob));
    tic
    for i = 1 : length(keys_prob)
        hashCodes(i) = mod(DJB31MA(keys_prob{i}, 127), length(vector)) + 1;
        if vector(hashCodes(i)) > 0 
            count = count + 1;
        end

        vector(hashCodes(i)) = vector(hashCodes(i)) + 1;
    end
    fprintf('Chaining HashTable %d DJB31MA\n', tamanhos(j));
    fprintf('Number of Collisions: %d\n', count);
    fprintf('Number of atributions: %d\n', max(vector));
    fprintf('Running time: %f seconds\n', toc);
end
save 2hashCodes_DJB31MA hashCodes

%% hashstring

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys_prob));
    tic
    for i = 1 : length(keys_prob)
        hashCodes(i) = mod(hashstring(keys_prob{i}, length(vector)), length(vector)) + 1;
        if vector(hashCodes(i)) > 0 
            count = count + 1;
        end

        vector(hashCodes(i)) = vector(hashCodes(i)) + 1;
    end
    fprintf('Chaining HashTable %d hashstring\n', tamanhos(j));
    fprintf('Number of Collisions: %d\n', count);
    fprintf('Number of atributions: %d\n', max(vector));
    fprintf('Running time: %f seconds\n', toc);
end
save 2hashCodes_hashstring hashCodes


%%
tamanhos = [5e5, 1e6, 2e6];
for j = 1 : length(tamanhos)
    vector = zeros(1, tamanhos(j));
    load 2hashCodes_djb2.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("keys from prob djb2\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load 2hashCodes_DJB31MA.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("keys from prob DJB31MA\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load 2hashCodes_hashstring.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("keys from prob hashstring\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
    
    load 2hashCodes_sdbm.mat
    h = hashCodes/length(vector);
    %histogram(hashCodes, 100)
    fprintf("keys from prob sdbm\n");
    fprintf('Momento 2: medio  - %f teorico - %f\n', mean(h.^2),1/(2+1));
    fprintf('Momento 5: medio  - %f teorico - %f\n', mean(h.^5),1/(5+1));
    fprintf('Momento 10: medio - %f teorico - %f\n\n', mean(h.^10),1/(10+1));
end