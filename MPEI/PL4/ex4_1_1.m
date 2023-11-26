%% a)

N = 1e5;
charvec = ['a':'z' 'A':'Z'];
keys = keygenerator(N,6, 20, charvec);
save keys.mat

%% b)

N = 1e5;
charvec = ['a':'z'];
charprob=load("prob_pt.txt");
keys_prob = keygenerator(N,6, 20, charvec, charprob);
save keys_prob.mat