pessoas = 1;
N = 10000;
prob = 0;
while prob < 0.5
  aniversarios = randi(365, pessoas, N);
  sucessos = 0;
  for i = 1:N
      
      if length(unique(aniversarios(:, i))) == pessoas
  
      else 
          sucessos = sucessos + 1;
      end
  end
  prob = sucessos / N;
  pessoas = pessoas + 1;
end
menor_numero_de_pessoas_necessarias_para_mesmo_aniversario=pessoas


%% b
pessoas = 1;
N = 10000;
prob = 0;
while prob < 0.9
  aniversarios = randi(365, pessoas, N);
  sucessos = 0;
  for i = 1:N
      if length(unique(aniversarios(:, i))) == pessoas
         

      else

          sucessos = sucessos + 1;
      end
  end
  prob = sucessos / N;
  pessoas = pessoas + 1;
end
menor_numero_de_pessoas_necessarias_para_mesmo_aniversario=pessoas