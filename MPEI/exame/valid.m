function check = valid(elemento, BF)
    n = length(BF);
    check = true;
    h = kHashValues(elemento, 2);
    h = mod(h,n) + 1; %para dar valor entre 1 e n para por no BF
    if ~BF(h)
        check = false;
    end
end
