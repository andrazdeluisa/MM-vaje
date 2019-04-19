function skoripi = racunanje_pi(N)
    % z monte carlo metodo aproksimiramo stevilo pi
    %X = mojrand(2,N,13,0,31,rand());
    X = rand(2,N);
    K = sum(X(1,:).^2 + X(2,:).^2<1);
    skoripi = 4*K/N;
end