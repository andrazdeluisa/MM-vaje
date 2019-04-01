function [x, l, u] = thomas2(a, b, c, z)
% thomas resi sistem s (strogo diagonalno dominantno) tridiagonalno matriko
    n = length(a);
    l = zeros(1, n-1);
    u = zeros(1, n);
    u(1) = a(1);
    for i=1:n-1
        l(i) = c(i)/u(i);
        u(i+1) = a(i+1) - l(i)*b(i);
        z(i+1) = z(i+1) - l(i)*z(i);
    end
    x = zeros(1,n);
    x(n) = z(n) / u(n);
    for i=n-1:-1:1
        x(i) = (z(i) - b(i)*x(i+1))/u(i);
    end
end