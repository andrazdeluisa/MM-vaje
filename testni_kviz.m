% Testni kviz
format long

l = 20;
T0 = [0 5];
T1 = [5 3];
tol = 1e-10;

z0=1;
z = isci_z(T0,T1,l,z0,tol);
    
a = T0(1);
b = T1(1);
A = T0(2);
B = T1(2);
    
v = atanh((B-A)/l) + z;
u = atanh((B-A)/l) - z;
    
C = (b-a)/(v-u);
D = (a*v - b*u)/(v-u);
    
lambda = A - C*cosh((a-D)/C);

w = @(x) C*cosh((x-D)/C) + lambda;
y = @(x) w(x) - x;

prva = w(2);
dw = @(x) sinh((x-D)/C);
druga = D;

tretja = fzero(y, 0);

f = @(t2) (a*(atanh((t2-A)/l) + z) - b*(atanh((t2-A)/l) - z))/(2*z) - 2.5;
peta = fzero(f, 0);

g = @(t2) sinh((2.5 - (a*(atanh((t2-A)/l) + z) - b*(atanh((t2-A)/l) - z))/(2*z))/((b-a)*(2*z)));
peta2 = fzero(g,0);

w2 = @(x) w(x) - 4;
x1 = fzero(w2, 0);
l2 = C * sinh((b-D)/C) - C*sinh((x1-D)/C);
cetrta = l2;
