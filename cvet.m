function [] = cvet(a,b,n)
    % nariše n rotacij elipse s polosema a, b
    alfa = 2*pi / n;
    f = @(t) cos(t)*a;
    g = @(t) sin(t)*b;
    T = linspace(0, 2*pi);
    A = f(T);
    B = g(T);
    hold on
    plot(A, B);
    for i=1:n-1
        R = [cos(i*alfa), -sin(i*alfa); sin(i*alfa), cos(i*alfa)];
        X = R * [A;B];
        plot(X(1,:), X(2,:));
    end
    axis equal
end

