a = 1;
n = 32;
tol = 1e-5;
f_spodaj = @(x) x;
f_zgoraj = @(x) -x;
f_levo = @(x) x;
f_desno = @(x) x;

metoda1 = 'jacobi';
metoda2 = 'gauss_seidl';

milnica(a, n, f_spodaj, f_zgoraj, f_levo, f_desno, tol, metoda2);