function [ft,v] = odmik(tk, zac, f)
% izracuna odmik in hitrost ob casu tk
% resujemo sistem NDE ob zacetnem odmiku zac

t = linspace(0, tk);

[~,Y] = ode45(f, t, zac);

ft = Y(end,1);
v = Y(end,2);

end

