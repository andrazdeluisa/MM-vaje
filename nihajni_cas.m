function T = nihajni_cas(prib, zac, f, tol)
% vrne nihajni cas ob danih zacetnih pogojih

[a,b] = odmik(prib, zac, f);
while abs(a) > tol
    prib = prib - a/b;
    [a,b] = odmik(prib, zac, f);
end

T = 4*prib;
end

