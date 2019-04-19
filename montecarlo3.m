function prib = montecarlo3(f,a1,b1,a2,b2,a3,b3,N)
    % izracuna priblizek za integral v 3 dimenzijah z metodo monte carlo
    X = rand(3,N);
    X(1,:) = a1 + X(1,:)*(b1-a1);
    X(2,:) = a2 + X(2,:)*(b2-a2);
    X(3,:) = a3 + X(3,:)*(b3-a3);
    fX = f(X(1,:),X(2,:),X(3,:));
    prib = sum(fX)*(b1-a1)*(b2-a2)*(b3-a3)/N;
end