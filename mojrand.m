function P = mojrand(p,q,a,c,m,x0)
    % generira nakljucno matriko P iz R^(pxq)
    % uporabi multiplikativni kongruencni generator
    
    X = zeros(p*q,1);
    X(1) = mod(a*x0+c,m);
    for i = 1:(p*q-1)
        X(i+1) = mod(a*X(i)+c,m);
    end
    P = reshape(X/m,p,q);
end