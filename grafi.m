X = linspace(1,3);
f = @(x) sin(x).*exp(sqrt(x));
plot(X, f(X));
figure % da ostane odprto okno z grafom funkcije,
       % naslednji plot odpre novo

Y = linspace(0, 2*pi);
plot(cos(Y), sin(Y));
axis equal
figure

Z = linspace(0, 10*pi);
plot3(cos(Z), sin(Z), Z);

h = @(x,y) (x.^2 + y.^2)/(1+x+y);
x = linspace(0,1);
y = linspace(0,1);
[A,B] = meshgrid(x,y);
F = h(A,B);
surf(A,B,F);