% izpit

% 1. vaja

a = 93;
f = @(x) 1-(a/100)*x^2;
n = 100;

X = linspace(0,5,n+1);
tol = 1e-12;

y0 = [0;1];

g = @(x,y) [y(2) ; f(x) - y(1) - y(2)*(y(1)^2 -1)];

[~,Y] = ode45(g, X, y0, tol);

prva = Y(41,1);

a1 = Y(61,1);
a2 = Y(61,2);

druga = f(3) - a1 - a2*(a1^2-1);

% 2. vaja 

b = 21;
l = 16;
T1 = [1;2];
T2 = [5+b/100; 2];

L1 = 16*2/3;

[w,D,C] = risi_ver(T1,T2,l,tol);
dw = @(x) sinh((x-D)/C);

h = @(x) sqrt(1+dw(x).^2);

d = @(x) integral(h,T1(1),x) - L1;
zac = (T1(1)+T2(1))/2;
cetrta = fzero(d, zac);

najnizja = w(zac);
j = @(x) w(x) .* sqrt(1+dw(x).^2);
yT = integral(j,T1(1),T2(1))/16;
peta = abs(najnizja-yT);

k = @(x) w(x) - 1 + x;
presecisce1 = fzero(k,T1(1));
presecisce2 = fzero(k, T2(1));
sesta = sqrt((presecisce2-presecisce1)^2 + (w(presecisce2)-w(presecisce1))^2);

m = @(l) najnizja_vrednost(T1,T2,l,tol);
sedma = fzero(m,10);

% 3. vaja

c = 83;
b = [0 1 3+c/100 4; 1 2 2 -1];

v = [1;-1];
g = @(t) vzporedna_s_premico(b,v,t);
osma = fzero(g,1);

tang = bezier_der(b,0.6,false);
v2 = [1;1/2];
kot = (tang'*v2)/(sqrt(tang'*tang)*sqrt(v2'*v2));
deveta = acos(kot);

pomozna = @(t) y_bez_der(b,t);
pomozna2 = @(t) sqrt(1+pomozna(t).^2);
dolzina = integral(pomozna,0,4);

ploscina = @(t) abs(y_bez(b,t) - 2)*(2+c/100)/2;

xmin = fminsearch(ploscina,0);
enajsta = ploscina(xmin);

