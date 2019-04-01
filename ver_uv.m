function X = ver_uv(W0,zac,L,M)
% VER_UV resi problem veriznice iz sistema za u in v.
% Rezultat X je 2x(n+2) tabela koordinat vozlisc, kjer
% prva vrstica doloca abscise, druga ordinate iskanih tock.
%
% Vhodni parametri:
% W0 = [u0;v0] zaceten priblizek pri resevanju sistema
% nelinearnih enacb.
% zac = [x_0 x_n+1;y_0 y_n+1], kjer sta (x_0,y_0) in
% (x_n+1, y_n+1) obesisci. 
% L je vrstica, ki doloca dolzine palic.
% M je vrstica, ki doloca mase palic.
    delta = 1e-5;
    vsote_mi = sum(M(1:end-1) + M(2:end))/2;
    F = sistem_uv(W0, zac, L, vsote_mi);
    JF = jacobian_uv(W, L, vsote_mi);
    
    %X = newton(F, JF, W0, delta);
    X = fsolve(F, W0);