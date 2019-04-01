% upogib tanke opne na krozni zanki
% a) sila je konstantna
% b) sila se spreminja sorazmerno z 1-r^2

% n st. delilnih toèk
% R polmer zanke
R = 1;
n = 1000;
f = ones(n,1);
r = linspace(0, R, n+1);
h = R/n;
r(end) = [];
r(1) = [];
f = h*h*f;

% sistem enaèb
a = -2 * ones(n,1);
c = ones(1,n-1) - h/2 * (ones(1,n-1)./r);
r(end) = [];
b = ones(1,n-2) + h/2 * (ones(1,n-2)./r);
b = [2 b];

u = thomas2(a,b,c,f);
u(n+1) = 0;
r = [0 r R-h R];
plot(r,u);

g = @(x) 1-x.^2;
G = h * h * g(r);
G(end) = [];
v = thomas2(a,b,c,G);
v(n+1) = 0;
hold on
plot(r,v);

% še polar3d za graficno vizualizacijo
