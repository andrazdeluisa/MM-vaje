function U = jacobi(U,tol,a)
% JACOBI izvaja Jacobijevo metodo na mrezi U, ki predstavlja
% diskretizacijo kvadrata [-a,a] x [-a,a]. Na vsakem koraku iteracije
% je vsak element izracunan kot povprecje njegovih stirih sosedov.
% Pri tem je U matrika z niclami v notranjosti in vrednostmi na robu,
% dolocenimi z robnimi pogoji.
% Pri Jacobijevi metodi potrebujemo pomozno mrezo.
% tol je toleranca, ki doloca natancnost izracunane resitve.

    n = length(U)-2;
    r = 2*tol;
    
    x = linspace(-a, a, n+2);
    y = linspace(-a, a, n+2);
    
    surf(x, y, U);
    
    while r > tol
        V = U;
        for i = 2:n+1
            for j = 2:n+1
                U(i,j) = (V(i-1, j) + V(i, j+1) + V(i, j-1) + V(i+1, j))/4;
            end
        end
        r = max(max(abs(U-V)));
        
        g = surf(x, y, U);
        pause(0.01);
        delete(g)
    end
    
    surf(x,y,U);
    
    
