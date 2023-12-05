load keys.mat;
tamanhos = [5e5, 1e6, 2e6];

%% String2Hash djb2

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(string2hash(keys{i}), length(vector)) + 1;
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

save hashCodes_djb2 hashCodes
%% String2Hash sdbm

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(string2hash(keys{i}, "sdbm"), length(vector)) + 1;
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

save hashCodes_sdbm hashCodes
%% DJB31MA

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(DJB31MA(keys{i}, 127), length(vector)) + 1;
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
save hashCodes_DJB31MA hashCodes

%% hashstring

for j = 1 : length(tamanhos)
    count = 0;
    vector = zeros(1, tamanhos(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(hashstring(keys{i}, length(vector)), length(vector)) + 1;
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
save hashCodes_hashstring hashCodes
