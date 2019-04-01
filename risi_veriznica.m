function risi_veriznica(zac,L,M)
% RISI_VER_UV narise sliko veriznice
%
% Vhodni parametri:
% zac = [x_0 x_n+1;y_0 y_n+1], kjer sta (x_0,y_0) in
% (x_n+1, y_n+1) obesisci. 
% L je vrstica, ki doloca dolzine palic.
% M je vrstica, ki doloca mase palic.
    n = length(L);
    W0 = [zeros(1,n); zeros(1,n)]; 
    A = ver_uv(W0, zac, L, M);
    
    plot(A(1), A(2));
    
    