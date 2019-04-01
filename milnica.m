function milnica(a,n,f_spodaj,f_zgoraj,f_levo,f_desno,tol,metoda)
% MILNICA izracuna obliko milnice na kvadratu
% [-a,a] x [-a,a] , kjer so podane robne vrednosti
% s funkcijami f_i. Pri tem je:
% n+2 je stevilo delilnih tock na eni koordinatni osi
% f_i so stiri funkcije, ki dolocajo vrednosti na robu
% tol je toleranca pri iterativni metodi
% metoda je stikalo, ki doloca iterativno metodo:
%'jacobi' = Jacobijevo iteracijo
%'gauss-seidl' = Gauss-Seidelovo iteracijo
    
    X = linspace(-a, a, n);
    U = zeros(n);
    
    U(1, :) = f_zgoraj(X);
    U(n, :) = f_spodaj(X);
    U(:, 1) = f_levo(flipud(X));
    U(:, n) = f_desno(flipud(X));
    
    switch metoda
        case 'jacobi'
            jacobi(U, tol, a);
        case 'gauss_seidl'
            gauss_seidl(U, tol, a);
    end