% poskusni kviz 2
% bezierove krivulje

format long

b = [0 1 2 4; 0 -1 -1 2];

prva = deCasteljau(b, 0.5);

druga = norm(bezier_der(b, 0.5));

tretja = sqrt(prva(1)^2 + prva(2)^2);

[~,db] = bezier_der(b, 0.5);
[~,ddb] = bezier_der(db,0.5);

cetrta = (det([deCasteljau(db,0.5) deCasteljau(ddb,0.5)]))/norm(deCasteljau(db,0.5))^3;

visja_stopnja = bez_visja_stopnja(b);
sedma = [1 0] * visja_stopnja*[1 1 1 1 1]';

f = @(t)ordinata_odvoda_bez(b,t);

osma = fzero(f, 0);

A = [2;0.5];

g = @(t) skalarni_produkt_bez(b,t,A);

deveta = norm(deCasteljau(b,fzero(g, 0))-A);