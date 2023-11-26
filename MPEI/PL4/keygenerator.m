function [cell_array_keys] = keygenerator(Nkeys,imin,imax,charvector,probcharvector)
    keylen=randi([imin imax],1,1);
    keys={};

    switch nargin

        case 4
            for i = 1:length(charvector)
                probcharvector2(i)=1/length(charvector);
            end
            for n = 1:Nkeys
                key='';
                for j = 1:keylen
                    key = [key charvector(randsample(1:length(charvector), 1, true, probcharvector2))];
                end
    
                keys(n)={key};
            end

        case 5

            for n = 1:Nkeys
                key='';
                for j = 1:keylen
                    key = [key charvector(randsample(1:length(charvector), 1, true, probcharvector))];
                end
    
                keys(n)={key};
            end

    end
    cell_array_keys=keys;

end