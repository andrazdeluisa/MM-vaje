% 1. vaja
format long
a = 41;
T0 = [0;3];
T1=[3;a/100];
G = 9.8;

options = optimset('TolX', 1e-10);

y = @(x) (300-a)/900*x.^2 -6*(300-a)/900*x +3;
prva = y(1);

razd = @(x) x^2 + y(x)^2;
druga = fminbnd(razd,0,3,options);

dy = @(x) 2*(300-a)/900*x - 6*(300-a)/900;
k = @(x) sqrt(1+dy(x).^2);
h = @(x) integral(k,0,x)-3/4*integral(k,0,3);
tretja = fzero(h,2);

m = @(x) k(x)./(sqrt(2*G)*sqrt(y(x)));
cetrta = integral(m,0,3);

% 2. vaja
c = 96;
b = [0 1/2 3 4; 1 0 -2 c/100];

f = @(t) ordinata_bez(b,t);
peta = fminbnd(f, 0, 1, options);

v = b(:,4)-b(:,1);
g = @(t) vzporedna_s_premico(b,v,t);
sesta = fzero(g, 1);

[~, kontrolne2] = sub_demo(b,0.5,false);
sedma = [0 1]*kontrolne2*[1 1 1 1]';