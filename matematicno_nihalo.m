% matematicno nihalo brez aproksimacije
% izpeljemo diferencialno enacbo l*(phi)'' + g*sin(phi) = 0 
% prevedemo na sistem DE prvega reda
% vecina metod za resevanje deluje namrec samo za DE 1.reda

format long
l = 10;
g = 9.8;
tol = 1e-13;

% f na desni strani sistema NDE: y' = f(t,y)
f = @(t,y) [y(2); -g/l * sin(y(1))];

% t casovni interval kjer racunamo resitev
% zac zacetni odmik
t = linspace(0, 10, 200);
zac = [2;0];

[t,Y] = ode45(f,t,zac);

theta = Y(:,1);
v = Y(:,2);

% potrebujemo funkcijo, ki sprejme cas t in izracuna priblizek za 
% odmik theta ob casu t
odmik(10, zac, f);
% potrebujemo primerno numericno metodo za iskanje nicel te funkcije 
% -> tangentna

% a) tocka
% izracunaj nihajni cas
prib = 2.0534;
[a,b] = odmik(prib, zac, f);
while abs(a) > tol
    prib = prib - a/b;
    [a,b] = odmik(prib, zac, f);
end

T = 4*prib

% b) tocka
% kaksen naj bo zacetni odmik, da bo nihajni cas 9s?
g = @(x) nihajni_cas(prib, x, f, tol) - 9;
fsolve(g, zac)

% problem: fzero rabi funkcijo ene spremenljivke