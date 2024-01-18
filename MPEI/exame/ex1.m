%b
T=[ 0  0   0.8 0 0;
    1  0   0   0 0;
    0  0.9 0   0 0;
    0  0.1 0   1 0;
    0  0   0.2 0 1];

vetor_estado=[1;0;0;0;0];

vetor_12=(T^12)*vetor_estado;
resposta=vetor_12(1)

for i =1:1000
    vetor_estado=T*vetor_estado;
    if (vetor_estado(1)==0 && vetor_estado(2)==0.0000 && vetor_estado(3)==0)
        resultado=i
        break;
    end

end

%c

Q=[ 0  0   0.8;
    1  0   0;   
    0  0.9 0];   

R=[0 0.1 0;
   0 0   0.2];

F = inv(eye(size(Q)) - Q);


B=R*F;


resutado=B(1,1)

