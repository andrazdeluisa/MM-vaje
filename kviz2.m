% 1. vaja
format long
a = 41;
T0 = [0;3];
T1=[3;a/100];
g = 9.8;

options = optimset('TolX', 1e-10);




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