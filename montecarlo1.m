function prib = montecarlo1(f,a,b,N)
    % priblizek za doloceni integral po monte carlo metodi
    X = a + (b-a)*rand(1,N);
    fX = f(X);
    prib = (b-a)/N*sum(fX);
end