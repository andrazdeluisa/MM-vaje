function [T,info] = delec(a,N,risi)
% DELEC izrise potovanje delca po kvadratu. 
% T je tabela delezev prehodov delca skozi eno od stranic
% kvadrata [-a,a]x[-a,a].
% N stevilo simulacij.
% Delec se na zacetku nahaja v (0,0), korak je 1
% kvadrat centriramo v (0,0)

    info = ['gor' 'dol' 'levo' 'desno'];
    T = [0 0 0 0];
    
    if risi
        
    end
    
    poz = [0 0];
    for i = 1:N
        while norm(poz,Inf)<a
            smer = randi(4);
            b = floor((smer+1)/2);
            poz(b) = poz(b)+(-1)^smer;
            
            if risi
                
            end
        end
        T(smer) = T(smer)+1;
        poz = [0 0];
    end
    T = T/norm(T,1);
end