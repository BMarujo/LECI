function BF = insert(elemento, BF)
    n = length(BF);
    h = kHashValues(elemento, 2);
    h = mod(h,n) + 1; %para dar valor entre 1 e n para por no BF
    BF(h) = BF(h)+1;
end