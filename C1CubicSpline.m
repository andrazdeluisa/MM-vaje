function kt = C1CubicSpline(u,p,v)
    % u delilne tocke
    % p interpolacijske tocke
    % v tangentni vektorji
    % izracuna kontrolne tocke bezierjevih zlepkov in narise
    
    n = length(p)-1;
    kt = zeros(2,3*n+1);
    for i = 1:n
        j=(i-1)*3;
        du = u(i+1)-u(i);
        kt(:,1+j)=p(:,i);
        kt(:,2+j)=kt(:,1+j)+ du/3*v(:,i);
        kt(:,3+j)=p(:,i+1) - du/3*v(:,i+1);
    end
    kt(:,end)=p(:,end);
end