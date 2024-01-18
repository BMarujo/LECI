%a
load dados.mat
n = 500;
k = 2;
m=length(entrada);
BF = init(n);
numerodepessoas=0;
for i = 1:m

    if (entrada{i}=="Paul") 
        numerodepessoas=numerodepessoas+1;
    end

end
for i = 1:m
    BF = insert(entrada{i}, BF);
end

contador=0;
for i = 1:m
    if (entrada{i}=="Paul") 
    check = valid(entrada{i}, BF);
    if check
        contador = contador + 1;
    end
    end
end
numerodepessoas
contador