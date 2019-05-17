%obnasanje sestavljenih bezierovih krivulj pri razlicnih parametrizacijah

p = [1 2 3 4 2;1 -2 4 6 -5];
v = [1 1 1 1 -1;1 -1 -3 -1 1];
n = length(p);

%enakomerna parametrizacija
u1 = [0 1 2 3 4];
kt1 = C1CubicSpline(u1,p,v);

%centripetalna parametrizacija
u2 = zeros(1,n);
for i =2:n;
    u2(i) = u2(i-1)+sqrt(norm(p(:,i)-p(:,i-1)));
end
kt2 = C1CubicSpline(u2,p,v);

%tetivna parametrizacija
u3 = zeros(1,n);
for i =2:n;
    u3(i) = u3(i-1)+norm(p(:,i)-p(:,i-1));
end
kt3 = C1CubicSpline(u3,p,v);

%poljubna parametrizacija (izberi alpha)
alpha = 0.75;
u4 = zeros(1,n);
for i =2:n;
    u4(i) = u4(i-1)+power(norm(p(:,i)-p(:,i-1)),alpha);
end
kt4 = C1CubicSpline(u4,p,v);